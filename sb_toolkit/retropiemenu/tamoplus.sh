#!/bin/bash
# TAMO+ Script
# By Chad "thepitster" Ward https://github.com/ALLRiPPED/
# & The Supreme Team https://github.com/SupremePi/
currentuser=$(whoami) # Check user
. /home/$currentuser/tamoplus/scripts/tamo-vars

tamo_main_menu() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "TAMO+ $ver  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Theme Settings" \
            2 "Music Settings" \
            3 "Visual Settings" \
            4 "Loading Media Settings" \
            - "----------------------" \
            5 "Controller Settings" \
            6 "Emulation Settings" \
            7 "Retropie Settings" \
            8 "User Control Panel" \
            - "----------------------" \
            9 "View TAMO+ Disclamer" \
            2>&1 > /dev/tty)
        case "$choice" in
            1) themesettings ;;
            2) musicsettings ;;
            3) visual_menu ;;
            4) loading_media ;;
            5) controller_menu ;;
            6) emulation_menu ;;
            7) retropie_tools_menu ;;
            8) user_menu ;;
            9) disclaim ;;
            -) nono ;;
            *) break ;;
        esac
    done
}

emulation_menu() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Emulation Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Emulation Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Start A Default System" \
            2 "Auto Amiga Install" \
            3 "RetroPie Config Edit" \
            4 "Install N64 Tweaks" \
            5 "Openbor Module Selection Script" \
            6 "Rpc80 Save File Script" \
            7 "UAE Config Maker" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) bash $INSTALL_DIR/scripts/+Start-System.sh ;;
            2) bash $INSTALL_DIR/scripts/Auto-Amiga-Install.sh ;;
            3) sudo /home/pi/RetroPie-Setup/retropie_packages.sh configedit gui ;;
            4) bash $INSTALL_DIR/scripts/n64tweaks.sh ;;
            5) bash $INSTALL_DIR/scripts/openbormoduleselectionscript.sh ;;
            6) bash $INSTALL_DIR/scripts/rpc80-savefile.sh ;;
            7) bash $INSTALL_DIR/scripts/UAE-Config-Maker.sh ;;
            *) break ;;
        esac
    done
}

retropie_tools_menu() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Retropie Tools Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Retropie Tools Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "RetroPie Bluetooth" \
            2 "Clear Last Played" \
            3 "ES Collections" \
            4 "ES Gamelist" \
            5 "CPU Fan Temperature Control" \
            6 "File Find" \
            7 "File Manager" \
            8 "Gpio Shutdown" \
            9 "Over Clock" \
           10 "Reference" \
           11 "Retroarch" \
           12 "Retro Net Play" \
           13 "Runcommand" \
           14 "Show My Ip" \
           15 "System Info" \
           16 "Usb Ext" \
           17 "Wifi" \
			- "----------------------" \
		   18 "Enable/Disable Wi-Fi $wfsw" \
		   19 "Enable/Disable Bluetooth $btsw" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) sudo /home/pi/RetroPie-Setup/retropie_packages.sh bluetooth gui ;;
            2) bash $INSTALL_DIR/scripts/clearlastplayed.sh ;;
            3) bash $INSTALL_DIR/scripts/escollections.sh ;;
            4) bash $INSTALL_DIR/scripts/esgamelist.sh ;;
            5) fan_control ;;
            6) bash $INSTALL_DIR/scripts/filefind.sh ;;
            7) sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch filemanager.rp ;;
            8) bash $INSTALL_DIR/scripts/gpioshutdown.sh ;;
			9) bash $INSTALL_DIR/scripts/overclock.sh ;;
           10) bash $INSTALL_DIR/scripts/reference.sh ;;
           11) sudo /home/pi/RetroPie-Setup/retropie_packages.sh retroarch gui ;;
           12) sudo /home/pi/RetroPie-Setup/retropie_packages.sh retronetplay gui ;;
           13) sudo /home/pi/RetroPie-Setup/retropie_packages.sh runcommand gui ;;
           14) sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch showip.rp ;;
           15) bash $INSTALL_DIR/scripts/systeminfo.sh ;;
		   16) bash $INSTALL_DIR/scripts/usb-ext.sh ;;
           17) sudo /home/pi/RetroPie-Setup/retropie_packages.sh wifi gui ;;
           18) wifi-switch ;;
           19) bluetooth-switch ;;
		    -) nono ;;
            *) break ;;
        esac
    done
}

user_menu() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "TAMO+ $ver  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " USER MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Turn On-Off Auto Update $aupstat" \
            2 "Turn Categorized Menus On-Off $menstat" \
            - "--------------------------------------" \
            3 "TAMO+ Themesets Downloader" \
            4 "TAMO+ Music Downloader" \
            5 "TAMO+ Themes Installer" \
            - "--------------------------------------" \
            6 "Update TAMO+" \
            2>&1 > /dev/tty)
        case "$choice" in
            1) auto_update ;;
            2) retropie_menu ;;
            3) download_select_themesets ;;
            4) download_select_music ;;
            5) download_select_themes ;;
            6) bash $INSTALL_DIR/scripts/updater.sh; exit 1 ;;
            -) nono ;;
            *) break ;;
        esac
    done
}

visual_menu() {
rpi=$(cat /proc/device-tree/model |awk '{print $3}')
if [ "$rpi" = "3" ]; then
visual_menu_pi3
else
visual_menu_pi4
fi
}

