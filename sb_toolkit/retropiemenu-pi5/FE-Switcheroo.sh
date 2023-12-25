#!/bin/bash
#
# Description : FRONT-END SWITCHEROO TOOL
# Author      : Supreme Team
# Version     : RASPBERRY PI 5
#
clear

AUTOSTART="/opt/retropie/configs/all/autostart.sh"

###########
#MAIN MENU#
###########

function main_menu() {
    installer_helper
    mode_check
    local choice

    while true; do
        choice=$(dialog --backtitle "RetroPie is Currently Using $md As Your Boot Mode" --title " FRONTENDS SWITCHEROO MENU V 2.0" \
            --ok-label OK --cancel-label EXIT \
            --menu "Which Frontend or Helper Which You Like To Use?" 25 75 20 \
	    + "|=========*FRONTENDS*=========|" \
            1 "Switch Boot Mode To Desktop ( $dp_here )" \
            2 "Switch Boot Mode To Emulationstation ( $es_here )" \
            3 "Switch Boot Mode To Kodi ( $kodi_here )" \
            2>&1 > /dev/tty)

        case "$choice" in
	    +) none ;;
            1) DESKTOP_MODE ;;
            2) EMULATIONSTATION_MODE ;;
            3) KODI_MODE ;;
            *)  break ;;
        esac
    done
}

function DESKTOP_MODE() {
    if [ ! -f /usr/bin/startx ]; then
    install_desktop
else
    if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/startx \#auto/g' $AUTOSTART
    if (dialog --title "  Mode Set!" --yesno "Would You Like To Reboot In Desktop Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into Desktop Mode! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
    sudo sed -i 's/pegasus-fe \#auto/startx \#auto/g' $AUTOSTART
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
    if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/emulationstation \#auto/g' $AUTOSTART
    if (dialog --title "EmulationStation Boot Mode Set!" --yesno "Would You Like To Reboot Into EmulationStation Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into EmulationStation Mode ! $(tput sgr0)"
    sleep 3
    sudo reboot
    else 
    echo -e "$(tput setaf 2)Skipping Heading Back To Main Menu! $(tput sgr0)"
    sleep 3
    quit 2>/dev/null
    fi
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
    sudo sed -i 's/pegasus-fe \#auto/emulationstation \#auto/g' $AUTOSTART
    if (dialog --title "EmulationStation Boot Mode Set!" --yesno "Would You Like To Reboot Into EmulationStation Mode Now?" 0 0 )
    then
    echo -e "$(tput setaf 2)Now Rebooting Pi Into EmulationStation Mode ! $(tput sgr0)"
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
    echo -e "$(tput setaf 2)Now Rebooting Pi Into EmulationStation Mode ! $(tput sgr0)"
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
    echo -e "$(tput setaf 2)Now Rebooting Pi Into EmulationStation Mode ! $(tput sgr0)"
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
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
    sudo sed -i 's/pegasus-fe \#auto/kodi \#auto/g' $AUTOSTART
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
elif grep -q 'startx \#auto' "$AUTOSTART"; then
	md="Desktop Mode"
elif grep -q 'kodi \#auto' "$AUTOSTART"; then
	md="Kodi Mode"
fi
}


main_menu
