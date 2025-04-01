
# 🌐 Easy Proxy Server — быстрый и лёгкий HTTP-прокси

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** — это минималистичный, но мощный HTTP-прокси, разработанный на Go (Golang).  
Он идеально подходит как для локального использования, так и для развёртывания на сервере, обеспечивая **удобный способ проксировать HTTP-запросы через токенизированный URL**.

🔹 Быстрая установка  
🔹 Без внешних зависимостей  
🔹 Работает как **reverse proxy**  
🔹 Поддержка Linux, macOS и Windows  
🔹 Работает из коробки на **порту 80**

Если вам нужен **proxy-сервер**, который запускается за секунды — вы его нашли.

---

## 🚀 Преимущества

- ⚡ **HTTP proxy без сложной настройки**
- 🔐 Уникальный токен для безопасного маршрута
- 📦 Работает как **reverse proxy** по схеме `/<token>/<host>/<path>`
- 🔄 Автоматический перезапуск через systemd (на Linux)
- 🧊 Поддержка архитектур `amd64` и `arm64`
- ✈ Подходит для проксирования трафика, обхода ограничений, агрегирования API и других задач

---

## 📥 Установка

Установка занимает ~5 секунд. Просто скопируйте и выполните:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Установочные файлы:
- Бинарник: `~/.proxy/proxy`
- Токен: `~/.proxy/.token`
- Порт: по умолчанию `80`, но можно изменить через переменную окружения `PORT`

---

## 🧪 Как работает?

Запросы проходят через схему:

```
http://<proxy_ip>/<token>/<host>/<path>
```

Например, если токен `abc123`, а вы хотите получить:

```
https://example.com/image.png
```

Вы отправляете:

```
http://your-proxy-ip/abc123/example.com/image.png
```

Easy Proxy Server проксирует этот запрос и возвращает содержимое.

---

## 🖥 Поддержка платформ

- ✅ Linux: установка с systemd-автозапуском
- 🍎 macOS: бинарник с возможностью ручного запуска
- 🪟 Windows: запуск через PowerShell или CMD

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Ручная сборка

Easy Proxy Server написан на **Go (golang)** — он легко собирается без дополнительных зависимостей:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Кто использует?

- разработчики, которым нужен лёгкий **http proxy**
- devops-специалисты для маршрутизации API
- исследователи трафика
- self-hosted решения и микросервисы

---

## 📄 Лицензия

MIT — свободное коммерческое и некоммерческое использование.
