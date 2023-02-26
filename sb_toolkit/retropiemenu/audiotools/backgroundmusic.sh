#!/bin/bash
# TAMO+ Script
# By Chad "thepitster" Ward https://github.com/ALLRiPPED/
# & The Supreme Team https://github.com/SupremePi/

currentuser=$(whoami) # Check user
. /home/$currentuser/tamoplus/scripts/tamo-vars
. /home/$currentuser/tamoplus/scripts/tamo-functions

if [ ! -d /home/pi/tamoplus ]; then 
echo "Tamo Plus is missing? Will download it now."
curl -sSL https://bit.ly/Install-TAMO | bash
clear
fi

tamoplus_music() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "TAMO+ Music Settings  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Music Settings " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Enable/Disable Background Music $bgms" \
            2 "Enable/Disable BGM On-Boot $bgmos" \
            3 "Music Selection $ms" \
            4 "Volume Control $vol" \
            5 "Music Start Delay In Seconds $msd" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) enable_music ;;
            2) enable_musicos ;;
            3) music_select ;;
            4) set_bgm_volume ;;
            5) music_startdelay ;;
            *) break ;;
        esac
    done
}

tamoplus_music
