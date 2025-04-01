#!/bin/bash
set -e

SERVICE_NAME="proxy"
INSTALL_DIR="$HOME/.proxy"
BIN_NAME="proxy"

UNAME=$(uname | tr '[:upper:]' '[:lower:]')

echo "🧹 Starting cleanup..."

# === Linux: systemd removal ===
if [[ "$UNAME" == "linux" ]]; then
  SERVICE_FILE="/etc/systemd/system/$SERVICE_NAME.service"

  if systemctl list-units --full -all | grep -Fq "$SERVICE_NAME.service"; then
    echo "⛔️ Stopping and disabling systemd service..."
    sudo systemctl stop "$SERVICE_NAME" || true
    sudo systemctl disable "$SERVICE_NAME" || true
    sudo rm -f "$SERVICE_FILE"
    sudo systemctl daemon-reload
    sudo systemctl reset-failed
    echo "✅ Systemd service removed."
  fi
fi

# === macOS: basic uninstall ===
if [[ "$UNAME" == "darwin" ]]; then
  echo "🍏 Detected macOS. Removing binary and config."
  echo "⚠️ If you added this to launchctl manually, remove it with:"
  echo "   launchctl remove $SERVICE_NAME"
fi

# === Windows (bash-compatible) ===
if [[ "$UNAME" == "msys_nt"* || "$UNAME" == "mingw"* || "$UNAME" == "cygwin"* ]]; then
  echo "🪟 Detected Windows. Cleaning up..."
  BIN_NAME="$BIN_NAME.exe"
fi

# === Shared cleanup ===
if [ -d "$INSTALL_DIR" ]; then
  echo "🗑 Removing install directory: $INSTALL_DIR"
  rm -rf "$INSTALL_DIR"
else
  echo "ℹ️ Nothing to delete at $INSTALL_DIR"
fi

echo "✅ Proxy service fully removed!"
