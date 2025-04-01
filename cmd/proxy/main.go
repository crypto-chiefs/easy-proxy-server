package main

import (
	"log"
	"net/http"
	"os"

	"github.com/crypto-chiefs/easy-proxy-server/internal/server"
)

func main() {
	// Определяем порт
	port := os.Getenv("PORT")
	if port == "" {
		port = "80"
	}

	http.HandleFunc("/", server.Handler)
	log.Println("🔁 Proxy listening on :" + port)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