visual_menu_pi3() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Visual Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Visual Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "TAMO+ Overlay Settings" \
            2 "Bezel Project" \
            3 "Full Universal Bezel on/off" \
            4 "Change Resolution" \
            5 "Retroarch Visual Tools" \
            6 "Game Media Removal Utility" \
            7 "RetroPie splashscreen Utility" \
            8 "Skyscraper Utility" \
            9 "Switch Genesis & MegaDrive Swap" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) overlay_menu ;;
            2) bezel_project ;;
            3) bash $INSTALL_DIR/scripts/bezels.sh ;;
            4) bash $INSTALL_DIR/scripts/resolution-tool.sh ;;
            5) bash $INSTALL_DIR/scripts/retroarch-tool.sh ;;
            6) bash $INSTALL_DIR/scripts/removemedia.sh ;;
            7) sudo /home/pi/RetroPie-Setup/retropie_packages.sh splashscreen gui ;;
            8) bash $INSTALL_DIR/scripts/skyscraper.sh ;;
            9) bash $INSTALL_DIR/scripts/genesis.sh ;;
            *) break ;;
        esac
    done
}

visual_menu_pi4() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Visual Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Visual Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "TAMO+ Overlay Settings" \
            2 "Bezel Project" \
            3 "Full Universal Bezel on/off" \
            4 "Supreme Marquee Tool" \
            5 "Change Resolution" \
            6 "Retroarch Visual Tools" \
            7 "Game Media Removal Utility" \
            8 "RetroPie splashscreen Utility" \
            9 "Skyscraper Utility" \
           10 "Switch Genesis & MegaDrive Swap" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) overlay_menu ;;
            2) bezel_project ;;
            3) bash $INSTALL_DIR/scripts/bezels.sh ;;
            4) supreme_marquee_tool ;;
            5) bash $INSTALL_DIR/scripts/resolution-tool.sh ;;
            6) bash $INSTALL_DIR/scripts/retroarch-tool.sh ;;
            7) bash $INSTALL_DIR/scripts/removemedia.sh ;;
            8) sudo /home/pi/RetroPie-Setup/retropie_packages.sh splashscreen gui ;;
            9) bash $INSTALL_DIR/scripts/skyscraper.sh ;;
           10) bash $INSTALL_DIR/scripts/genesis.sh ;;
            *) break ;;
        esac
    done
}

loading_media() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Loading Media Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Loading Media Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "TAMO+ Video Loading Screens Menu" \
            2 "TAMO+ Video Exit Screens Menu" \
            3 "Loading Screens Menu" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) loading_video ;;
            2) loading_video_exit ;;
            3) loading_screens ;;
            *) break ;;
        esac
    done
}

loading_video() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Video Loading Screens Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Loading video Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Enable/Disable Videoloadingscreens $vls" \
            2 "Enable/Disable Exit Splash $exs" \
            3 "Set Videoloadingscreens Folder" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) video_screens ;;
            2) exit_splash ;;
            3) set_video_screens_load ;;
            *) break ;;
        esac
    done
}

loading_video_exit() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Video Exiting Screens Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Loading Exit video Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Enable/Disable Exit Videoexitingscreens $vxs" \
            2 "Set Exit Videoexitingscreens Folder" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) video_screens_exit ;;
            2) set_video_screens_exit ;;
            *) break ;;
        esac
    done
}

loading_screens() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Loading Video Menu  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Loading video Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Pick Installed launching screens" \
            2 "Remove Launching Screens" \
            3 "Download Launching Screens" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) install_screens  ;;
            2) remove_screens  ;;
            3) download_screens  ;;
            *) break ;;
        esac
    done
}

