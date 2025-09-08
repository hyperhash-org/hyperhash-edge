[![CI](https://github.com/hyperhash-org/hyperhash-edge/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/hyperhash-org/hyperhash-edge/actions/workflows/ci.yml)

# Hyper Hash — Edge

Regional edge node service for Hyper Hash.  
Runs close to miners to detect tip changes quickly and push updated templates to the pool.

## Features
- Fast tip detection (bitcoind ZMQ + RPC)
- Peer edge communication (mirror function)
- Template fan-out to pool + overlay
- Optional regional stratum ingress

## Quickstart

### Build
```bash
make build
# or
go build -o ./bin/hh-edge ./cmd/hh-edge

## Running
```bash
make build
./edge -config ./configs/edge.yml
