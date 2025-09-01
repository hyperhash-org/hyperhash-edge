#!/usr/bin/env bash
set -euo pipefail
echo "[build-edge] building hh-edge..."
go build -trimpath -o /opt/hyperhash/bin/hh-edge ./cmd/edge
echo "[build-edge] done."
