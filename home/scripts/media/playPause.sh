#!/bin/bash

# Çalışan medya uygulamalarını kontrol et
players=$(playerctl -l 2>/dev/null)

player=$(playerctl -l | head -n1)
case "$player" in
    spotify)
        icon="/usr/share/icons/Tela-circle-dracula/scalable@2x/apps/spotify-linux-512x512.svg"
        ;;
    vlc)
        icon="/usr/share/icons/Tela-circle-dracula/scalable@2x/apps/vlc.svg"
        ;;
    mpv)
        icon="/usr/share/icons/Tela-circle-dracula/scalable@2x/apps/mpv-icon-8bit-64x64.svg"
        ;;
    *)
        icon=""
        ;;
esac

title=$(playerctl metadata title)
artist=$(playerctl metadata artist)

if [ -z "$players" ]; then
    notifiy-send "Hiçbir müzik çalmıyor."
else
    # Her uygulama için durumu kontrol et
    any_playing=false
    for p in $players; do
        status=$(playerctl -p "$p" status 2>/dev/null)
        if [ "$status" == "Playing" ]; then
            any_playing=true
            playerctl -p "$p" pause
            echo "$p durduruldu."
        elif [ "$status" == "Paused" ]; then
            playerctl -p "$p" play
            notify-send -i "$icon" "  Oynatılıyor... " "$(playerctl metadata artist) - $(playerctl metadata title)"
        fi
    done

    if [ "$any_playing" = false ]; then
        echo "Hiçbir müzik çalmıyordu, çalmaya devam eden yok."
    fi
fi

