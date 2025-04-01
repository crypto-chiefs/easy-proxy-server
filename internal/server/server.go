package server

import (
	"io"
	"log"
	"net/http"
	"os"
	"path/filepath"
	"strings"
	"time"
)

var proxyToken string

func init() {
	exePath, err := os.Executable()
	if err != nil {
		log.Fatalf("cannot get exe path: %v", err)
	}
	dir := filepath.Dir(exePath)
	tokenPath := filepath.Join(dir, ".token")

	data, err := os.ReadFile(tokenPath)
	if err != nil {
		log.Fatalf("Failed to read .token file: %v", err)
	}
	proxyToken = strings.TrimSpace(string(data))
	if proxyToken == "" {
		log.Fatal("Empty token in .token file")
	}
}

var client = &http.Client{
	Timeout: 60 * time.Second,
	Transport: &http.Transport{
		MaxIdleConns:        1000,
		MaxIdleConnsPerHost: 100,
		IdleConnTimeout:     90 * time.Second,
	},
}

func Handler(w http.ResponseWriter, r *http.Request) {
	path := strings.TrimPrefix(r.URL.Path, "/")
	parts := strings.SplitN(path, "/", 3)

	if len(parts) < 2 || parts[0] != proxyToken {
		http.Error(w, "Unauthorized or invalid URL format. Use /<token>/<host>/<path>", http.StatusUnauthorized)
		return
	}

	host := parts[1]
	rest := "/"
	if len(parts) == 3 {
		rest += parts[2]
	}

	proxyURL := "https://" + host + rest
	req, err := http.NewRequestWithContext(r.Context(), r.Method, proxyURL, r.Body)
	if err != nil {
		http.Error(w, "Failed to create request", http.StatusInternalServerError)
		return
	}
	req.Header = r.Header.Clone()

	resp, err := client.Do(req)
	if err != nil {
		http.Error(w, "Upstream request failed: "+err.Error(), http.StatusBadGateway)
		return
	}
	defer resp.Body.Close()

	for k, v := range resp.Header {
		for _, vv := range v {
			w.Header().Add(k, vv)
		}
	}

	w.WriteHeader(resp.StatusCode)
	io.Copy(w, resp.Body)
}
