package main

import (
"flag"
"fmt"
"log"

"time"
)

func main() {
cfg := flag.String("config", "/opt/hyperhash/configs/edge.toml", "path to config")
flag.Parse()

log.SetFlags(0)
log.Printf("[edge] starting with config %s", *cfg)

for {
fmt.Printf("[edge] alive %s\n", time.Now().Format(time.RFC3339))
time.Sleep(10 * time.Second)
}
}
