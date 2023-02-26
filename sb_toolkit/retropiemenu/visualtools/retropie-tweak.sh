#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

infobox="${infobox}\n"
infobox="${infobox}_______________________________________________________\n\n"
infobox="${infobox}\n"
infobox="${infobox}RETROPIE TWEAK SCRIPT\n\n"
infobox="${infobox}\n"
infobox="${infobox}Make your build feel like a default copy of retropie.\n"
infobox="${infobox}\n"
infobox="${infobox}\n\n"
infobox="${infobox}**Enable Clean RetroPie**\nwhen you run the Enable Clean RetroPie, RetroPie will load up with defult settings & menu\n"
infobox="${infobox}\n"
infobox="${infobox}**Enable Supreme RetroPie**\nwhen you run the Enable Supreme RetroPie, RetroPie will load up with all supreme settings & menu\n"
infobox="${infobox}\n"

dialog --backtitle "RETROPIE TWEAK SCRIPT" \
--title "RETROPIE TWEAK SCRIPT" \
--msgbox "${infobox}" 35 110



function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Enable Clean Retropie" \
            2 "Enable Supreme Retropie" \
            2>&1 > /dev/tty)

        case "$choice" in
		    1) clean_retropie  ;;
            2) clean_supreme  ;;
            *)  break ;;
        esac
    done
}


