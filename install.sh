#!/bin/sh
# Устанавливает плагин симлинком в каталог плагинов pop-launcher
set -e
SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.local/share/pop-launcher/plugins/obsidian"
mkdir -p "$(dirname "$DEST")"
chmod +x "$SRC/obsidian-search"
ln -sfn "$SRC" "$DEST"
echo "Установлено: $DEST -> $SRC"
echo "Перезапусти лаунчер: pkill -f pop-launcher (запустится заново при открытии)"
