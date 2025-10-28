#!/bin/bash

# Sherlock'tan gelen seçili dosya yolu
WALLPAPER="$1"
CONFIG_FILE="$HOME/.config/hyprpanel/config.json"

# Eğer dosya yolu boşsa veya dosya mevcut değilse çık
if [ -z "$WALLPAPER" ] || [ ! -f "$WALLPAPER" ]; then
    notify-send "Sherlock Hata" "Geçersiz dosya seçimi: $WALLPAPER"
    exit 1
fi

notify-send "Bilgi Wallpaper" "Seçilen Duvar Kağıdı Uygulanıyor: $WALLPAPER"

# 1. Matugen temaları oluşturuluyor
matugen apply --file "$WALLPAPER" -a

# 2. swww ile uygulama
swww img "$WALLPAPER" --transition-fps 60 --transition-type fade

# 3. Hyprpanel JSON güncelle (Sizin orijinal kodunuzdan)
# 119. satırdaki wallpaper.image değerini günceller
sed -i "119s|.*|  \"wallpaper.image\": \"$WALLPAPER\",|" "$CONFIG_FILE"

# 4. Rofi Wall.. Degistirme (Sizin orijinal kodunuzdan)
# 78. satırdaki background-image URL'sini günceller
sed -i "78s|.*|    background-image: url(\"$WALLPAPER\");|" "$HOME/.config/rofi/launchers/styles/style-11.rasi"

# 5. Hyprpanel'i yeniden başlat
hyprpanel -q
hyprpanel &

notify-send "Bilgi Wallpaper" "Duvar Kağıdı ve Temalar Başarıyla Güncellendi!"

exit 0
