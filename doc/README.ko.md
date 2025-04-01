
# 🌐 Easy Proxy Server — 빠르고 가벼운 HTTP 프록시 서버

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server**는 Go (Golang)로 개발된 간단하고 강력한 HTTP 프록시 서버입니다.  
로컬 개발 환경 또는 실제 운영 환경 모두에 적합하며, **토큰 기반 URL 경로를 통해 HTTP 요청을 프록시 처리**할 수 있습니다.

🔹 빠른 설치  
🔹 외부 종속성 없음  
🔹 리버스 프록시로 작동  
🔹 Linux, macOS, Windows 지원  
🔹 기본 포트: **80**

간단하고 신뢰할 수 있는 **HTTP 프록시 서버**를 찾고 있다면, 이 도구가 정답입니다.

---

## 🚀 주요 기능

- ⚡ 설정 없이 즉시 사용 가능한 **HTTP 프록시**
- 🔐 토큰 기반 보안 라우팅
- 📦 `/<token>/<host>/<path>` 형식의 **리버스 프록시** 동작
- 🔄 Linux에서 systemd를 통한 자동 재시작
- 🧊 `amd64` 및 `arm64` 아키텍처 지원
- ✈ API 집계, 접근 제어, 트래픽 리디렉션에 이상적

---

## 📥 설치 방법

다음 명령어 하나로 설치할 수 있습니다:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 설치 디렉토리 구성:
- 실행 파일: `~/.proxy/proxy`
- 토큰 파일: `~/.proxy/.token`
- 포트: 기본값은 `80`이며, `PORT` 환경 변수를 통해 변경할 수 있습니다

---

## ❌ 제거

시스템에서 Easy Proxy Server를 제거하려면, 다음 명령어를 실행하세요:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/uninstall.sh)
```

---

## 🧪 작동 방식

프록시를 통해 요청을 전송하는 형식:

```
http://<proxy_ip>/<token>/<host>/<path>
```

예: `abc123` 토큰으로 다음 주소에 접근하고 싶다면,

```
https://example.com/image.png
```

다음과 같이 요청을 전송합니다:

```
http://당신의-프록시-IP/abc123/example.com/image.png
```

Easy Proxy Server는 이 요청을 처리하고 콘텐츠를 반환합니다.

---

## 🖥 지원 플랫폼

- ✅ Linux: systemd 완전 지원
- 🍎 macOS: 수동 실행 가능
- 🪟 Windows: PowerShell 또는 CMD로 실행 (bash 환경 필요)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 수동 빌드

Go 언어로 작성되어 컴파일이 매우 쉽습니다:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 누가 사용하나요?

- **간단한 HTTP 프록시**가 필요한 개발자
- API 라우팅을 위한 DevOps 엔지니어
- HTTP 트래픽을 분석하는 리서처
- 자체 호스팅 시스템 및 마이크로서비스 사용자

---

## 📄 라이선스

MIT — 상업적 및 개인적 용도로 무료로 사용 가능합니다.
