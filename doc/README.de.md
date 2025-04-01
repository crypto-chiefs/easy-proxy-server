
# 🌐 Easy Proxy Server — Schneller & Leichter HTTP-Proxy

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** ist ein minimalistischer, aber leistungsstarker HTTP-Proxy-Server, geschrieben in Go (Golang).  
Ideal für lokale Entwicklung oder den produktiven Einsatz – ermöglicht das **Weiterleiten von HTTP-Anfragen über tokenbasierte URLs**.

🔹 Blitzschnelle Installation  
🔹 Keine Abhängigkeiten  
🔹 Funktioniert als Reverse Proxy  
🔹 Unterstützt Linux, macOS und Windows  
🔹 Standard-Port: **80**

Wenn du nach einem **einfachen HTTP-Proxy-Server** suchst, der sofort funktioniert – bist du hier genau richtig.

---

## 🚀 Funktionen

- ⚡ **Sofort einsatzbereiter HTTP-Proxy**, keine Konfiguration nötig
- 🔐 Token-basierte Routen für sichere Weiterleitung
- 📦 Arbeitet als **Reverse Proxy** mit Struktur `/<token>/<host>/<path>`
- 🔄 Automatischer Neustart via systemd (unter Linux)
- 🧊 Unterstützung für `amd64` und `arm64`
- ✈ Perfekt für API-Bündelung, Zugriffskontrolle, Traffic-Weiterleitung u.v.m.

---

## 📥 Installation

Nur ein Befehl — und los geht’s:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Installationsstruktur:
- Binary: `~/.proxy/proxy`
- Token-Datei: `~/.proxy/.token`
- Port: standardmäßig `80`, kann aber über die Umgebungsvariable `PORT` geändert werden

---

## ❌ Deinstallation

Wenn Sie Easy Proxy Server von Ihrem System entfernen möchten, führen Sie einfach folgenden Befehl aus:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/uninstall.sh)
````

---

## 🧪 Funktionsweise

HTTP-Anfragen werden so weitergeleitet:

```
http://<proxy_ip>/<token>/<host>/<path>
```

Beispiel mit Token `abc123`:

```
https://example.com/image.png
```

wird zu:

```
http://deine-proxy-ip/abc123/example.com/image.png
```

Easy Proxy Server holt die Daten und liefert sie weiter.

---

## 🖥 Plattform-Support

- ✅ Linux: mit vollständigem systemd-Support
- 🍎 macOS: manuelle Ausführung möglich
- 🪟 Windows: per PowerShell oder CMD starten (bash-kompatible Umgebung nötig)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Manuelle Kompilierung

In reinem Go geschrieben — ganz einfach zu kompilieren:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Wer nutzt es?

- Entwickler, die einen **einfachen HTTP-Proxy** brauchen
- DevOps für API-Routing
- Forscher zur Analyse von HTTP-Traffic
- Selbstgehostete Systeme & Microservices

---

## 📄 Lizenz

MIT — kostenlos für private und kommerzielle Nutzung.
