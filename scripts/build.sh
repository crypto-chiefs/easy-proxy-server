#!/bin/bash
set -e

# Detect sudo or root
if [[ $EUID -eq 0 ]]; then
  SUDO=""
else
  SUDO="sudo"
fi

# Detect user reliably
CURRENT_USER=$(logname 2>/dev/null || echo $SUDO_USER || echo $USER)

if lsof -i :80 &>/dev/null; then
  if [[ -z "$PORT" ]]; then
    echo -e "\033[0;31m❌ Port 80 is already in use and no alternate PORT specified.\033[0m"
    echo ""
    echo "📌 Details:"
    lsof -i :80 | awk 'NR==1 || /LISTEN/'
    echo ""
    echo -e "👉 Option 1: Re-run this command with a custom port:"
    echo -e "   \033[1;32mPORT=8080 bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)\033[0m"
    echo ""
    echo "👉 Option 2: Stop the process using port 80:"
    echo "   sudo systemctl stop <service_name>   # if managed by systemd"
    echo "   OR"
    echo "   sudo kill -9 <PID>"
    echo ""
    echo "🚫 Aborting installation. Cleaning up..."
    rm -- "$0"
    exit 1
  else
    echo -e "\033[1;33m⚠️ Port 80 is in use, but environment variable PORT=$PORT is set. Proceeding...\033[0m"
  fi
fi

REPO="crypto-chiefs/easy-proxy-server"
SERVICE_NAME="proxy"
BIN_NAME="proxy"
INSTALL_DIR="$HOME/.proxy"

UNAME=$(uname | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

case "$ARCH" in
  x86_64) ARCH="amd64" ;;
  aarch64) ARCH="arm64" ;;
  arm64) ARCH="arm64" ;;
  *) echo "❌ Unsupported architecture: $ARCH" && exit 1 ;;
esac

case "$UNAME" in
  linux|darwin) GOOS="$UNAME" ;;
  msys*|mingw*|cygwin*) GOOS="windows" ;;
  *) echo "❌ Unsupported OS: $UNAME" && exit 1 ;;
esac

ARCHIVE_NAME="$BIN_NAME-$GOOS-$ARCH.tar.gz"
RELEASE_URL="https://github.com/$REPO/releases/latest/download/$ARCHIVE_NAME"

echo "🌀 Installing $BIN_NAME for $GOOS/$ARCH from $RELEASE_URL"

mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"
curl -L "$RELEASE_URL" | tar -xz
chmod +x "$BIN_NAME"

if [ ! -f ".token" ]; then
  if command -v uuidgen &> /dev/null; then
    uuidgen > .token
  else
    cat /proc/sys/kernel/random/uuid > .token
  fi
  echo "🔐 Token generated at $INSTALL_DIR/.token"
  echo "🔑 Token: $(cat .token)"
fi

if [[ "$GOOS" == "linux" ]]; then
  echo "⚙️ Setting up systemd..."

  SERVICE_FILE="/etc/systemd/system/$SERVICE_NAME.service"
  $SUDO bash -c "cat > $SERVICE_FILE" <<EOF
[Unit]
Description=Proxy Service
After=network.target

[Service]
ExecStart=$INSTALL_DIR/$BIN_NAME
WorkingDirectory=$INSTALL_DIR
Restart=always
User=$CURRENT_USER
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
EOF

  $SUDO systemctl daemon-reexec
  $SUDO systemctl daemon-reload
  $SUDO systemctl enable $SERVICE_NAME
  $SUDO systemctl restart $SERVICE_NAME

  echo "✅ Service started: systemctl status $SERVICE_NAME"

elif [[ "$GOOS" == "darwin" ]]; then
  echo "🍎 Installed to $INSTALL_DIR"
  echo "📌 Add to launchctl manually if needed, or run:"
  echo "   $INSTALL_DIR/$BIN_NAME"
  echo "🔐 Token: $(cat $INSTALL_DIR/.token)"

elif [[ "$GOOS" == "windows" ]]; then
  echo "🪟 Installed to $INSTALL_DIR"
  echo "📌 Run from PowerShell or CMD:"
  echo "   $INSTALL_DIR\\$BIN_NAME.exe"
  echo "🔐 Token: $(cat $INSTALL_DIR/.token)"
fi
