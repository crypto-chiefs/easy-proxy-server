
# 🌐 Easy Proxy Server — Proxy HTTP Rapide et Léger

[🇬🇧 English](README.md) | [🇷🇺 Русский](/doc/README.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** est un serveur proxy HTTP minimaliste mais puissant, développé en Go (Golang).  
Idéal pour les environnements de développement local ou les déploiements en production, il permet de **rediriger les requêtes HTTP via un chemin URL basé sur un token**.

🔹 Installation ultra-rapide  
🔹 Aucune dépendance  
🔹 Fonctionne comme un reverse proxy  
🔹 Compatible avec Linux, macOS et Windows  
🔹 Écoute sur le **port 80** par défaut

Si vous cherchez un **serveur proxy HTTP simple et prêt à l’emploi**, c’est exactement ce qu’il vous faut.

---

## 🚀 Fonctionnalités

- ⚡ **Proxy HTTP instantané**, aucune configuration requise
- 🔐 Routage sécurisé basé sur un token
- 📦 Fonctionne comme un **reverse proxy** avec le schéma `/<token>/<host>/<path>`
- 🔄 Redémarrage automatique avec systemd (sous Linux)
- 🧊 Prise en charge de `amd64` et `arm64`
- ✈ Parfait pour l’agrégation d’APIs, le contrôle d’accès léger, la redirection de trafic, etc.

---

## 📥 Installation

Installation en une ligne de commande :

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 Structure d’installation :
- Binaire : `~/.proxy/proxy`
- Token : `~/.proxy/.token`
- Port : par défaut `80`, mais peut être modifié via la variable d’environnement `PORT`

---

## 🧪 Comment ça fonctionne ?

Les requêtes HTTP passent par le proxy avec le format suivant :

```
http://<proxy_ip>/<token>/<host>/<path>
```

Exemple : pour le token `abc123`, si vous souhaitez accéder à :

```
https://example.com/image.png
```

Vous devez envoyer :

```
http://votre-proxy-ip/abc123/example.com/image.png
```

Easy Proxy Server récupère et transmet le contenu sans modification.

---

## 🖥 Plateformes supportées

- ✅ Linux : installation avec support `systemd`
- 🍎 macOS : exécution manuelle possible
- 🪟 Windows : exécutable via PowerShell ou CMD (avec environnement bash)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 Compilation manuelle

Écrit en pur Go (golang) — facile à compiler :

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 Pour qui ?

- Développeurs cherchant un **proxy HTTP simple**
- Ingénieurs DevOps pour le routage d’APIs
- Chercheurs analysant le trafic HTTP
- Systèmes auto-hébergés & microservices

---

## 📄 Licence

MIT — utilisation gratuite à des fins personnelles et commerciales.
