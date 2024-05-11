#!/bin/bash
#
# Description : FRONT-END SWITCHEROO TOOL
# Author      : Supreme Team
# Version     : RASPBERRY PI 5
#
clear

AUTOSTART="/opt/retropie/configs/all/autostart.sh"

#################
#MAIN INSTALLERS#
#################

install_attract() {
if (dialog --title "ATTRACT MODE NOT INSTALLED!" --yesno "Would You Like To Install Attract Mode?" 0 0 )
then
        if [ $NETCONNECTED  = 1 ]; then
        dialog  --sleep 1 --title "OFFLINE?" --msgbox " 
        Your Offline. Please Connect To The Internet And Try Again! Now Backing Out To Main Menu!" 0 0 
	quit
	else
        cd $HOME/RetroPie-Setup
        sudo ./retropie_packages.sh attractmode
        echo -e "$(tput setaf 2)Attract Mode Successfully Installed. $(tput sgr0)"
        sleep 3
        ATTRACT_MODE
	fi
else 
        echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
        sleep 3
        quit
fi
}

install_desktop() {
if (dialog --title "PIXEL DESKTOP NOT INSTALLED!" --yesno "Would You Like To Install Pixel Desktop?" 0 0 )
then
        if [ $NETCONNECTED  = 1 ]; then
        dialog  --sleep 1 --title "OFFLINE?" --msgbox " 
        Your Offline. Please Connect To The Internet And Try Again! Now Backing Out To Main Menu!" 0 0 
	quit
	else
        cd $HOME/RetroPie-Setup
        sudo ./retropie_packages.sh raspbiantools lxde
        echo -e "$(tput setaf 2)Pixel Desktop Successfully Installed. $(tput sgr0)"
        sleep 3
        DESKTOP_MODE
	fi
else 
        echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
        sleep 3
        quit
fi
}

install_emulationstation() {
if (dialog --title "EMULATIONSTATION NOT INSTALLED!" --yesno "Would You Like To Install Emulationstation?" 0 0 )
then
        if [ $NETCONNECTED  = 1 ]; then
        dialog  --sleep 1 --title "OFFLINE?" --msgbox " 
        Your Offline. Please Connect To The Internet And Try Again! Now Backing Out To Main Menu!" 0 0 
	quit
	else
        cd $HOME/RetroPie-Setup
        sudo ./retropie_packages.sh emulationstation
        echo -e "$(tput setaf 2)Emulastation Successfully Installed. $(tput sgr0)"
        sleep 3
        EMULATIONSTATION_MODE
	fi
else 
        echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
        sleep 3
        quit
fi
}

install_kodi() {
if (dialog --title "KODI NOT INSTALLED!" --yesno "Would you like to Install kodi?" 0 0 )
then
        if [ $NETCONNECTED  = 1 ]; then
        dialog  --sleep 1 --title "OFFLINE?" --msgbox " 
        Your Offline. Please Connect To The Internet And Try Again! Now Backing Out To Main Menu!" 0 0 
	quit
	else
        cd $HOME/RetroPie-Setup
        sudo ./retropie_packages.sh kodi
        echo -e "$(tput setaf 2)Kodi Successfully Installed. $(tput sgr0)"
        sleep 3
        KODI_MODE
	fi
else 
        echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
        sleep 3
        quit
fi
}

#################
#ATTRACT TOOLS#
#################

function background_music() {
if (dialog --title "BACKGROUND MUSIC!" --yesno "Would You Like To Set BackGround Music OFF For AM? YES is Default" 0 0 )
then
       echo "0" > /opt/retropie/configs/imp/settings/music-startup.flag
       echo "0" > /opt/retropie/configs/imp/settings/startupsong.flag
       echo -e "$(tput setaf 2)Turning BackGround Music Off! $(tput sgr0)"
       sleep 3
else 
        echo "1" > /opt/retropie/configs/imp/settings/music-startup.flag
        echo "1" > /opt/retropie/configs/imp/settings/startupsong.flag
        echo -e "$(tput setaf 2)Turning BackGround Music On! $(tput sgr0)"
        sleep 3
fi
}


