#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

#####################################
#SUPREME LINKS AND TOOLKIT FIX START#
#####################################

if [ -d /home/pi/.supreme_toolkit/sb_toolkit/_scripts/ ]; then
. /home/pi/.supreme_toolkit/sb_toolkit/_scripts/supreme-functions
. /home/pi/.supreme_toolkit/sb_toolkit/_scripts/supreme-vars
fi

if [ ! -d /home/pi/.supreme_toolkit ]; then

dialog  --sleep 1 --title "OH NO!!" --msgbox "OH NO THE TOOLKIT IS MISSING!!! WE WILL TRY AND DOWNLOAD THE LATEST VERSION NOW." 0 0

INTERNET_STATUS="UNKNOWN"
TIMESTAMP=`date +%s`

    ping -c 1 -W 0.7 8.8.4.4 > /dev/null 2>&1
    if [ $? -eq 0 ] ; then
        if [ "$INTERNET_STATUS" != "UP" ]; then
		    cd /home/pi/
            git clone https://github.com/SupremePi/.supreme_toolkit.git
	        clear
	        cd $HOME/.supreme_toolkit
	        chmod 755 ./
			INTERNET_STATUS="UP"
			clear
	        fi	
            else
			dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox "YOUR OFFLINE ... Some Fixes Require The Toolkit To Work!!! But It Was Missing?... When Availible Please Connect To Internet And Downloaded The Lastest Toolkit!" 0 0
            sleep 2
            INTERNET_STATUS="DOWN"
	        clear
    fi
fi	

###################################
#SUPREME LINKS AND TOOLKIT FIX END#
###################################

infobox=""
infobox="${infobox}\n"
infobox="${infobox}This script will fix all your broken configuration to its original state as provided by us!.\n"
infobox="${infobox}\n"
infobox="${infobox}This can happen by updates or manual changes.\n"
infobox="${infobox}\n"
infobox="${infobox}I will use descriptive options for easy reference!\n"
infobox="${infobox}\n"
infobox="${infobox}SUPREME FOR THE PI 5\n" 
             
dialog --backtitle "SUPREME BUILD REPAIR TOOLKIT" \
--title "Supreme Repair ToolKit & More!!!" \
--msgbox "${infobox}" 35 110

function main_menu() {
    local choice
	
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " SUPREME - TOOLKIT " \
            --ok-label OK --cancel-label Exit \
            --menu "$sb_version" 25 75 20 \
            - "*** AVAILABLE TOOLKIT SELECTIONS ***" \
            - "" \
	        1 " -  FIX MY BUILD MENU" \
	        - "" \
     	    2 " -  SUPREME ONLINE TOOLKIT" \
	        - "" \
            3 " -  POWER OFF" \
            4 " -  RESTART" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) fix_menu_pi5  ;; 
	        2) supreme_online  ;;
	        3) supreme_off  ;;
            4) supreme_restart  ;;
            -) none ;;
            *)  break ;;
        esac
    done
	clear
}

function fix_menu_pi5() {
    if [ ! -d /home/pi/.supreme_toolkit ]; then
	dialog --infobox "OH NO THE TOOLKIT IS MISSING!" 3 33; sleep 2;
    else 
    fix_menu_layout_rb_pi5 
fi	
}

function supreme_online() {
    if [ ! -d /home/pi/.supreme_toolkit ]; then
    dialog --infobox "OH NO THE TOOLKIT IS MISSING!" 3 33; sleep 2;
    else 
    bash $sb_toolkit/_scripts/supreme-online-tool.sh
    clear
fi	
}

function supreme_off() {
	dialog --infobox "...Shutting Down..." 3 23 ; sleep 1
	clear
	echo
	echo "[OK System Will Shutdown now...]"
	clear
	sudo shutdown -P now
}

function supreme_restart() {
	dialog --infobox "...Starting..." 3 20 ; sleep 1
	clear
	echo
	echo "[OK System Will Restart now...]"
	clear
	sudo reboot
}

function none() {
	clear
}

main_menu
