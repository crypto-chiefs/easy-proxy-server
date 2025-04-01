
# 🌐 Easy Proxy Server — तेज़ और हल्का HTTP प्रॉक्सी सर्वर

[🇬🇧 English](/README.md) | [🇷🇺 Русский](/doc/README.ru.md) | [🇪🇸 Español](/doc/README.es.md) | [🇩🇪 Deutsch](/doc/README.de.md) | [🇫🇷 Français](/doc/README.fr.md) | [🇨🇳 中文](/doc/README.zh.md) | [🇮🇳 हिंदी](/doc/README.hi.md) | [🇧🇷 Português](/doc/README.pt.md) | [🇹🇷 Türkçe](/doc/README.tr.md) | [🇮🇩 Bahasa Indonesia](/doc/README.id.md) | [🇻🇳 Tiếng Việt](/doc/README.vi.md) | [🇰🇷 한국어](/doc/README.ko.md)

**Easy Proxy Server** एक सरल, तेज़ और शक्तिशाली HTTP प्रॉक्सी सर्वर है जिसे Go (Golang) में विकसित किया गया है।  
यह स्थानीय विकास या प्रोडक्शन डिप्लॉयमेंट दोनों के लिए उपयुक्त है, और यह **टोकन-आधारित URL पथ के माध्यम से HTTP अनुरोधों को प्रॉक्सी** करता है।

🔹 तुरंत इंस्टॉलेशन  
🔹 कोई अतिरिक्त निर्भरता नहीं  
🔹 रिवर्स प्रॉक्सी के रूप में कार्य करता है  
🔹 Linux, macOS और Windows को सपोर्ट करता है  
🔹 डिफ़ॉल्ट पोर्ट: **80**

यदि आप एक **सरल और भरोसेमंद HTTP प्रॉक्सी सर्वर** की तलाश में हैं, तो यह आपके लिए है।

---

## 🚀 विशेषताएं

- ⚡ **तत्काल HTTP प्रॉक्सी**, बिना किसी कॉन्फ़िगरेशन के
- 🔐 टोकन आधारित सुरक्षित रूटिंग
- 📦 `/<token>/<host>/<path>` संरचना के साथ **रिवर्स प्रॉक्सी** के रूप में कार्य करता है
- 🔄 Linux पर systemd के साथ स्वत: पुनः प्रारंभ
- 🧊 `amd64` और `arm64` आर्किटेक्चर को सपोर्ट करता है
- ✈ API एग्रीगेशन, एक्सेस कंट्रोल, और ट्रैफिक रीडायरेक्शन के लिए आदर्श

---

## 📥 इंस्टॉलेशन

सिर्फ एक कमांड चलाएं और हो गया:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/crypto-chiefs/easy-proxy-server/master/scripts/build.sh)
```

📂 इंस्टॉलेशन डिटेल्स:
- बाइनरी: `~/.proxy/proxy`
- टोकन फ़ाइल: `~/.proxy/.token`
- पोर्ट: डिफ़ॉल्ट रूप से `80`, लेकिन इसे `PORT` पर्यावरण चर के माध्यम से बदला जा सकता है

---

## 🧪 यह कैसे काम करता है?

सभी अनुरोध निम्नलिखित प्रारूप में भेजे जाते हैं:

```
http://<proxy_ip>/<token>/<host>/<path>
```

उदाहरण के लिए, यदि टोकन `abc123` है और आप अनुरोध करना चाहते हैं:

```
https://example.com/image.png
```

तो आपको अनुरोध भेजना होगा:

```
http://आपका-प्रॉक्सी-IP/abc123/example.com/image.png
```

Easy Proxy Server स्वतः सामग्री को प्राप्त कर देगा और वापस भेज देगा।

---

## 🖥 प्लेटफ़ॉर्म सपोर्ट

- ✅ Linux: पूर्ण `systemd` समर्थन के साथ इंस्टॉल होता है
- 🍎 macOS: मैनुअली चलाएं
- 🪟 Windows: PowerShell या CMD से चलाएं (bash सपोर्ट जरूरी)

---

## ⚙️ systemd (Linux)

```bash
sudo systemctl status proxy
sudo systemctl restart proxy
sudo systemctl stop proxy
```

---

## 🛠 मैनुअल बिल्ड

Go (golang) में पूरी तरह से लिखा गया — निर्माण करना आसान है:

```bash
git clone https://github.com/crypto-chiefs/easy-proxy-server.git
cd easy-proxy-server
go build -o proxy ./cmd/proxy
```

---

## 💬 कौन उपयोग करता है?

- डेवलपर्स जो **सरल HTTP प्रॉक्सी** चाहते हैं
- DevOps इंजीनियर्स जो API रूट करना चाहते हैं
- रिसर्चर्स जो HTTP ट्रैफिक का विश्लेषण करते हैं
- स्वयं-होस्टेड सिस्टम और माइक्रोसर्विस यूज़र्स

---

## 📄 लाइसेंस

MIT — वाणिज्यिक और व्यक्तिगत उपयोग के लिए पूरी तरह से मुफ्त।
