#!/bin/bash

# Sherlock için JSON dizisi (array) çıktısı üretir.

WALLPAPER_DIR="$HOME/wallpaper"
APPLY_SCRIPT="$HOME/.config/sherlock/wallpaper_apply.sh"

# JSON dizisi başlangıcı
echo "["

# find ile jpg, jpeg, png dosyalarını bulur.
# Her dosya için JSON objesi oluşturur.
# Sonuna virgül (,) ekler.
find "$WALLPAPER_DIR" -maxdepth 1 -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) -printf '  {"name": "%f", "icon": "%p", "exit": true, "on_return": "/bin/bash %s %%p"},\n' "$APPLY_SCRIPT" |
# sed ile çıktının sonundaki son virgülü kaldırır (JSON syntax'ını düzeltir)
sed '$s/,$//'

# JSON dizisi bitişi
echo "]"
