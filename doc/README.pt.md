
# 🌐 Easy Proxy Server — Servidor HTTP Proxy Rápido e Leve

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** é um servidor HTTP proxy minimalista e poderoso, desenvolvido em Go (Golang).  
Ideal para ambientes de desenvolvimento local ou implantações em produção, ele permite **redirecionar requisições HTTP por meio de uma URL baseada em token**.

🔹 Instalação instantânea  
🔹 Sem dependências externas  
🔹 Funciona como reverse proxy  
🔹 Compatível com Linux, macOS e Windows  
🔹 Porta padrão: **80**

Se você procura um **servidor proxy HTTP simples e funcional**, esta é a solução ideal.

---

## 🚀 Recursos

- ⚡ **Proxy HTTP pronto para uso**, sem configuração
- 🔐 Roteamento seguro baseado em token
- 📦 Atua como **reverse proxy** usando `/<token>/<host>/<path>`
- 🔄 Reinício automático com systemd (no Linux)
- 🧊 Suporte para arquiteturas `amd64` e `arm64`
- ✈ Perfeito para agregação de APIs, controle de acesso e redirecionamento de tráfego

---

## 📥 Instalação

Basta executar o seguinte comando:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Estrutura da instalação:
- Binário: `~/.proxy/proxy`
- Token: `~/.proxy/.token`
- Porta: padrão é `80`, mas pode ser alterado via variável de ambiente `PORT`

---

## 🧪 Como funciona?

As requisições HTTP são feitas com o seguinte formato:

```
http://<proxy_ip>/<token>/<host>/<path>
```

Exemplo: com o token `abc123`, para acessar:

```
https://example.com/image.png
```

Você deve enviar:

```
http://seu-ip-proxy/abc123/example.com/image.png
```

Easy Proxy Server buscará o conteúdo e o retornará.

---

## 🖥 Plataformas compatíveis

- ✅ Linux: instalação com suporte completo ao `systemd`
- 🍎 macOS: execução manual
- 🪟 Windows: execução via PowerShell ou CMD (requer ambiente bash)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Compilação manual

Escrito em Go puro (golang) — fácil de compilar:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Quem usa?

- Desenvolvedores que precisam de um **HTTP proxy simples**
- Engenheiros DevOps para roteamento de APIs
- Pesquisadores que analisam tráfego HTTP
- Usuários de soluções self-hosted e microsserviços

---

## 📄 Licença

MIT — uso gratuito para projetos comerciais e pessoais.