function clean_retropie() { 
# Loading video
disable_dir="/home/pi/RetroPie/videoloadingscreens_disable"
enable_dir="/home/pi/RetroPie/videoloadingscreens"
disable_dir_music="/home/pi/RetroPie/roms/music_disable"
enable_dir_music="/home/pi/RetroPie/roms/music"
curtheme=`cat /opt/retropie/configs/all/emulationstation/es_settings.cfg |grep ThemeSet |cut -f4 -d '"'`

if [[ -d "$enable_dir" ]]; then
 mv /home/pi/RetroPie/videoloadingscreens /home/pi/RetroPie/videoloadingscreens_disable
fi

# Loading images
rm -r /opt/retropie/configs/*/launching.png >/dev/null 2>&1
rm -r /opt/retropie/configs/*/launching.jpg >/dev/null 2>&1

# Emulationstation settings
sed '/^$/d' /opt/retropie/configs/all/autostart.sh > /opt/retropie/configs/all/autostart.sh
echo "emulationstation #auto" >> /opt/retropie/configs/all/autostart.sh
sudo cp /home/pi/.supreme_toolkit/sb_toolkit/es_cfg/es_retropie.cfg /etc/emulationstation/es_systems.cfg
sudo cp /home/pi/.supreme_toolkit/sb_toolkit/es_cfg/es_retropie.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg
sed '/^$/d' /home/pi/RetroPie/scripts/supremetheme > /home/pi/RetroPie/scripts/supremetheme
cat /opt/retropie/configs/all/emulationstation/es_settings.cfg | grep ThemeSet | cut -d ':' -f 2 > /home/pi/RetroPie/scripts/supremetheme
perl -pi -w -e 's/<string name=\"ThemeSet\" value=\"'${curtheme}'\" \/>/<string name=\"ThemeSet\" value=\"'carbon'\" \/>/g;' /opt/retropie/configs/all/emulationstation/es_settings.cfg >/dev/null 2>&1

# music
pkill -STOP mpg123
if [[ -d "$enable_dir_music" ]]; then
 mv /home/pi/RetroPie/roms/music /home/pi/RetroPie/roms/music_disable
fi

# bezels
mkdir /opt/retropie/configs/all/retroarch/overlay/bk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/GameBezels /opt/retropie/configs/all/retroarch/overlay/GameBezelsbk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/ArcadeBezels /opt/retropie/configs/all/retroarch/overlay/ArcadeBezelsbk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/borders /opt/retropie/configs/all/retroarch/overlay/bordersbk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/handhelds /opt/retropie/configs/all/retroarch/overlay/handheldsbk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/unified /opt/retropie/configs/all/retroarch/overlay/unifiedbk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/*.cfg /opt/retropie/configs/all/retroarch/overlay/bk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/*.png /opt/retropie/configs/all/retroarch/overlay/bk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/wii /opt/retropie/configs/all/retroarch/overlay/wiibk 2> /dev/null

# Clean retropie menu
clear
sudo rsync -av /home/pi/RetroPie/retropiemenu/raspiconfig.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/rpsetup.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/showip.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/audiosettings.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/bluetooth.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/configedit.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/esthemes.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/filemanager.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/retroarch.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/retronetplay.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/runcommand.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/splashscreen.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/wifi.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/bezelproject.sh /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/hurstythemes.sh /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/fruitbox.btn /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ >/dev/null 2>&1
sleep 5
echo "RetroPie files updated, Now fixing your menu"
rm -rf /home/pi/RetroPie/retropiemenu/* && rsync -av /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu-clean/ /home/pi/RetroPie/retropiemenu && cp /home/pi/.supreme_toolkit/sb_toolkit/retropie-gml-clean/gamelist.xml /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
sudo chown -R pi:pi /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu
sleep 3
echo Your Pi will now reboot to save changes.
sleep 2
sudo shutdown -r now
}

function clean_supreme() {
disable_dir="/home/pi/RetroPie/videoloadingscreens_disable"
enable_dir="/home/pi/RetroPie/videoloadingscreens"
disable_dir_music="/home/pi/RetroPie/roms/music_disable"
enable_dir_music="/home/pi/RetroPie/roms/music"
curtheme=`cat /opt/retropie/configs/all/emulationstation/es_settings.cfg |grep ThemeSet |cut -f4 -d '"'`
supremetheme=`cat /home/pi/RetroPie/scripts/supremetheme |grep ThemeSet |cut -f4 -d '"'`

# video loading
if [[ -d "$disable_dir" ]]; then
 mv /home/pi/RetroPie/videoloadingscreens_disable /home/pi/RetroPie/videoloadingscreens
fi

# Loading images
cp -r /home/pi/RetroPie/LaunchingScreens/Black/* /opt/retropie/configs

# Emulationstation settings
sudo cp /opt/retropie/configs/all/ES-start.sh /opt/retropie/configs/all/autostart.sh
sudo cp /home/pi/.supreme_toolkit/sb_toolkit/es_cfg/es_supreme.cfg /etc/emulationstation/es_systems.cfg
sudo cp /home/pi/.supreme_toolkit/sb_toolkit/es_cfg/es_supreme.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg
perl -pi -w -e 's/<string name=\"ThemeSet\" value=\"'${curtheme}'\" \/>/<string name=\"ThemeSet\" value=\"'${supremetheme}'\" \/>/g;' /opt/retropie/configs/all/emulationstation/es_settings.cfg >/dev/null 2>&1

# music
if [[ -d "$disable_dir_music" ]]; then
 mv /home/pi/RetroPie/roms/music_disable /home/pi/RetroPie/roms/music
fi

# bezels
mkdir /opt/retropie/configs/all/retroarch/overlay/bk 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/GameBezelsbk /opt/retropie/configs/all/retroarch/overlay/GameBezels 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/ArcadeBezelsbk /opt/retropie/configs/all/retroarch/overlay/ArcadeBezels 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/bordersbk /opt/retropie/configs/all/retroarch/overlay/borders 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/handheldsbk /opt/retropie/configs/all/retroarch/overlay/handhelds 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/unifiedbk /opt/retropie/configs/all/retroarch/overlay/unified 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/bk/*.cfg /opt/retropie/configs/all/retroarch/overlay 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/bk/*.png /opt/retropie/configs/all/retroarch/overlay 2> /dev/null
mv /opt/retropie/configs/all/retroarch/overlay/wiibk /opt/retropie/configs/all/retroarch/overlay/wii 2> /dev/null

# Clean supreme menu
clear
sudo rsync -av /home/pi/RetroPie/retropiemenu/raspiconfig.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/rpsetup.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/showip.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/retropietools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/audiosettings.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/audiotools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/bluetooth.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/retropietools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/configedit.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/emulationtools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/esthemes.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/visualtools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/filemanager.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/retropietools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/retroarch.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/retropietools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/retronetplay.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/retropietools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/runcommand.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/retropietools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/splashscreen.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/visualtools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/wifi.rp /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/retropietools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/bezelproject.sh /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/visualtools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/hurstythemes.sh /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/visualtools/ >/dev/null 2>&1
sudo rsync -av /home/pi/RetroPie/retropiemenu/fruitbox.btn /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/ >/dev/null 2>&1
sleep 5
echo "RetroPie files updated, Now fixing your menu"
rm -rf /home/pi/RetroPie/retropiemenu/* && rsync -av /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu/ /home/pi/RetroPie/retropiemenu && cp /home/pi/.supreme_toolkit/sb_toolkit/retropie-gml/gamelist.xml /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
sudo chown -R pi:pi /home/pi/.supreme_toolkit/sb_toolkit/retropiemenu
sleep 3
echo Your Pi will now reboot to save changes.
sleep 2
sudo shutdown -r now
}

main_menu
