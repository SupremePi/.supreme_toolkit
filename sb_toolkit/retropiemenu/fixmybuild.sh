#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

#####################################
#SUPREME LINKS AND TOOLKIT FIX START#
#####################################

. /home/pi/.supreme_toolkit/sb_toolkit/_scripts/supreme-functions
. /home/pi/.supreme_toolkit/sb_toolkit/_scripts/supreme-vars

if [ ! -d /home/pi/.supreme_toolkit ]; then
    echo "OH NO THE TOOLKIT IS MISSING!!! WE WILL TRY AND DOWNLOAD NEW ONE NOW"
    sleep 3 
    net_check
    if [ $NETCHECK = 1 ]; then dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " Offline ... Tool Kit Fix not Availible Please Connect To Internet!" 0 0
    else
	cd /home/pi/
    git clone https://github.com/SupremePi/.supreme_toolkit.git
	clear
	cd $HOME/.supreme_toolkit
	chmod 755 ./
	echo "Will Now Reboot To Save Changes"
	sleep 3 
	sudo reboot
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
infobox="${infobox}SUPREME ULTRA\n" 
             
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
            2 " -  APPS & TWEAKS MENU" \
            3 " -  CLEANUP TOOLS MENU" \
            4 " -  SYSTEM TOOLS MENU" \
	        - "" \
	    5 " -  SUPREME ONLINE TOOLKIT" \
	        - "" \
            6 " -  POWER OFF" \
            7 " -  RESTART" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) supreme_fix  ;;
            2) supreme_apps  ;;
            3) supreme_clean  ;;
            4) supreme_sys  ;;
	    5) supreme_online  ;;
	    6) supreme_off  ;;
            7) supreme_restart  ;;
            -) none ;;
            *)  break ;;
        esac
    done
	clear
}

function supreme_fix() {
	dialog --backtitle "Supreme Toolkit" \
	--title "FIX MY BUILD MENU" \
	
    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " FIX MY BUILD MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Apply the fix(es) you need..." 25 75 20 \
            - "*** FIX SELECTIONS ***" \
	    - "" \
	    1 " -  Fix the Retropie Menu Layout" \
            2 " -  Fix Displayed systems" \
	    3 " -  Restore Applactions Links (Steam,Chromium,Pixel,kodi,ext)" \
            4 " -  Restore Background Music files" \
            5 " -  Restore Slideshow files" \
            6 " -  Reset All RetroPie Controllers" \
            7 " -  Fix-Reset-Clean RetroPie Setup git" \
	    8 " -  64bit support basic script (Pi 4)" \
            9 " -  Fix X11 applications not loading like Chromium" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) fix_menu_layout_rb  ;;
            2) fix_es_layout  ;;
	    3) fix_applications  ;;
            4) fix_music  ;;
            5) fix_slideshow  ;;
            6) fix_control  ;;			
            7) git_rs  ;;
	    8) config_script  ;;
            9) x11_script  ;;
            -) none ;;
            *)  break ;;
        esac
    done
}

function supreme_apps() {
	dialog --backtitle "Supreme Toolkit" \
	--title "APPS & TWEAKS OPTIONS MENU" \
	
    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " APPS & TWEAKS OPTIONS MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Run the application you need..." 25 75 20 \
            - "*** APPS & TWEAKS SELECTIONS ***" \
			- "	" \
		    1 " -  Take HD ScreenShot" \
		    2 " -  RetroArch Main Visual Options (Shaders, Smooth Filter etc)" \
		    3 " -  Hide or Show a System" \
		    4 " -  Skyscraper By Lars Muldjord" \
		    5 " -  Amiberry Compile and Update From GitHub" \
		    6 " -  Auto Amiga Install" \
		    7 " -  UAE Config Maker" \
                    8 " -  Install N64 Tweaks By Easy Hax" \
                    9 " -  Attract Update & Install tool" \
                   10 " -  Vulkan Igalia Driver" \
		   11 " -  Update PiKISS By Jose Cerrejon" \
		   12 " -  Update Pi-Apps By Botspot" \
		   13 " -  Update Bezel Project" \
		   14 " -  Single Saves Directory By RPC80" \
		   15 " -  SD/USB Storage Benchmark" \
			2>&1 > /dev/tty)

        case "$choice" in
            1) prntscr  ;;
            2) ra_options_tool  ;;
	    3) hd_sh_sys  ;;
	    4) skyscraper  ;;
            5) amiberry_git  ;;
            6) auto-amiga-install  ;;
            7) uae-config-maker  ;;
            8) n64-tweaks  ;;			
	    9) attract_updater  ;;
	   10) igalia_vk  ;;
	   11) pikiss_git  ;;
	   12) piapps_git  ;;
           13) update_bezel_project  ;;
	   14) rpc80_saves  ;;
           15) strg_bench  ;;
            -) none ;;
            *)  break ;;
        esac
    done
}

function supreme_clean() {
	dialog --backtitle "Supreme Toolkit" \
	--title "CLEANUP TOOLS OPTIONS MENU" \
	
    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " CLEANUP TOOLS OPTIONS MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Let's do some cleanup..." 25 75 20 \
            - "*** CLEANUP TOOLS SELECTIONS ***" \
	        - "" \
            1 " -  Clean all save, hi, dat etc files in roms folder" \
            2 " -  Clean LastPlayed & PlayCount or Favorites Options" \
            3 " -  Remove ES Auto-gen Gamelists" \
	    4 " -  Clean CLi Commands History" \
            5 " -  Clean Filesystem Cache" \
            2>&1 > /dev/tty)

        case "$choice" in
           1) cl_saves  ;;
           2) cl_xml  ;;
           3) cl_es_gamelist  ;;
           4) cl_cli_hist  ;;
           5) cl_cache  ;;
	       -) none ;;
           *)  break ;;
        esac
    done
}

function supreme_sys() {
	dialog --backtitle "Supreme Toolkit" \
	--title "SYSTEMS OPTIONS MENU" \
	
    local choice
    
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " SYSTEM OPTIONS MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Get to know your System..." 25 75 20 \
            - "*** SYSTEM TOOLS SELECTIONS ***" \
	        - "	" \
            1 " -  Force A Filesystem Check At Next Boot " \
            2 " -  Show Partitions & Space Info" \
	    3 " -  Show Folders Size [home/pi]" \
            4 " -  Show System Free Memory Info" \
            5 " -  Show OS Version & Info" \
            6 " -  System & FW Update Options" \
            7 " -  System Full Info" \
            8 " -  Monitor In Real Time Board Temperature" \
            9 " -  Show CPU Cores Status" \
	       10 " -  Ratio Video Tool Options" \
           2>&1 > /dev/tty)

        case "$choice" in
           1) fschk_bt  ;;
           2) partitions  ;;
           3) fold_sz  ;;
           4) freemem  ;;
           5) os_info  ;;
           6) os_update  ;;
           7) sysinfo  ;;
	   8) temp_rt  ;;
	   9) cores_status  ;;
	  10) ratio_vt  ;;
           -) none ;;
           *)  break ;;
        esac
    done
}

function supreme_online() { 
    bash $sb_toolkit/_scripts/supreme-online-tool.sh
    clear
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

function net_check() {
#-----------NET CHECKER-----------#
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  NETCHECK=0
else
  NETCHECK=1
fi
}

main_menu
