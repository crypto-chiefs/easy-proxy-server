
# 🌐 Easy Proxy Server — 快速轻量的 HTTP 代理服务器

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)


**Easy Proxy Server** 是一个用 Go (Golang) 编写的轻量级、高性能的 HTTP 代理服务器。  
非常适合本地开发或生产部署，它通过基于令牌的 URL 路径实现 **HTTP 请求代理**。

🔹 秒级安装  
🔹 无需依赖  
🔹 支持反向代理  
🔹 支持 Linux、macOS 和 Windows  
🔹 默认监听端口：**80**

如果你在寻找一个**简单易用的 HTTP 代理服务器**，那它就是你的最佳选择。

---

## 🚀 功能亮点

- ⚡ **即刻启用的 HTTP 代理**，无需配置
- 🔐 基于令牌的安全路由机制
- 📦 使用路径 `/<token>/<host>/<path>` 实现 **反向代理**
- 🔄 Linux 下支持 systemd 自动重启
- 🧊 支持 `amd64` 和 `arm64` 架构
- ✈ 非常适合 API 聚合、访问控制、请求转发等应用场景

---

## 📥 安装方式

一行命令快速安装：

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 安装目录结构：
- 可执行文件：`~/.proxy/proxy`
- 访问令牌：`~/.proxy/.token`
- 端口：默认为 `80`，但可以通过环境变量 `PORT` 更改

---

## ❌ 卸载

如果您想从系统中移除 Easy Proxy Server，只需运行：

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/uninstall.sh)
```

---

## 🧪 使用示例

所有代理请求格式如下：

```
http://<proxy_ip>/<token>/<host>/<path>
```

例如，令牌为 `abc123`，你希望访问：

```
https://example.com/image.png
```

实际应请求：

```
http://你的代理IP/abc123/example.com/image.png
```

Easy Proxy Server 将自动拉取资源并返回响应。

---

## 🖥 支持平台

- ✅ Linux：支持 systemd 服务自动管理
- 🍎 macOS：可手动运行
- 🪟 Windows：可通过 PowerShell 或 CMD 启动（需 bash 环境）

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 手动编译

使用纯 Go 编写，编译非常简单：

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 谁在使用？

- 需要简单 HTTP 代理的开发者
- 用于 API 路由的 DevOps 工程师
- 分析 HTTP 流量的研究人员
- 自部署系统和微服务架构用户

---

## 📄 许可证

MIT 开源协议 — 免费用于商业和个人项目。