function music_playlist_attractmode() {
if (dialog --title "ATTRACT MODE IMP MUSIC PLATLISTS UPDATER!" --yesno "Would You Like To Update Your IMP Music Playlists For AM?" 0 0 )
then
        attract_imp_playlist
else 
        echo -e "$(tput setaf 2)Skipping IMP Music Playlists Update! $(tput sgr0)"
        sleep 3
fi
}

function attract_imp_playlist() {

echo -e "$(tput setaf 2)Now Updating IMP Attract Mode Music Playlists! $(tput sgr0)"
sleep 3

function scanROMdir() {
# Only scan if the Directory exists
if [[ ! -d "$romDIR" ]]; then
	rm /dev/shm/tmp.list > /dev/null 2>&1; rm /dev/shm/tmp.abc > /dev/null 2>&1
else

# Expected attractmode format: romfolder.txt
romLIST=/opt/retropie/configs/all/attractmode/romlists/$(basename "$romDIR").txt
echo '#Name;Title;Emulator;CloneOf;Year;Manufacturer;Category;Players;Rotation;Control;Status;DisplayCount;DisplayType;AltRomname;AltTitle;Extra;Buttons' > $romLIST

# Scan for Directories
rm /dev/shm/tmp.list > /dev/null 2>&1; rm /dev/shm/tmp.abc > /dev/null 2>&1
find "$romDIR" -maxdepth 1 -type d -exec basename {} \; | tail -n +2 >> /dev/shm/tmp.list
find -L "$romDIR" -maxdepth 1 -xtype l -ls -exec basename {} \; | tail -n +2 >> /dev/shm/tmp.list

# Add Directories to romLIST.txt - eg. A-SIDE;# A-SIDE #;@;;;;;;;;;0;;;;;
if [[ -f /dev/shm/tmp.list ]]; then
sort /dev/shm/tmp.list -n > /dev/shm/tmp.abc
while read line; do
	echo ""$line";# "$line" #;@;;;;;;;;;0;;;;;" >> $romLIST
done < /dev/shm/tmp.abc > /dev/null 2>&1
fi

# Scan for mp3 pls m3u
rm /dev/shm/tmp.list > /dev/null 2>&1; rm /dev/shm/tmp.abc > /dev/null 2>&1
for f in "$(find  "$romDIR" -maxdepth 1 -type f -iname "*.mp3" -exec basename {} \; | rev | cut -c 5- | rev)"; do if [[ ! "$f" == '' ]]; then echo "$f" >> /dev/shm/tmp.list; fi; done
for f in "$(find  "$romDIR" -maxdepth 1 -type f -iname "*.pls" -exec basename {} \; | rev | cut -c 5- | rev)"; do if [[ ! "$f" == '' ]]; then echo "$f" >> /dev/shm/tmp.list; fi; done
for f in "$(find  "$romDIR" -maxdepth 1 -type f -iname "*.m3u" -exec basename {} \; | rev | cut -c 5- | rev)"; do if [[ ! "$f" == '' ]]; then echo "$f" >> /dev/shm/tmp.list; fi; done

# Add mp3 pls m3u to romLIST.txt - eg. e1m1;e1m1;A-SIDE;;;;;;;;;;;;;;
if [[ -f /dev/shm/tmp.list ]]; then
sort /dev/shm/tmp.list -n > /dev/shm/tmp.abc
while read line; do
	echo ""$line";"$line";$(basename "$romDIR");;;;;;;;;;;;;;" >> $romLIST
done < /dev/shm/tmp.abc > /dev/null 2>&1
fi

rm /dev/shm/tmp.list > /dev/null 2>&1; rm /dev/shm/tmp.abc > /dev/null 2>&1
fi
}

# Scan ONLY the 0ptional [$1] Argument Directory
if [[ ! "$1" == '' ]]; then
	romDIR="$1"
	if [[ -d "$romDIR" ]]; then
		scanROMdir
		echo INPUT: $romDIR
		echo OUTPUT: $(dirname $romLIST)/$(basename "$romDIR").txt
	else
		echo Folder Does NOT exist!?
		echo INPUT: $romDIR
	fi
	exit 0
fi

# Add [ romDIR=/Full/Path/Directory/ ] you want to scan here followed by [ scanROMdir ] function
romDIR=/home/pi/RetroPie/retropiemenu/imp/music/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/bgm/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/bgm/A-SIDE/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/bgm/B-SIDE/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/_roms_music/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/streams/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/streams/DnBRadio/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/streams/Mp3RadioFM/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/streams/NightrideFM/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/streams/RainwaveCC/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/streams/SLAYRadio/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/streams/SomaFM/
scanROMdir

romDIR=/home/pi/RetroPie/retropiemenu/imp/music/QCDE/
scanROMdir

#echo OUTPUT: $(dirname $romLIST)/'*'.txt

echo -e "$(tput setaf 2)Done! $(tput sgr0)"
sleep 3
}

