
# 🌐 Easy Proxy Server — Fast & Lightweight HTTP Proxy

[🇬🇧 English](README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)


**Easy Proxy Server** is a minimal yet powerful HTTP proxy server built with Go (Golang).  
Perfect for local development or production deployments, it allows you to **proxy HTTP requests via a token-based URL path**.

🔹 Instant setup  
🔹 Zero dependencies  
🔹 Works as a reverse proxy  
🔹 Supports Linux, macOS, and Windows  
🔹 Listens on **port 80** by default

If you're looking for a **simple HTTP proxy server** that just works — this is it.

---

## 🚀 Features

- ⚡ **Instant HTTP proxy** with no config
- 🔐 Token-based routing for secure proxying
- 📦 Acts as a **reverse proxy** using `/<token>/<host>/<path>`
- 🔄 Auto-restart with systemd (on Linux)
- 🧊 Supports `amd64` and `arm64` architectures
- ✈ Great for traffic routing, API aggregation, lightweight access control, and more

---

## 📥 Installation

Takes less than 5 seconds to install. Just run:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Installation structure:
- Binary: `~/.proxy/proxy`
- Token: `~/.proxy/.token`
- Port: defaults to `80`, but can be changed via the `PORT` environment variable

---

## 🧪 How It Works

All requests are routed through the proxy using this format:

```
http://<proxy_ip>/<token>/<host>/<path>
```

For example, with token `abc123`, if you want:

```
https://example.com/image.png
```

You send:

```
http://your-proxy-ip/abc123/example.com/image.png
```

Easy Proxy Server fetches and returns the content transparently.

---

## 🖥 Platform Support

- ✅ Linux: installs with full `systemd` support
- 🍎 macOS: install and run manually
- 🪟 Windows: run via PowerShell or CMD (with bash support)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Manual Build

Written in pure Go (golang) — easy to compile:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Who Uses This?

- Developers needing a **simple HTTP proxy**
- DevOps engineers routing APIs
- Researchers analyzing HTTP traffic
- Self-hosted setups and microservices

---

## 📄 License

MIT — free for commercial and personal use.
