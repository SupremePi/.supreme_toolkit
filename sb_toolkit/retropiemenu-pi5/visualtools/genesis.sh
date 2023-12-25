#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

infobox= ""
infobox="${infobox}_______________________________________________________\n\n"
infobox="${infobox}\n"
infobox="${infobox}RetroPie Main Menu Swap\n\n"
infobox="${infobox}This script will swap the Sega Genesis and Sega MegaDrive themes to display on the main menu.\n"
infobox="${infobox}\n"
infobox="${infobox}You will need to restart Emulation Station after making the change.\n"

dialog --backtitle "RetroPie Sega Genesis/Megadrive Swap" \
--title "RetroPie Sega Genesis/Megadrive Swap" \
--msgbox "${infobox}" 15 80

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Change to Sega Genesis in ES" \
            2 "Change to Sega Megadrive in ES" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) genesisES ;;
            2) megadriveES  ;;
            *)  break ;;
        esac
    done
}

function genesisES() {
dialog --infobox "...processing..." 3 20 ; sleep 2
sudo cp /etc/emulationstation/es_systems.cfg /etc/emulationstation/es_systems.cfg.bkp
sudo perl -p -i -e 's/<theme>megadrive<\/theme>/<theme>genesis<\/theme>/g' /etc/emulationstation/es_systems.cfg
sudo cp /opt/retropie/configs/all/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.bkp
sudo perl -p -i -e 's/<theme>megadrive<\/theme>/<theme>genesis<\/theme>/g' /opt/retropie/configs/all/emulationstation/es_systems.cfg


}

function megadriveES() {
dialog --infobox "...processing..." 3 20 ; sleep 2
sudo cp /etc/emulationstation/es_systems.cfg /etc/emulationstation/es_systems.cfg.bkp
sudo perl -p -i -e 's/<theme>genesis<\/theme>/<theme>megadrive<\/theme>/g' /etc/emulationstation/es_systems.cfg
sudo cp /opt/retropie/configs/all/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.bkp
sudo perl -p -i -e 's/<theme>genesis<\/theme>/<theme>megadrive<\/theme>/g' /opt/retropie/configs/all/emulationstation/es_systems.cfg
}

main_menu

