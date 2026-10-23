#!/bin/bash
DIRS="bookorbit immich jellyfin linkding navidrome transmission uptime-kuma"

for dir in $DIRS; do
  if [ -d "$dir" ]; then
    echo "--- Updating $dir ---"
    (cd "$dir" && docker compose pull && docker compose up -d)
    echo ""
  fi
done