function es_attractmode() {
if (dialog --title "ATTRACT MODE CONTROLLER UPDATE TOOL!" --yesno "Would You Like To Copy Your ES Controller Input To AM?" 0 0 )
then
        es_at
else 
        echo -e "$(tput setaf 2)Skipping Attract Mode Controller Update Tool! $(tput sgr0)"
        sleep 3
fi
}

function es_at() {
        echo -e "$(tput setaf 2)Now Copying Main Es Controller Input To Attract! $(tput sgr0)"
        sleep 3

rm /tmp/attract_tmp  2>/dev/null
cp /home/pi/.attract/attract.cfg /home/pi/.attract/attract.cfg.bkp

#Read in current values from the Emulation Station es_settings.cfg file

configure=`cat /opt/retropie/configs/all/emulationstation/es_input.cfg |grep 'input name="start"' |cut -f6 -d '"'`
select=`cat /opt/retropie/configs/all/emulationstation/es_input.cfg |grep 'input name="a"' |cut -f6 -d '"'`
back=`cat /opt/retropie/configs/all/emulationstation/es_input.cfg |grep 'input name="b"' |cut -f6 -d '"'`
prev_letter=`cat /opt/retropie/configs/all/emulationstation/es_input.cfg |grep 'input name="pageup"' |cut -f6 -d '"'`
next_letter=`cat /opt/retropie/configs/all/emulationstation/es_input.cfg |grep 'input name="pagedown"' |cut -f6 -d '"'`
add_favourite=`cat /opt/retropie/configs/all/emulationstation/es_input.cfg |grep 'input name="y"' |cut -f6 -d '"'`
edit_game=`cat /opt/retropie/configs/all/emulationstation/es_input.cfg |grep 'input name="select"' |cut -f6 -d '"'`


#Write out the new values into the Attract Mode attract.cfg file

while read line
do
if [[ "${line}" == "input_map" ]]; then
  echo "input_map" >> /tmp/attract_tmp
  echo "configure                 Joy0 Button${configure}" >> /tmp/attract_tmp
  echo "select                    Joy0 Button${select}" >> /tmp/attract_tmp
  echo "back                      Joy0 Button${back}" >> /tmp/attract_tmp
  echo "prev_letter               Joy0 Button${prev_letter}" >> /tmp/attract_tmp
  echo "next_letter               Joy0 Button${next_letter}" >> /tmp/attract_tmp
  echo "add_favourite             Joy0 Button${add_favourite}" >> /tmp/attract_tmp
  echo "edit_game                 Joy0 Button${edit_game}" >> /tmp/attract_tmp
else
  echo "${line}" >> /tmp/attract_tmp
fi
done < /home/pi/.attract/attract.cfg

cp /tmp/attract_tmp /home/pi/.attract/attract.cfg  2>/dev/null
        echo -e "$(tput setaf 2)Done! $(tput sgr0)"
        sleep 3
}

###########
#MAIN MENU#
###########

