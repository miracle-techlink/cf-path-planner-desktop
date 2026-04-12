#!/bin/bash
# CF-Path-Planner 启动脚本

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ELECTRON="$DIR/node_modules/electron/dist/electron"

if [ ! -f "$ELECTRON" ]; then
  echo "❌ Electron 二进制未找到: $ELECTRON"
  exit 1
fi

# 如果 8765 已经有进程在跑，Electron 会直接复用
exec "$ELECTRON" "$DIR" --no-sandbox "$@"
