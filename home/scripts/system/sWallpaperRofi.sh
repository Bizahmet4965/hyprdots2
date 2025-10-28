#!/bin/bash

# --- AYARLAR ---
WALLPAPER_DIR="$HOME/wallpaper"
CONFIG_FILE="$HOME/.config/hyprpanel/config.json"
ROFI_THEME_FILE="$HOME/.config/rofi/launchers/styles/style-11-wall.rasi"

echo "[INFO] Duvar kağıtları listeleniyor..."

# --- Duvar kağıtlarını bul ---
mapfile -d $'\0' WALLPAPER_PATHS < <(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) -print0 | sort -z)

# --- Rofi için format oluştur ---
WALLPAPER_ENTRIES=""
for WALLPAPER_PATH in "${WALLPAPER_PATHS[@]}"; do
    if [ -n "$WALLPAPER_PATH" ]; then
        FILENAME=$(basename "$WALLPAPER_PATH")
        CLEAN_FILENAME=$(echo "$FILENAME" | tr -d '\n\t\0')
        # 🔹 Rofi biçimi: görünen ad + ikon + tam yol (ayrılmış)
        ENTRY="${CLEAN_FILENAME}\x00icon\x1f${WALLPAPER_PATH}\x1f${WALLPAPER_PATH}"
        WALLPAPER_ENTRIES+="${ENTRY}\n"
    fi
done

# --- Rofi menüsü ---
SELECTED_ENTRY=$(echo -e "$WALLPAPER_ENTRIES" | rofi -dmenu -i -p "Duvar Kağıdı Seç" \
                                                    -markup-rows \
                                                    -theme "$ROFI_THEME_FILE")

# --- Boş seçim kontrolü ---
if [ -z "$SELECTED_ENTRY" ]; then
    echo "[BİLGİ] Duvar kağıdı seçimi iptal edildi."
    notify-send "Bilgi Wallpaper" "Seçim Yapılmadı"
    exit 0
fi

# --- Tam dosya yolunu çıkar ---
# Rofi bazen sadece ad kısmını döndürebiliyor; bu yüzden fallback olarak tekrar arıyoruz.
if [[ "$SELECTED_ENTRY" == /* ]]; then
    WALLPAPER="$SELECTED_ENTRY"
else
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "$SELECTED_ENTRY" | head -n 1)
fi

# --- Yol kontrolü ---
if [ -z "$WALLPAPER" ] || [ ! -f "$WALLPAPER" ]; then
    echo "[HATA] Geçersiz seçim veya dosya bulunamadı. Tam Giriş: $SELECTED_ENTRY"
    notify-send "Hata" "Duvar kağıdı yolu alınamadı veya dosya bulunamadı."
    exit 1
fi

echo "[INFO] Seçilen duvar kağıdı: $WALLPAPER"
notify-send "Bilgi Wallpaper" "Yeni duvar kağıdı uygulanıyor..."

# --- Tema ve duvar kağıdı uygula ---
matugen apply --file "$WALLPAPER" -a
swww img "$WALLPAPER" --transition-fps 60 --transition-type fade

# --- Hyprpanel config güncelle ---
sed -i '/"wallpaper.image":/s|: ".*"|: "'"$WALLPAPER"'"|' "$CONFIG_FILE"

# --- Rofi teması güncelle ---
sed -i '/listbox {/,/}/ {
    /background-image:/c \    background-image: url("'"$WALLPAPER"'");
}' "$ROFI_THEME_FILE"

# --- Hyprpanel yeniden başlat ---
hyprpanel -q
hyprpanel &

echo "[INFO] Yeni duvar kağıdı uygulandı ve temalar güncellendi: $WALLPAPER"