function main_menu() {
    installer_helper
    mode_check
    local choice

    while true; do
        choice=$(dialog --backtitle "RetroPie is Currently Using $md As Your Boot Mode" --title " FRONTENDS SWITCHEROO MENU V 3.0" \
            --ok-label OK --cancel-label EXIT \
            --menu "Which Frontend or Helper Which You Like To Use?" 25 75 20 \
	    + "|=========*FRONTENDS*=========|" \
	    1 "Switch Boot Mode To Attract Mode ( $at_here )" \
            2 "Switch Boot Mode To Desktop ( $dp_here )" \
            3 "Switch Boot Mode To Emulationstation ( $es_here )" \
            4 "Switch Boot Mode To Kodi ( $kodi_here )" \
	    + "|=========*ATTRACT MODE TOOLS*=========|" \
            5 "Update Attract Mode Controllers To Match ES" \
            6 "Update Attract Mode IMP Music Playlists" \
            7 "Turn Back Ground Music ON/OFF" \
            2>&1 > /dev/tty)

            case "$choice" in
	    +) none ;;
            1) ATTRACT_MODE ;;
            2) DESKTOP_MODE ;;
            3) EMULATIONSTATION_MODE ;;
            4) KODI_MODE ;;
            5) es_attractmode ;;
            6) music_playlist_attractmode ;;
            7) background_music ;;			
            *)  break ;;
        esac
    done
}

