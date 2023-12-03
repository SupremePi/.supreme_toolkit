#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/
# Reset all of your ES controller configuration. Similar to EZH Script.

infobox=""
infobox="${infobox}\n"
infobox="${infobox}Complete Controller Configuration Reset Script !\n"
infobox="${infobox}\n"
infobox="${infobox}\n"
infobox="${infobox}\n"
infobox="${infobox}This script will remove all controller profiles from your system, will apply a new clean es_input.cfg file so on your next reboot you will need to configure all.\n"
infobox="${infobox}\n"
infobox="${infobox}I suggest you always setup your controllers in order of preference.\nIf you have dual arcade, for example, first set P1 and P2 etc. If you prefer BT controller to be first start there and then connect your wired ones.\n"
infobox="${infobox}\n"
infobox="${infobox}\n"
infobox="${infobox}\n"


dialog --backtitle "Full Controllers Reset" \
--title "Simpler Controller Reset Script !" \
--msgbox "${infobox}" 35 110

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Are you ready?" 25 75 20 \
            1 "Reset All ES Controller Configs" \
            2 "Reboot" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) reset_ctrls  ;;
            2) reboot  ;;
            *)  break ;;
        esac
    done
}


function reset_ctrls() {
	dialog --infobox "...Fixing..." 3 17 ; sleep 1
	rm /home/pi/.emulationstation/es_input.cfg
	rm /opt/retropie/configs/all/retroarch-joypads/*
	cp /home/pi/.supreme_toolkit/sb_toolkit/es_cfg/es_input.cfg /home/pi/.emulationstation/
	clear
	echo
	echo "[OK DONE!...]"
	echo
	read -n 1 -s -r -p "Press any key to continue."
	echo
	echo "[OK System Will Restart now...]"
	sleep 3
	clear
	sudo reboot
}

function reboot() {
	dialog --infobox "...Rebooting..." 3 20 ; sleep 1
	clear
	sudo reboot
}

main_menu
