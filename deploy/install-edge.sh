#!/usr/bin/env bash
set -euo pipefail

UNIT_SRC="$(dirname "$0")/hh-edge.service"
UNIT_DST="/etc/systemd/system/hh-edge.service"

# ensure dirs exist
sudo mkdir -p /opt/hyperhash/bin /opt/hyperhash/configs /opt/hyperhash/logs
sudo chown -R hyperhash:hyperhash /opt/hyperhash

# install unit
sudo cp "$UNIT_SRC" "$UNIT_DST"
sudo systemctl daemon-reload
sudo systemctl enable hh-edge

echo "Installed hh-edge.service. Next steps:"
echo "  1) put binary at /opt/hyperhash/bin/hh-edge (chmod +x)"
echo "  2) create /opt/hyperhash/configs/edge.toml (copy example)"
echo "  3) sudo systemctl start hh-edge && journalctl -u hh-edge -f"