function ATTRACT_MODE() {
    if [ ! -d /home/pi/.attract ]; then
    install_attract
else
    echo -e "$(tput setaf 2)Now Starting Attract Mode Quick Setup! $(tput sgr0)"
    sleep 3
    clear
    #perl -p -i -e 's/bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/# bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/g' /opt/retropie/configs/all/autostart.sh
    perl -p -i -e 's/#\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/g' /opt/retropie/configs/all/autostart.sh
    if grep -q 'emulationstation \#auto' "$AUTOSTART"; then
    sudo sed -i 's/emulationstation \#auto/attract \#auto/g' $AUTOSTART
    es_attractmode
    music_playlist_attractmode
    background_music
    if (dialog --title "Attract Mode Now Set!" --yesno "Would You Like To Reboot In Attact Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Attract Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi  
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    sudo sed -i 's/startx \#auto/attract \#auto/g' $AUTOSTART
    es_attractmode
    music_playlist_attractmode
    background_music
    if (dialog --title "Attract Mode Now Set!" --yesno "Would You Like To Reboot In Attact Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Attract Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi  
elif grep -q 'kodi \#auto' "$AUTOSTART"; then
    sudo sed -i 's/kodi \#auto/attract \#auto/g' $AUTOSTART
    es_attractmode
    music_playlist_attractmode
    background_music
    if (dialog --title "Attract Mode Now Set!" --yesno "Would You Like To Reboot In Attact Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Attract Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi  
elif grep -q 'attract \#auto' "$AUTOSTART"; then
    echo -e "$(tput setaf 2)Looks Like Attract Mode Is Already Set! $(tput sgr0)"
    sleep 3
fi
mode_check
fi
}

function DESKTOP_MODE() {
    if [ ! -f /usr/bin/startx ]; then
    install_desktop
else
    echo -e "$(tput setaf 2)Boot Mode Now Set To Desktop! $(tput sgr0)"
    sleep 3
    clear
    #perl -p -i -e 's/bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/# bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/g' /opt/retropie/configs/all/autostart.sh
    perl -p -i -e 's/\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/#\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/g' /opt/retropie/configs/all/autostart.sh
    echo "0" > /opt/retropie/configs/imp/settings/music-startup.flag
    echo "0" > /opt/retropie/configs/imp/settings/startupsong.flag	
    if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/startx \#auto/g' $AUTOSTART
    if (dialog --title "Desktop Boot Mode Set!" --yesno "Would You Like To Reboot In Desktop Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Desktop Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'emulationstation \#auto' "$AUTOSTART"; then
    sudo sed -i 's/emulationstation \#auto/startx \#auto/g' $AUTOSTART
    if (dialog --title "Desktop Boot Mode Set!" --yesno "Would You Like To Reboot In Desktop Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Desktop Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'kodi \#auto' "$AUTOSTART"; then
    sudo sed -i 's/kodi \#auto/startx \#auto/g' $AUTOSTART
    if (dialog --title "Desktop Boot Mode Set!" --yesno "Would You Like To Reboot In Desktop Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Desktop Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    echo -e "$(tput setaf 2)Desktop Mode Already Set! $(tput sgr0)"
    sleep 3
fi
mode_check
fi
}

function EMULATIONSTATION_MODE() {
    if [ ! -d /opt/retropie/configs/all/emulationstation ]; then
    install_emulationstation
else
    echo -e "$(tput setaf 2)Boot Mode Now Set To Emulationstation! $(tput sgr0)"
    sleep 3
    clear
    #perl -p -i -e 's/# bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/g' /opt/retropie/configs/all/autostart.sh
    perl -p -i -e 's/\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/#\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/g' /opt/retropie/configs/all/autostart.sh
    echo "1" > /opt/retropie/configs/imp/settings/music-startup.flag
    echo "1" > /opt/retropie/configs/imp/settings/startupsong.flag	
    if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/emulationstation \#auto/g' $AUTOSTART
    if (dialog --title "EmulationStation Boot Mode Set!" --yesno "Would You Like To Reboot Into EmulationStation Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into EmulationStation Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    sudo sed -i 's/startx \#auto/emulationstation \#auto/g' $AUTOSTART
    if (dialog --title "EmulationStation Boot Mode Set!" --yesno "Would You Like To Reboot Into EmulationStation Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into EmulationStation Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'kodi \#auto' "$AUTOSTART"; then
    sudo sed -i 's/kodi \#auto/emulationstation \#auto/g' $AUTOSTART
    if (dialog --title "EmulationStation Boot Mode Set!" --yesno "Would You Like To Reboot Into EmulationStation Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into EmulationStation Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'emulationstation \#auto' "$AUTOSTART"; then
    echo -e "$(tput setaf 2)EmulationStation Mode Already Set! $(tput sgr0)"
    sleep 3
fi
mode_check
fi
}

function KODI_MODE() {
    if [ ! -f /usr/bin/kodi ]; then
    install_kodi
else
    echo -e "$(tput setaf 2)Boot Mode Now Set To Kodi! $(tput sgr0)"
    sleep 3
    clear
    #perl -p -i -e 's/bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/# bash \/opt\/retropie\/configs\/imp\/boot.sh > \/dev\/null 2>&1 & #auto/g' /opt/retropie/configs/all/autostart.sh
    perl -p -i -e 's/\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/#\/opt\/retropie\/configs\/all\/attractmode\/ambootcheck\/amromcheck.sh/g' /opt/retropie/configs/all/autostart.sh
    echo "0" > /opt/retropie/configs/imp/settings/music-startup.flag
    echo "0" > /opt/retropie/configs/imp/settings/startupsong.flag	
    if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/kodi \#auto/g' $AUTOSTART
    if (dialog --title "Kodi Mode Set!" --yesno "Would You Like To Reboot In Kodi Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Kodi Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'emulationstation \#auto' "$AUTOSTART"; then
   sudo sed -i 's/emulationstation \#auto/kodi \#auto/g' $AUTOSTART
    if (dialog --title "Kodi Mode Set!" --yesno "Would You Like To Reboot In Kodi Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Kodi Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    sudo sed -i 's/startx \#auto/kodi \#auto/g' $AUTOSTART
    if (dialog --title "Kodi Mode Set!" --yesno "Would You Like To Reboot In Kodi Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Kodi Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'kodi \#auto' "$AUTOSTART"; then
    echo -e "$(tput setaf 2)Kodi Mode Already Set! $(tput sgr0)"
    sleep 3
fi
mode_check
fi
}

function installer_helper() {
if [ ! -d /home/pi/.attract ]; then
at_here=MISSING!
else
at_here=INSTALLED!
fi

if [ ! -f /usr/bin/startx ]; then
dp_here=MISSING!
else
dp_here=INSTALLED!
fi

if [ ! -d /opt/retropie/configs/all/emulationstation ]; then
es_here=MISSING!
else
es_here=INSTALLED!
fi

if [ ! -f /usr/bin/kodi ]; then
kodi_here=MISSING!
else
kodi_here=INSTALLED!
fi
}

function mode_check() {
if grep -q 'emulationstation \#auto' "$AUTOSTART"; then
	md="Emulationstation Mode"
elif grep -q 'attract \#auto' "$AUTOSTART"; then
	md="Attract Mode"
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
	md="Pegasus Mode"
elif grep -q 'startx \#auto' "$AUTOSTART"; then
	md="Desktop Mode"
elif grep -q 'kodi \#auto' "$AUTOSTART"; then
	md="Kodi Mode"
fi
}

##############
#-CHECK LIST-#
##############

wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  NETCONNECTED=0
else
  NETCONNECTED=1
fi

main_menu
