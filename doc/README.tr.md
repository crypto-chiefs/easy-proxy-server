
# 🌐 Easy Proxy Server — Hızlı ve Hafif HTTP Proxy Sunucusu

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server**, Go (Golang) ile geliştirilmiş minimalist ve güçlü bir HTTP proxy sunucusudur.  
Yerel geliştirme ortamları veya üretim sunucuları için idealdir ve **token tabanlı URL yapısı** üzerinden HTTP isteklerini yönlendirmeyi sağlar.

🔹 Anında kurulum  
🔹 Dış bağımlılık yok  
🔹 Reverse proxy olarak çalışır  
🔹 Linux, macOS ve Windows ile uyumlu  
🔹 Varsayılan port: **80**

Basit, hızlı ve güvenli bir **HTTP proxy sunucusu** arıyorsanız, doğru yerdesiniz.

---

## 🚀 Özellikler

- ⚡ **Hazır HTTP proxy**, yapılandırmaya gerek yok
- 🔐 Token tabanlı güvenli yönlendirme
- 📦 `/<token>/<host>/<path>` formatında **reverse proxy** işlevi
- 🔄 Linux'ta systemd ile otomatik yeniden başlatma
- 🧊 `amd64` ve `arm64` mimarilerini destekler
- ✈ API yönlendirme, erişim kontrolü ve trafik yönetimi için mükemmel

---

## 📥 Kurulum

Aşağıdaki komutu çalıştırarak hızlıca kurabilirsiniz:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Kurulum dizin yapısı:
- Binary: `~/.proxy/proxy`
- Token dosyası: `~/.proxy/.token`
- Port: varsayılan olarak `80`, ancak `PORT` ortam değişkeni ile değiştirilebilir

---

## 🧪 Nasıl çalışır?

HTTP istekleri şu formatla yönlendirilir:

```
http://<proxy_ip>/<token>/<host>/<path>
```

Örneğin, `abc123` token'ınız varsa ve şu URL'yi çağırmak istiyorsanız:

```
https://example.com/image.png
```

Proxy ile istek şöyle yapılır:

```
http://proxy-ip-adresiniz/abc123/example.com/image.png
```

Easy Proxy Server bu isteği yönlendirip içeriği size döner.

---

## 🖥 Desteklenen Platformlar

- ✅ Linux: systemd ile tam entegrasyon
- 🍎 macOS: elle çalıştırılabilir
- 🪟 Windows: PowerShell veya CMD ile çalıştırılabilir (bash ortamı gerekebilir)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Manuel Derleme

Go diliyle yazılmıştır — kolayca derlenebilir:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Kimler kullanıyor?

- Basit bir **HTTP proxy sunucusu** arayan geliştiriciler
- API yönlendirmesi yapan DevOps mühendisleri
- HTTP trafiğini analiz eden araştırmacılar
- Kendi sunucularını barındıran sistemler ve mikro servis mimarileri

---

## 📄 Lisans

MIT — ticari ve kişisel projelerde ücretsiz kullanım hakkı sağlar.
