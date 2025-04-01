
# 🌐 Easy Proxy Server — Proxy HTTP Rápido y Ligero

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** es un servidor proxy HTTP minimalista pero potente, escrito en Go (Golang).  
Ideal tanto para desarrollo local como para despliegues en producción, permite **redirigir solicitudes HTTP mediante una ruta con token**.

🔹 Instalación instantánea  
🔹 Sin dependencias  
🔹 Funciona como reverse proxy  
🔹 Compatible con Linux, macOS y Windows  
🔹 Escucha en el **puerto 80** por defecto

¿Necesitas un **proxy HTTP fácil de usar** que funcione al instante? ¡Este es para ti!

---

## 🚀 Características

- ⚡ **Proxy HTTP inmediato**, sin configuración
- 🔐 Enrutamiento seguro basado en token
- 📦 Opera como **reverse proxy** con la ruta `/<token>/<host>/<path>`
- 🔄 Reinicio automático con systemd (en Linux)
- 🧊 Compatible con arquitecturas `amd64` y `arm64`
- ✈ Ideal para redireccionamiento de tráfico, agregación de APIs, control de acceso ligero, y más

---

## 📥 Instalación

La instalación toma menos de 5 segundos. Ejecuta:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Estructura de instalación:
- Binario: `~/.proxy/proxy`
- Token: `~/.proxy/.token`
- Puerto: por defecto es `80`, pero puede cambiarse mediante la variable de entorno `PORT`

---

## ❌ Desinstalación

Si deseas eliminar Easy Proxy Server de tu sistema, simplemente ejecuta:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/uninstall.sh)
```

---

## 🧪 ¿Cómo funciona?

Las solicitudes se redirigen a través del proxy usando este formato:

```
http://<proxy_ip>/<token>/<host>/<path>
```

Ejemplo: con el token `abc123`, si deseas acceder a:

```
https://example.com/image.png
```

Envías:

```
http://tu-ip-proxy/abc123/example.com/image.png
```

Easy Proxy Server obtiene y devuelve el contenido automáticamente.

---

## 🖥 Compatibilidad de plataformas

- ✅ Linux: se instala con soporte completo de `systemd`
- 🍎 macOS: instalación y ejecución manual
- 🪟 Windows: ejecución mediante PowerShell o CMD (requiere entorno bash)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Compilación manual

Escrito en Go puro (golang) — fácil de compilar:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 ¿Quién lo usa?

- Desarrolladores que necesitan un **proxy HTTP simple**
- Ingenieros DevOps para enrutar APIs
- Investigadores analizando tráfico HTTP
- Sistemas autohospedados y microservicios

---

## 📄 Licencia

MIT — uso libre para fines comerciales y personales.
