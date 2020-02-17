package main

import (
	"encoding/json"
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/test", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(200)
		b, _ := json.Marshal("Every thing is OK")
		w.Write(b)
	})

	e := http.ListenAndServe("0.0.0.0:8080", nil)
	if e != nil {
		fmt.Println("Error:", e.Error())
	}
	fmt.Println("Stopped Server")
}
