#!/usr/bin/env bash
set -euo pipefail
# Why: This script runs automatically after Codespace builds.
# It installs dependencies and prepares the workspace.

echo "[post-create] Making sure Make is available (should be by default)..."
if ! command -v make >/dev/null 2>&1; then
  sudo apt-get update && sudo apt-get install -y make
fi

echo "[post-create] Creating .env from example if missing..."
if [ ! -f .env ]; then
  cp .env.example .env || true
fi

echo "[post-create] Done. Use: make up   # to start the stack"
