
# 🌐 Easy Proxy Server — Server HTTP Proxy Cepat dan Ringan

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** adalah server HTTP proxy yang ringan namun kuat, dikembangkan menggunakan Go (Golang).  
Cocok untuk pengembangan lokal maupun produksi, memungkinkan Anda untuk **memproksi permintaan HTTP menggunakan URL berbasis token**.

🔹 Instalasi super cepat  
🔹 Tanpa dependensi eksternal  
🔹 Bekerja sebagai reverse proxy  
🔹 Kompatibel dengan Linux, macOS, dan Windows  
🔹 Port default: **80**

Jika Anda mencari **HTTP proxy server yang sederhana dan praktis**, ini jawabannya.

---

## 🚀 Fitur

- ⚡ **Proxy HTTP langsung digunakan**, tanpa konfigurasi
- 🔐 Routing aman berbasis token
- 📦 Berfungsi sebagai **reverse proxy** menggunakan pola `/<token>/<host>/<path>`
- 🔄 Restart otomatis dengan systemd (di Linux)
- 🧊 Mendukung arsitektur `amd64` dan `arm64`
- ✈ Ideal untuk agregasi API, kontrol akses ringan, dan pengalihan lalu lintas

---

## 📥 Instalasi

Cukup jalankan perintah ini:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Struktur instalasi:
- Binary: `~/.proxy/proxy`
- Token: `~/.proxy/.token`
- Port: default-nya adalah `80`, tetapi dapat diubah melalui variabel lingkungan `PORT`

---

## ❌ Uninstalasi

Jika Anda ingin menghapus Easy Proxy Server dari sistem Anda, cukup jalankan:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/uninstall.sh)
```
---

## 🧪 Cara Kerja

Permintaan HTTP dilakukan melalui pola berikut:

```
http://<proxy_ip>/<token>/<host>/<path>
```

Contoh: dengan token `abc123`, dan Anda ingin mengakses:

```
https://example.com/image.png
```

Kirim permintaan ke:

```
http://ip-proxy-anda/abc123/example.com/image.png
```

Easy Proxy Server akan mengambil dan mengembalikan konten tersebut.

---

## 🖥 Dukungan Platform

- ✅ Linux: integrasi penuh dengan systemd
- 🍎 macOS: dijalankan secara manual
- 🪟 Windows: dijalankan melalui PowerShell atau CMD (dengan lingkungan bash)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Kompilasi Manual

Ditulis sepenuhnya dalam Go — mudah untuk dikompilasi:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Siapa yang Menggunakan?

- Developer yang membutuhkan **proxy HTTP yang simpel**
- DevOps untuk routing API
- Peneliti yang menganalisis lalu lintas HTTP
- Pengguna self-hosted dan sistem microservice

---

## 📄 Lisensi

MIT — gratis untuk penggunaan pribadi dan komersial.
