#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

infobox= ""
infobox="${infobox}_______________________________________________________\n\n"
infobox="${infobox}\n"
infobox="${infobox}RetroPie GPIO Power Shutdown Utility\n\n"
infobox="${infobox}The GPIO shutdown script has already been installed on this base image.\n"
infobox="${infobox}\n"
infobox="${infobox}This script will allow a momentary push button to power on or power off the Raspberry Pi.\n"
infobox="${infobox}\n"
infobox="${infobox}The script is setup to have the push button wired to GPIO pins 5 and 6.\n"
infobox="${infobox}\n"
infobox="${infobox}One press will shutdown and one press will power back on.\n"
infobox="${infobox}\n"
infobox="${infobox}This script will also work with the RetroFlag Case.\n"
infobox="${infobox}\n\n"

dialog --backtitle "RetroPie GPIO Power" \
--title "RetroPie GPIO Power" \
--msgbox "${infobox}" 25 80



function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Disable GPIO shutdown script" \
            2 "Enable GPIO shutdown script" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) disable_script  ;;
            2) enable_script  ;;
            *)  break ;;
        esac
    done
}


function disable_script() {
dialog --infobox "...processing..." 3 20 ; sleep 2
sudo perl -pi -w -e 's/sudo python3 \/opt\/RetroFlag\/SafeShutdown.py/\#sudo python3 \/opt\/RetroFlag\/SafeShutdown.py/g;' /etc/rc.local
sleep 2
}

function enable_script() {
dialog --infobox "...processing..." 3 20 ; sleep 2
sudo perl -pi -w -e 's/\#sudo python3 \/opt\/RetroFlag\/SafeShutdown.py/sudo python3 \/opt\/RetroFlag\/SafeShutdown.py/g;' /etc/rc.local
sleep 2
}

main_menu

