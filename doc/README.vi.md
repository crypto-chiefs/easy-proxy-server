
# 🌐 Easy Proxy Server — Máy chủ HTTP Proxy Nhanh và Nhẹ

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** là một máy chủ HTTP proxy nhẹ nhưng mạnh mẽ, được phát triển bằng ngôn ngữ Go (Golang).  
Phù hợp cho cả môi trường phát triển cục bộ và triển khai thực tế, cho phép bạn **proxy các yêu cầu HTTP thông qua đường dẫn URL dựa trên token**.

🔹 Cài đặt siêu nhanh  
🔹 Không phụ thuộc bên ngoài  
🔹 Hoạt động như một reverse proxy  
🔹 Hỗ trợ Linux, macOS và Windows  
🔹 Cổng mặc định: **80**

Nếu bạn đang tìm kiếm một **máy chủ HTTP proxy đơn giản, hiệu quả**, thì đây chính là giải pháp dành cho bạn.

---

## 🚀 Tính năng

- ⚡ **Proxy HTTP sẵn sàng sử dụng**, không cần cấu hình
- 🔐 Định tuyến an toàn dựa trên token
- 📦 Hoạt động như **reverse proxy** với mẫu `/<token>/<host>/<path>`
- 🔄 Tự động khởi động lại với systemd (trên Linux)
- 🧊 Hỗ trợ kiến trúc `amd64` và `arm64`
- ✈ Lý tưởng cho tổng hợp API, kiểm soát truy cập và chuyển hướng lưu lượng

---

## 📥 Cài đặt

Chỉ cần chạy lệnh sau:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Cấu trúc cài đặt:
- Tập tin thực thi: `~/.proxy/proxy`
- Token: `~/.proxy/.token`
- Cổng: mặc định là `80`, nhưng có thể thay đổi thông qua biến môi trường `PORT`

---

## 🧪 Cách hoạt động

Gửi yêu cầu HTTP theo định dạng sau:

```
http://<proxy_ip>/<token>/<host>/<path>
```

Ví dụ: với token `abc123`, nếu bạn muốn truy cập:

```
https://example.com/image.png
```

Hãy gửi yêu cầu đến:

```
http://ip-proxy-cua-ban/abc123/example.com/image.png
```

Easy Proxy Server sẽ truy xuất và trả về nội dung đó.

---

## 🖥 Hỗ trợ nền tảng

- ✅ Linux: cài đặt với hỗ trợ đầy đủ `systemd`
- 🍎 macOS: chạy thủ công
- 🪟 Windows: chạy bằng PowerShell hoặc CMD (yêu cầu môi trường bash)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Biên dịch thủ công

Được viết hoàn toàn bằng Go — dễ dàng biên dịch:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Ai đang sử dụng?

- Các nhà phát triển cần một **HTTP proxy đơn giản**
- Kỹ sư DevOps cần định tuyến API
- Nhà nghiên cứu phân tích lưu lượng HTTP
- Người dùng tự triển khai và hệ thống microservice

---

## 📄 Giấy phép

MIT — miễn phí cho mục đích thương mại và cá nhân.