install_screens() {

FILE=""
DIR="/home/pi/RetroPie/LaunchingScreens"
if [ "$(ls -A $DIR)" ]; then
	ls /home/pi/RetroPie/LaunchingScreens |grep -v README > /tmp/displays
	let i=0 # define counting variable
	W=() # define working array
	while read -r line; do # process file by file
		let i=$i+1
		W+=($i "$line")
	done < <(cat /tmp/displays)
	CONFDISP=$(dialog --title "RetroPie Launching Screens Utility" --menu "Current available launching screenset.  Chose one to install." 24 80 17 "${W[@]}" 3>&2 2>&1 1>&3)
	clear
	if [ -z $CONFDISP ]; then
		return
	else
		if [[ ! -d "/home/pi/RetroPie/LaunchingScreens" ]]; then
			mkdir -p "/home/pi/RetroPie/LaunchingScreens"
		fi
		if [[ -f "/opt/retropie/configs/*/launching.png" ]]; then
			rm /opt/retropie/configs/*/launching.png
		fi
		if [[ -f "/opt/retropie/configs/*/launching.jpg" ]]; then
			rm /opt/retropie/configs/*/launching.jpg
		fi
		if [[ -f "/tmp/displays" ]]; then
			currentdisplay=`sed -n ${CONFDISP}p /tmp/displays`
			cp -r /home/pi/RetroPie/LaunchingScreens/${currentdisplay}/* /opt/retropie/configs
		else
			echo -e "$(tput setaf 2)No Themes Installed?. $(tput sgr0)"
			sleep 5
		fi
	fi
	echo -e "$(tput setaf 2)Done. $(tput sgr0)"
	sleep 3
else
	if (dialog --title "NO THEMES INSTALLED!" --yesno "Would You Like To Install One?" 0 0 ); then
		download_screens
	else
		echo -e "$(tput setaf 2)Skipping. $(tput sgr0)"
		sleep 3
	fi
fi
}

download_screens() {
    local themes=(
        'dmmarti hurstyblue'
        'dmmarti motionblue'
        'dmmarti gridblue'
        'dmmarti simple_gray'
        'jtgoshaff 16x9comicbasic'
        'jtgoshaff 16x9ComicRip'
        'jtgoshaff 16x9NESMini'
        'jtgoshaff 4x3ComicRip'
        'jtgoshaff 4x3NESMini'
        'jtgoshaff Carbon'
        'jtgoshaff CleanLook'
        'jtgoshaff Luminous'
        'jtgoshaff Material'
        'jtgoshaff Metapixel'
        'jtgoshaff NBBA'
        'jtgoshaff Pixel'
        'jtgoshaff Simple'
        'jtgoshaff ntscNESmini'
        'jtgoshaff SwitchStyle'
        'jtgoshaff Tronkyfran'
        'jtgoshaff 4x3comicbasic'
        'jtgoshaff Comicbook'
    )
    while true; do
        local theme
        local installed_themes=()
        local repo
        local options=()
        local status=()
        local default

        options+=(U "Update install script - script will exit when updated")

        local i=1
        for theme in "${themes[@]}"; do
            theme=($theme)
            repo="${theme[0]}"
            theme="${theme[1]}"
            if [[ -d "/home/pi/RetroPie/LaunchingScreens/$theme" ]]; then
                status+=("i")
                options+=("$i" "Update or Uninstall $theme (installed)")
                installed_themes+=("$theme $repo")
            else
                status+=("n")
                options+=("$i" "Install $theme (not installed)")
            fi
            ((i++))
        done
        local cmd=(dialog --default-item "$default" --backtitle "$__backtitle" --menu "RetroPie Launching Screens Downloader - Choose an option" 22 76 16)
        local choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
        default="$choice"
        [[ -z "$choice" ]] && break
        case "$choice" in
            U)  #update install script to get new theme listings
                git clone --depth=1 https://github.com/ALLRiPPED/tamoplus.git
                cd tamoplus
                sudo chmod +x local_installer.sh
                ./local_installer.sh
                exit
                ;;
            *)  #install or update themes
                theme=(${themes[choice-1]})
                repo="${theme[0]}"
                theme="${theme[1]}"
#                if [[ "${status[choice]}" == "i" ]]; then
                if [[ -d "/home/pi/RetroPie/LaunchingScreens/$theme" ]]; then
                    options=(1 "Update $theme" 2 "Uninstall $theme")
                    cmd=(dialog --backtitle "$__backtitle" --menu "Choose an option for the launching screens pack" 12 40 06)
                    local choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
                    case "$choice" in
                        1)
                            install_launching_screens "$theme" "$repo"
                            ;;
                        2)
                            uninstall_launching_screens "$theme"
                            ;;
                    esac
                else
                    install_launching_screens "$theme" "$repo"
                fi
                ;;
        esac
    done
}

themesettings() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Theme Settings  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Theme Settings " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "TAMO+ Themesets" \
            2 "RetroPie Themes" \
            3 "Hursty Themes" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) tamoplus_themesets ;;
            2) sudo /home/pi/RetroPie-Setup/retropie_packages.sh esthemes gui ;;
            3) hursty_themes ;;
            *) break ;;
        esac
    done
}

tamoplus_themesets() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Theme Settings  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Theme Settings " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Enable Carbonite Themeset" \
            2 "Enable Christmas Themeset" \
            3 "Enable Halloween Themeset" \
            4 "Enable Diablos Arcade Themeset" \
            5 "Enable Neon IBAD Themeset" \
            6 "Enable Pistolero Themeset" \
            7 "Enable Pleasure Paradise Themeset" \
            8 "Enable Stranger Things Themeset" \
            9 "Enable Supreme Ultra Themeset" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) enable_carbonite ;;
            2) enable_xmas ;;
            3) enable_halloween ;;
            4) enable_diablos ;;
            5) enable_neonibad ;;
            6) enable_pistolero ;;
            7) enable_pleasure ;;
            8) enable_stranger ;;
            9) enable_supreme ;;
            *) break ;;
        esac
    done
}

musicsettings() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Music Settings  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Music Settings " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "TAMO+ Music Settings" \
            2 "Retropie Audio Settings" \
            3 "Quick No Audio Fixes" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) tamoplus_music ;;
            2) sudo /home/pi/RetroPie-Setup/retropie_packages.sh audiosettings gui ;;
            3) quick_audio_fixes ;;
            *) break ;;
        esac
    done
}

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

quick_audio_fixes() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Quick Audio Fixes  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Music Settings " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "No Audio Fix  (Try this First)" \
            2 "No Audio Force 720p" \
            3 "No Audio Force 1080p" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) no_audio_fix  ;;
            2) no_audio_force_720p  ;;
            3) no_audio_force_1080p  ;;
            *) break  ;;
        esac
    done
}

overlay_menu() {
stats_check
local choice
    while true; do
        choice=$(dialog --colors --backtitle "TAMO+ OverLay Settings  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Overlay Menu " \
            --ok-label OK --cancel-label Back \
            --menu "What action would you like to perform?" 25 85 20 \
            1 "Enable/Disable Overlay $ovs" \
            2 "Enable/Disable Overlay Fadeout $ovf" \
            3 "Adjust Overlay Fadeout In Seconds $oft" \
            4 "Enable/Disable Overlay Rounded Corners $ocr" \
            5 "Enable/Disable Overlay Line Separator $ons" \
            6 "Vertical Position: $vpos" \
            7 "Horizontal Position: $hpos" \
            8 "Font Selection" \
            9 "Font Color Selection" \
           10 "Overlay Color Selection" \
            2>&1 > /dev/tty)
        case "$choice" in
            1) overlay_enable ;;
            2) overlay_fade_out ;;
            3) overlay_fade_out_time ;;
            4) overlay_rounded_corners ;;
            5) overlay_replace_newline ;;
            6) overlay_v_pos ;;
            7) overlay_h_pos ;;
            8) bash $INSTALL_DIR/scripts/fontpicker.sh ;;
            9) bash $INSTALL_DIR/scripts/fontcolorpicker.sh ;;
           10) bash $INSTALL_DIR/scripts/overlaycolorpicker.sh ;;
            *) break ;;
        esac
    done
}

set_bgm_volume() {
  local CUR_VOL
  CUR_VOL=$(grep "maxvolume =" "$SCRIPT_LOC"|awk '{print $3}' | awk '{print $1 * 100}')
  export CUR_VOL
  local NEW_VOL
  NEW_VOL=$(dialog \
	--backtitle "$BACKTITLE" \
	--title "$TITLE" \
	--rangebox "Set volume level (D+/U-): " 0 50 0 100 "$CUR_VOL" \
	2>&1 >/dev/tty)
if [ -z "$NEW_VOL" ] || [ "$NEW_VOL" == "$CUR_VOL" ]; then return; fi;
  echo "BGM volume set to $NEW_VOL%"
  NEW_VOL=$(echo  "$NEW_VOL" | awk '{print $1 / 100}')
  export NEW_VOL
  CUR_VOL=$(echo  "$CUR_VOL" | awk '{print $1 / 100}')
  export CUR_VOL
perl -p -i -e 's/maxvolume = $ENV{CUR_VOL}/maxvolume = $ENV{NEW_VOL}/g' $SCRIPT_LOC
bgm_check
stats_check
}

music_select() {
stats_check
local choice
    while true; do
        choice=$(dialog --colors --backtitle "Select Your Music Choice  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay POS: $vpos$hpos  Resolution: $resolution" --title " Music Selection " \
            --ok-label OK --cancel-label Back \
            --menu "What action would you like to perform?" 25 85 20 \
            1 "Change Music Folder" \
            2 "Disable Music Folder" \
            3 "Enable/Disable Arcade Music" \
            4 "Enable/Disable Custom Music" \
            5 "Enable/Disable Nostalgia Music" \
            6 "Enable/Disable Ultimate Vs Fighter Music" \
            7 "Enable/Disable Venom Music" \
            2>&1 > /dev/tty)
        case "$choice" in
            1) set_music_dir ;;
            2) disable_music_dir ;;
            3) enable_arcade  ;;
            4) enable_custom  ;;
            5) enable_nt  ;;
            6) enable_uvf  ;;
            7) enable_venom  ;;
            *) break ;;
        esac
    done
}

set_music_dir() {
stats_check
  CUR_DIR=""
  CUR_PLY=""
  SELECTION=""
  SELECT=""
  IFS=$'\n'
  local SELECTION
  CUR_DIR=$(grep "musicdir =" "$SCRIPT_LOC" |(awk '{print $3}') | tr -d '"')/
  export CUR_DIR
  while [ -z $SELECTION ]; do
    [[ "${CUR_DIR}" ]] && CUR_DIR="${CUR_DIR}"/
    local cmd=(dialog --colors \
      --backtitle "$BACKTITLE | Current Folder: $CUR_DIR  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay POS: $vpos$hpos  Resolution: $resolution" \
      --title "$TITLE" \
      --menu "Choose a music directory" 20 70 20 )
    local iterator=1
    local offset=-1
    local options=()
    if [ "$(dirname $CUR_DIR)" != "$CUR_DIR" ]; then
      options+=(0)
      options+=("Parent Directory")
      offset=$(($offset+2))
    fi
    options+=($iterator)
    options+=("<Use This Directory>")
    iterator=$(($iterator+1))
    for DIR in $(find "$CUR_DIR" -maxdepth 1 -mindepth 1 -type d | sort); do
      options+=($iterator)
      options+=("$(basename $DIR)")
      iterator=$(($iterator+1))
    done
    choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    case $choice in
      0) CUR_DIR="$(dirname $CUR_DIR)" ;;
      1) SELECTION="$CUR_DIR" ;;
      '') return ;;
      *) CUR_DIR="$CUR_DIR${options[ $((2*choice + $offset )) ]}" ;;
    esac
  done
  [[ "${MUSIC_DIR}" ]] && MUSIC_DIR="${MUSIC_DIR}"
  if [ "$SELECTION" != "$MUSIC_DIR" ]; then
    echo "Music directory changed to '$SELECTION'"
    CUR_PLY=$(grep "musicdir =" "$SCRIPT_LOC"|awk '{print $3}')
    export CUR_PLY
    SELECT=$(echo $SELECTION | sed 's:/*$::')
    sed -i -E "s|musicdir = ${CUR_PLY}|musicdir = \"${SELECT}\"|g" $SCRIPT_LOC
    bgm_check
  elif [ "$SELECTION" == "$MUSIC_DIR" ]; then
    echo "Music directory is already '$SELECTION'"
  else
    return
  fi
  IFS=$OLDIFS
bgm_check
stats_check
}

music_startdelay() {
oldstartdelaytime=$(grep "startdelay = " "$SCRIPT_LOC"|awk '{print $3}')
export oldstartdelaytime
startdelaytime=$(dialog --colors --title "Adjust the Music Start Delay" \
	--inputbox "Input the Start Delay Time:" 8 40 "$oldstartdelaytime" 3>&1 1>&2 2>&3 3>&-)
export startdelaytime
if [ $startdelaytime ]; then
perl -p -i -e 's/startdelay = $ENV{oldstartdelaytime}/startdelay = $ENV{startdelaytime}/g' $SCRIPT_LOC
else
	return
fi
bgm_check
stats_check
}

set_video_screens_load() {
stats_check
  CUR_LOD=""
  NEW_LOD=""
  SELECTION=""
  SELECT=""
  IFS=$'\n'
  local SELECTION
  CUR_LOD=$(grep "videoloadingscreens=" "$RUNONSTART"|grep -o '".*"' | tr -d '"')
  export CUR_LOD
  while [ -z $SELECTION ]; do
    [[ "${CUR_LOD}" ]] && CUR_LOD="${CUR_LOD}"/
    local cmd=(dialog --colors \
      --backtitle "$BACKTITLE | Current Folder: $CUR_LOD  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay POS: $vpos$hpos  Resolution: $resolution" \
      --title "$TITLE" \
      --menu "Choose a Videoloadingscreens directory" 20 70 20 )
    local iterator=1
    local offset=-1
    local options=()
    if [ "$(dirname $CUR_LOD)" != "$CUR_LOD" ]; then
      options+=(0)
      options+=("Parent Directory")
      offset=$(($offset+2))
    fi
    options+=($iterator)
    options+=("<Use This Directory>")
    iterator=$(($iterator+1))
    for DIR in $(find "$CUR_LOD" -maxdepth 1 -mindepth 1 -type d | sort); do
      options+=($iterator)
      options+=("$(basename $DIR)")
      iterator=$(($iterator+1))
    done
    choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    case $choice in
      0) CUR_LOD="$(dirname $CUR_LOD)" ;;
      1) SELECTION="$CUR_LOD" ;;
      '') return ;;
      *) CUR_LOD="$CUR_LOD${options[ $((2*choice + $offset )) ]}" ;;
    esac
  done
  [[ "${VID_LOD_SCR}" ]] && VID_LOD_SCR="${VID_LOD_SCR}"
  if [ "$SELECTION" != "$VID_LOD_SCR" ]; then
    echo "Videoloadingscreens directory changed to '$SELECTION'"
    NEW_LOD=$(grep "videoloadingscreens=" "$RUNONSTART"|grep -o '".*"')
    export NEW_LOD
    SELECT=$(echo $SELECTION | sed 's:/*$::')
	sed -i -E "s|videoloadingscreens=${NEW_LOD}|videoloadingscreens=\"${SELECT}\"|g" $RUNONSTART
  elif [ "$SELECTION" == "$VID_LOD_SCR" ]; then
    echo "Videoloadingscreens directory is already '$SELECTION'"
  else
    return
  fi
  IFS=$OLDIFS
stats_check
}

set_video_screens_exit() {
stats_check
  CUR_LOD=""
  NEW_LOD=""
  SELECTION=""
  SELECT=""
  IFS=$'\n'
  local SELECTION
  CUR_LOD=$(grep "videoexitingscreens=" "$RUNONEND"|grep -o '".*"' | tr -d '"')
  export CUR_LOD
  while [ -z $SELECTION ]; do
    [[ "${CUR_LOD}" ]] && CUR_LOD="${CUR_LOD}"/
    local cmd=(dialog --colors \
      --backtitle "$BACKTITLE | Current Folder: $CUR_LOD  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay POS: $vpos$hpos  Resolution: $resolution" \
      --title "$TITLE" \
      --menu "Choose a Videoexitingscreens directory" 20 70 20 )
    local iterator=1
    local offset=-1
    local options=()
    if [ "$(dirname $CUR_LOD)" != "$CUR_LOD" ]; then
      options+=(0)
      options+=("Parent Directory")
      offset=$(($offset+2))
    fi
    options+=($iterator)
    options+=("<Use This Directory>")
    iterator=$(($iterator+1))
    for DIR in $(find "$CUR_LOD" -maxdepth 1 -mindepth 1 -type d | sort); do
      options+=($iterator)
      options+=("$(basename $DIR)")
      iterator=$(($iterator+1))
    done
    choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    case $choice in
      0) CUR_LOD="$(dirname $CUR_LOD)" ;;
      1) SELECTION="$CUR_LOD" ;;
      '') return ;;
      *) CUR_LOD="$CUR_LOD${options[ $((2*choice + $offset )) ]}" ;;
    esac
  done
  [[ "${VID_EXT_SCR}" ]] && VID_EXT_SCR="${VID_EXT_SCR}"
  if [ "$SELECTION" != "$VID_EXT_SCR" ]; then
    echo "Videoexitingscreens directory changed to '$SELECTION'"
    NEW_LOD=$(grep "videoexitingscreens=" "$RUNONEND"|grep -o '".*"')
    export NEW_LOD
    SELECT=$(echo $SELECTION | sed 's:/*$::')
	sed -i -E "s|videoexitingscreens=${NEW_LOD}|videoexitingscreens=\"${SELECT}\"|g" $RUNONEND
  elif [ "$SELECTION" == "$VID_EXT_SCR" ]; then
    echo "Exit directory is already '$SELECTION'"
  else
    return
  fi
  IFS=$OLDIFS
stats_check
}

overlay_fade_out_time() {
oldfadeouttime=$(grep "overlay_fade_out_time = " "$SCRIPT_LOC"|awk '{print $3}')
export oldfadeouttime
fadeouttime=$(dialog \
	--colors \
	--title "Adjust the Fadeout time of the Relay" \
	--inputbox "Input the Relay Fadeout Time:" 8 40 "$oldfadeouttime" 3>&1 1>&2 2>&3 3>&-)
export fadeouttime
if [ $fadeouttime ]; then
perl -p -i -e 's/overlay_fade_out_time = $ENV{oldfadeouttime}/overlay_fade_out_time = $ENV{fadeouttime}/g' $SCRIPT_LOC
else
	return
fi
bgm_check
stats_check
}

controller_menu() {
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "Controller Menu" --title " Controller Menu " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Joystick Selection" \
            2 "Light Gun Aimtrak" \
            3 "light Gun Config" \
            4 "Reset Controllers" \
            5 "Sinden Basic Menu" \
            6 "Xinmo Juyao" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) bash $INSTALL_DIR/scripts/joystick_selection.sh ;;
            2) bash $INSTALL_DIR/scripts/LightGunAimtrak.sh ;;
            3) bash $INSTALL_DIR/scripts/LightGunConf.sh ;;
            4) bash $INSTALL_DIR/scripts/resetcontrollers.sh ;;
            5) bash $INSTALL_DIR/scripts/sinden-menu.sh ;;
            6) bash $INSTALL_DIR/scripts/xinmo-juyao.sh ;;
            *) break ;;
        esac
    done
}

download_select_themesets() {
stats_check
net_check
if [ $NETCHECK = 1 ]; then dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
	dialog  --sleep 1 --title "Themeset Installer Help" --msgbox " 
-------------------------------
   THEMESET INSTALLER HELP
-------------------------------
-What are Themesets? Themesets are a collection of Themes, Music,
-Splashscreens, Exitscreens, Videoloading screens, and Videoexit screens
-that coincide with together and that you can choose between 9 presets.
-You can install more than one." 0 0

	whiptail --clear --title "THEMESET INSTALL MENU" --separate-output \
		--ok-button Install --cancel-button Back \
		--checklist "Choose:" 0 0 0 \
			"1" "Install Carbonite Themeset" off \
			"2" "Install Christmas Themeset" off \
			"3" "Install Halloween Themeset" off \
			"4" "Install Diablos Arcade Themeset" off \
			"5" "Install Neon IBAD Themeset" off \
			"6" "Install Pistolero Themeset" off \
			"7" "Install Pleasure Paradise Themeset" off \
			"8" "Install Stranger Things Themeset" off \
			"9" "Install Supreme Ultra Themeset" off \
			2>/tmp/results
	while read -r choice  
		do
		case $choice in
			1) download_themesets "carbonite" ;;
			2) download_themesets "merryxmas" ;;
			3) download_themesets "halloweenspecial" ;;
			4) download_themesets "devilchromey" ;;
			5) download_themesets "neonibad" ;;
			6) download_themesets "pistolero" ;;
			7) download_themesets "pleasureparadise" ;;
			8) download_themesets "strangerthings" ;;
			9) download_themesets "supremeteam" ;;
			*) ;;
		esac
		done < /tmp/results
fi
}

download_select_music() {
stats_check
net_check
if [ $NETCHECK = 1 ]; then dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
	dialog  --sleep 1 --title "Themeset Installer Help" --msgbox " 
-------------------------------
     MUSIC INSTALLER HELP
-------------------------------
-What is this? A collection of Music from different builds
-that does not have a full Themeset currently in use.
-You can choose between 5 presets of music.
-You can install more than one." 0 0

	whiptail --clear --title "MUSIC INSTALL MENU" --separate-output \
		--ok-button Install --cancel-button Back \
		--checklist "Choose:" 0 0 0 \
			"1" "Install Arcade Music" off \
			"2" "Install Custom Music" off \
			"3" "Install Nostalgia Trip Music" off \
			"4" "Install Ultimate Vs Fighter Music" off \
			"5" "Install Venom Music" off \
			"6" "Install Christmas Music" off \
			"7" "Install Diablos Arcade Music" off \
			"8" "Install Halloween Music" off \
			"9" "Install Neon IBAD Music" off \
			"10" "Install Pistolero Music" off \
			"11" "Install Pleasure Paradise Music" off \
			"12" "Install Stranger Things Music" off \
			"13" "Install Supreme Ultra Music" off \
			2>/tmp/results
	while read -r choice  
		do
		case $choice in
			1) download_bg_music "arcade" ;;
			2) download_bg_music "custom" ;;
			3) download_bg_music "nt" ;;
			4) download_bg_music "uvt" ;;
			5) download_bg_music "venom" ;;
			6) download_theme_music "merryxmas" ;;
			7) download_theme_music "devilchromey" ;;
			8) download_theme_music "halloweenspecial" ;;
			9) download_theme_music "neonibad" ;;
			10) download_theme_music "pistolero" ;;
			11) download_theme_music "pleasureparadise" ;;
			12) download_theme_music "strangerthings" ;;
			13) download_theme_music "supremeteam" ;;
			*) ;;
		esac
		done < /tmp/results
fi
}

download_select_themes() {
stats_check
	dialog  --sleep 1 --title "Themeset Installer Help" --msgbox " 
-------------------------------
   THEMES INSTALLER HELP
-------------------------------
-These are all the themes that TAMO+ uses in script that you can install.
- standalone if you want instead of installing a Themeset
-You can install more than one." 0 0

	whiptail --clear --title "THEMES INSTALL MENU" --separate-output \
		--ok-button Install --cancel-button Back \
		--checklist "Choose:" 0 0 0 \
			"1" "Install Carbonite ES Theme" off \
			"2" "Install Christmas ES Theme" off \
			"3" "Install Halloween ES Theme" off \
			"4" "Install Diablos Arcade ES Theme" off \
			"5" "Install Neon IBAD ES Theme" off \
			"6" "Install Pistolero ES Theme" off \
			"7" "Install Pleasure Paradise ES Theme" off \
			"8" "Install Stranger Things ES Theme" off \
			"9" "Install Supreme Ultra ES Theme" off \
			2>/tmp/results
	while read -r choice  
		do
		case $choice in
			1) download_tamo_themes "carbonite" ;;
			2) download_tamo_themes "merryxmas" ;;
			3) download_tamo_themes "halloweenspecial" ;;
			4) download_tamo_themes "devilchromey" ;;
			5) download_tamo_themes "neonibad" ;;
			6) download_tamo_themes "pistolero" ;;
			7) download_tamo_themes "pleasureparadise" ;;
			8) download_tamo_themes "strangerthings" ;;
			9) download_tamo_themes "supremeteam" ;;
			*) ;;
		esac
		done < /tmp/results
}

fan_control() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "CPU Fan Temperature Control  Current Low $fantempL  Current High $fantempH  GPIO/BCM Pin $fanpin  PWM Frequency $pwmfreq" --title " Temperature Control " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Set Fan Low Temperature" \
            2 "Set Fan High Temperature" \
            3 "Set Fan Idle Speed" \
            4 "Set GPIO/BCM Pin" \
            5 "Set PWM Frequency" \
            6 "Enable/Disable Temperature Script" \
            - "------ Install This First -------" \
            7 "Install Fan Temperature Script" \
            2>&1 > /dev/tty)
        case "$choice" in
            1) set_fan_tempL ;;
            2) set_fan_tempH ;;
            3) set_fan_idle ;;
            4) set_fan_pin ;;
            5) set_pwm_freq ;;
            6) switch_fan_temp ;;
            7) setup_fan_temp ;;
            -) nono ;;
            *) break ;;
        esac
    done
}

set_fan_tempL() {
oldfantempL=$(grep "tempSteps =" "$SETTINGS_DIR/fan_ctrl.py"|(awk '{print $3}')|tr -d '[,]')
oldfantempH=$(grep "tempSteps =" "$SETTINGS_DIR/fan_ctrl.py"|(awk '{print $4}')|tr -d '[,]')
export oldfantempL
export oldfantempH
newfantempL=$(dialog --colors --title "Adjust The Fan Temperature  Current $fantempL" \
	--inputbox "Input The Fan Temperature:" 8 40 "$oldfantempL" 3>&1 1>&2 2>&3 3>&-)
export newfantempL
if [ $newfantempL ]; then
	sed -i -E "s/tempSteps = \[${oldfantempL}, ${oldfantempH}\]/tempSteps = \[${newfantempL}, ${oldfantempH}\]/g" "$SETTINGS_DIR/fan_ctrl.py"
else
	return
fi
stats_check
}

set_fan_tempH() {
oldfantempL=$(grep "tempSteps =" "$SETTINGS_DIR/fan_ctrl.py"|(awk '{print $3}')|tr -d '[,]')
oldfantempH=$(grep "tempSteps =" "$SETTINGS_DIR/fan_ctrl.py"|(awk '{print $4}')|tr -d '[,]')
export oldfantempL
export oldfantempH
newfantempH=$(dialog --colors --title "Adjust The Fan Temperature  Current $fantempH" \
	--inputbox "Input The Fan Temperature:" 8 40 "$oldfantempH" 3>&1 1>&2 2>&3 3>&-)
export newfantempH
if [ $newfantempH ]; then
	sed -i -E "s/tempSteps = \[${oldfantempL}, ${oldfantempH}\]/tempSteps = \[${oldfantempL}, ${newfantempH}\]/g" "$SETTINGS_DIR/fan_ctrl.py"
	fan_restart
else
	return
fi
stats_check
}

set_fan_idle() {
oldfanidle=$(grep "FAN_MIN =" "$SETTINGS_DIR/fan_ctrl.py"|(awk '{print $3}'))
export oldfanidle
newfanidle=$(dialog --colors --title "Change The Fan Idle Speed  Current $fanidle" \
	--inputbox "Input The Fan Idle Speed:" 8 40 "$oldfanidle" 3>&1 1>&2 2>&3 3>&-)
export newfanidle
if [ $newfanidle ]; then
	sed -i -E "s/FAN_MIN = ${oldfanidle}/FAN_MIN = ${newfanidle}]g" "$SETTINGS_DIR/fan_ctrl.py"
	fan_restart
else
	return
fi
stats_check
}

set_fan_pin() {
oldfanpin=$(grep "FAN_PIN =" "$SETTINGS_DIR/fan_ctrl.py"|(awk '{print $3}'))
export oldfanpin
newfanpin=$(dialog --colors --title "Change The Fan GPIO Pin  Current $fanpin" \
	--inputbox "Input The Fan GPIO Pin:" 8 40 "$oldfanpin" 3>&1 1>&2 2>&3 3>&-)
export newfanpin
if [ $newfanpin ]; then
	sed -i -E "s/FAN_PIN = ${oldfanpin}/FAN_PIN = ${newfanpin}]g" "$SETTINGS_DIR/fan_ctrl.py"
	fan_restart
else
	return
fi
stats_check
}

set_pwm_freq() {
oldpwmfreq=$(grep "PWM_FREQ =" "$SETTINGS_DIR/fan_ctrl.py"|(awk '{print $3}'))
export oldpwmfreq
newpwmfreq=$(dialog --colors --title "Change The PWM Frequency Current $pwmfreq" \
	--inputbox "Input The Fan GPIO Pin:" 8 40 "$oldpwmfreq" 3>&1 1>&2 2>&3 3>&-)
export newpwmfreq
if [ $newpwmfreq ]; then
	sed -i -E "s/PWM_FREQ = ${oldpwmfreq}/PWM_FREQ = ${newpwmfreq}]g" "$SETTINGS_DIR/fan_ctrl.py"
	fan_restart
else
	return
fi
stats_check
}

disclaim() {
DISCLAIMER=""
DISCLAIMER="${DISCLAIMER}_______________________________________________________\n\n"
DISCLAIMER="${DISCLAIMER}\n"
DISCLAIMER="${DISCLAIMER}TAMO+: Themes and Music Overlay Plus Script\n\n"
DISCLAIMER="${DISCLAIMER}The background music python and control scripts have been installed on this system.\n"
DISCLAIMER="${DISCLAIMER}This script will play MP3 & OGG files during menu navigation in either Emulation Station or Attract mode.\n"
DISCLAIMER="${DISCLAIMER}A Few subfolders have been created in the $HOME/RetroPie/roms/music directory with a selection of\n"
DISCLAIMER="${DISCLAIMER}different music from various builds by many good build makers.\n"
DISCLAIMER="${DISCLAIMER}The themes you can seltect bewteen are \"halloween\" (Halloween), \"merryxmas\" (Christmas),\n"
DISCLAIMER="${DISCLAIMER}\"strangerthings\" (Stranger Things), \"carbonite\" (Default) and \"devilchromey\" (Diablos Arcade).\n"
DISCLAIMER="${DISCLAIMER}This includes the themes, music, plus game splash, launching/loading, and exit screens.\n"
DISCLAIMER="${DISCLAIMER}Launch a game, the music will stop. Upon exiting out of the game the music will begin playing again.\n"
DISCLAIMER="${DISCLAIMER}This also lets you turn off certain options for BGM.py such as, Enable/Disable the Overlay, Fadeout effect,\n"
DISCLAIMER="${DISCLAIMER}Rounded Corners on Overlays, an option to turn the dashes, or hyphens, with a space on both sides\n"
DISCLAIMER="${DISCLAIMER}\" - \"\n"
DISCLAIMER="${DISCLAIMER}and separate the song title to separate new line(s).\n"
DISCLAIMER="${DISCLAIMER}\n"
DISCLAIMER="${DISCLAIMER}Overlay disappeared when you change resolutions? Set postion to Top-Left so you can see it,\n"
DISCLAIMER="${DISCLAIMER}then set it to desired postition, the overlay is compatible with all resolutions.\n"
DISCLAIMER="${DISCLAIMER}\n"
DISCLAIMER="${DISCLAIMER}https://github.com/ALLRiPPED/tamoplus\n"
DISCLAIMER="${DISCLAIMER}https://github.com/SupremePi/tamoplus\n"
dialog --colors --backtitle "TAMO+ Control Script $ver" \
--title "DISCLAIMER" \
--msgbox "${DISCLAIMER}" 35 110
}

. /home/$currentuser/tamoplus/scripts/tamo-functions

#Auto Updater
net_check
if [ $NETCHECK = 1 ]; then dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
	check_for_usersettings
	if grep 'auto_update_flag=1' "$USER_SETTINGS" > /dev/null 2>&1; then
		cd $INSTALL_DIR
		git remote update
		LAST_UPDATE=`git show --no-notes --format=format:"%H" main | head -n 1`
		LAST_COMMIT=`git show --no-notes --format=format:"%H" origin/main | head -n 1`

		if [ $LAST_COMMIT != $LAST_UPDATE ]; then
			if dialog --stdout --title "Update Availible, Continue Auto-Update?" \
					--backtitle "Continue Auto-Update?" \
					--yesno "Yes: Continue Auto-Update, No: Skip Auto-Update" 7 60; then
				bash $INSTALL_DIR/scripts/updater.sh
				exit 1
			else
				echo "$(tput setaf 2)Skipping Update$(tput setaf 0)"
			fi
		else
			echo "$(tput setaf 2)No updates available$(tput setaf 0)"
		fi
	fi
fi

tamo_main_menu
