BIN := /opt/hyperhash/bin/hh-edge
PKG := ./cmd/edge

.PHONY: build restart logs fmt lint test

build:
go build -trimpath -buildvcs=false -o $(BIN) $(PKG)

restart:
sudo systemctl restart hh-edge

logs:
sudo journalctl -u hh-edge -n 50 --no-pager

fmt:
go fmt ./...

lint:
golangci-lint run

test:
go test ./...
