#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/
#IFS=';'

# Welcome
 dialog --backtitle "Video, Ratio & Resolution" --title "Video, Ratio & Resolution Utility Menu" \
    --yesno "\nVideo, Ratio & Resolution Utility menu.\n\nThis utility will let you choose between various forced screen resolutions and ratio.\n\nTo match your monitor or screen native resolution you can run CEA or DMT option and apply as needed.\n\n*** Keep in mind that any resolution other than 1080p will require relative overlays (if used) or themes. ***\n\n\n\nDo you want to proceed?" \
    20 80 2>&1 > /dev/tty \
    || exit

# Config file path
CONFIG_PATH=/boot/config.txt

# HDMI settings description
HDMI_DESCRIPTION="#uncomment to enable custom HDMI group settings"

declare -a HDMI_SETTINGS_CEA=(
  "hdmi_group=1"
)
declare -a HDMI_SETTINGS_DMT=(
  "hdmi_group=2"
)
function main_menu() {
    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " VIDEO RATIO & RESOLUTION MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Choose your Custom System Ratio Resolution:" 25 75 20 \
            - "*** GENERAL SELECTIONS ***" \
           V1 " - LIST CONNECTED DISPLAY DEVICES " \
		   V2 " - SHOW YOUR HDMI STATUS (Resolution etc.) " \
		   A1 " - SHOW YOUR SUPPORTED AUDIO INFORMATION " \
		  CEA " - SHOW YOUR SUPPORTED MODES FOR THIS GROUP " \
		  DMT " - SHOW YOUR SUPPORTED MODES FOR THIS GROUP " \
			- "" \
			- "*** HDMI PORT [4:3] SELECTIONS ***" \
        1:CEA " - VGA     640x480   60Hz   [4:3] " \
		2:CEA " - 480p    720x480   60Hz   [4:3] " \
		3:CEA " - 576p    720x576   50Hz   [4:3] " \
        4:DMT " - SVGA    800x600   60Hz   [4:3] " \
        5:DMT " - XGA    1024x768   60Hz   [4:3] " \
		6:DMT " - SXGA   1280x960   60Hz   [4:3] " \
            - "" \
            - "*** HDMI PORT [16:9] SELECTIONS ***" \
		7:CEA " - 480p    720x480   60Hz  [16:9] " \
		8:CEA " - 576p    720x576   50Hz  [16:9] " \
		9:CEA " - 720p   1280x720   60Hz  [16:9] " \
	   10:CEA " - 720p   1280x720   50Hz  [16:9] " \
	   11:CEA " - 1080p 1920x1080   60Hz  [16:9] " \
	   12:CEA " - 1080p 1920x1080   50Hz  [16:9] " \
	   13:CEA " - 2160p 3840x2160   60Hz  [16:9] " \
	   14:DMT " - 720p   1280x720   60Hz  [16:9] " \
       15:DMT " - 1080p 1920x1080   60Hz  [16:9] " \
	        - "" \
            - "*** HDMI PORT [x:x] SELECTIONS ***" \
       16:DMT " - SXGA   1280x1024  60Hz   [5:4] " \
       17:DMT " - WXGA+  1440x900   60Hz [16:10] " \
	   18:DMT " - WSXGA+ 1680x1050  60Hz [16:10] " \
	   19:CEA " - 1080p  1920x1080  60Hz [64:27] " \
	   20:CEA " - 1080p  1920x1080  50Hz [64:27] " \
	   21:DMT " - CUSTOM .NOTxSET.  60Hz [xx:xx] " \
	        - "" \
            - "*** SDTV - COMPOSITE VIDEO PORT SELECTIONS ***" \
            - "*** Default values are: NTSC & [4:3] No Change ***" \
       22:STD " - Composite Video Port Mode   JP NTSC " \
       23:STD " - Composite Video Port Mode   PAL " \
       24:STD " - Composite Video Port Mode   Brazil PAL " \
       25:STR " - Composite Video Port Ratio  [14:9] " \
       26:STR " - Composite Video Port Ratio  [16:9] " \
            - "" \
            - "*** DISABLE HDMI SELECTIONS ***" \
       27:ALL " - Disable Any CEA/DMT HDMI or STDTV Setting Applied " \
	               - "" \
            - "*** OVERSCAN SELECTION ***" \
            28 "Enable/Disable Overscan" \
            2>&1 > /dev/tty)
			
        case "$choice" in
           V1) list_dvc ;;
		   V2) hdmi_stat ;;
		   A1) audio_inf ;;
		  CEA) sup_cea ;;
		  DMT) sup_dmt ;;
		1:CEA) enable_vr 1 ;;
        2:CEA) enable_vr 2 ;;
		3:CEA) enable_vr 17 ;;
		4:DMT) enable_vrd 9 ;;
        5:DMT) enable_vrd 16 ;;
        6:DMT) enable_vrd 32 ;;
        7:CEA) enable_vr 3 ;;
		8:CEA) enable_vr 18 ;;
		9:CEA) enable_vr 4 ;;
       10:CEA) enable_vr 19 ;;
       11:CEA) enable_vr 16 ;;
	   12:CEA) enable_vr 31 ;;
	   13:CEA) enable_vr 97 ;;
       14:DMT) enable_vrd 85 ;;
       15:DMT) enable_vrd 82 ;;
	   16:DMT) enable_vrd 35 ;;
	   17:DMT) enable_vrd 47 ;;
	   18:DMT) enable_vrd 58 ;;
	   19:CEA) enable_vr 76 ;;
	   20:CEA) enable_vr 75 ;;
	   21:DMT) enable_vrdcX 87 ;;
       22:STD) enable_sdtvm 1 ;;
       23:STD) enable_sdtvm 2 ;;
       24:STD) enable_sdtvm 3 ;;
       25:STR) enable_sdtvr 2 ;;
       26:STR) enable_sdtvr 3 ;;
       27:ALL) disable_vrALL ;;
	   28) overscan_menu  ;;
	        -) none ;;
            *) break ;;
        esac
    done
}

# List all attached devices
function list_dvc() {
	clear
	/opt/vc/bin/tvservice -l
	echo
	read -n 1 -s -r -p "Press any key to go back..."
	echo
}

# Show HDMI Status
function hdmi_stat() {
	clear
	/opt/vc/bin/tvservice -s
	echo
	read -n 1 -s -r -p "Press any key to go back..."
	echo
}

# Show Supported Audio Information
function audio_inf() {
	clear
	/opt/vc/bin/tvservice -a
	echo
	read -n 1 -s -r -p "Press any key to go back..."
	echo
}

# Supported CEA Modes
function sup_cea() {
	clear
	/opt/vc/bin/tvservice --modes=CEA
	echo
	read -n 1 -s -r -p "Press any key to go back..."
	echo
}

# Supported DMT Modes
function sup_dmt() {
	clear
	/opt/vc/bin/tvservice --modes=DMT
	echo
	read -n 1 -s -r -p "Press any key to go back..."
	echo
}

# Enables a custom standard CEA ratio & resolution.
function enable_vr() {
  #dialog --infobox "...Applying..." 3 20 ; sleep 2
  sudo sed -i "s|^hdmi_mode=.*|hdmi_mode=$1|" "${CONFIG_PATH}";
  sudo sed -i "s|^hdmi_ignore_edid=0xa5000080|hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
  sudo sed -i "s|^hdmi_cvt=|#hdmi_cvtX=|" "${CONFIG_PATH}";
  sudo sed -i "s|#hdmi_mode=.*|hdmi_mode=$1|" "${CONFIG_PATH}";
  sudo sed -i "s|#hdmi_ignore_edid=0xa5000080|hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
  sudo sed -i "s|#hdmi_cvt=|#hdmi_cvtX=|" "${CONFIG_PATH}";
  sudo sed -i "s|^sdtv_mode=|#sdtv_mode=|" "${CONFIG_PATH}";
  sudo sed -i "s|^sdtv_aspect=|#sdtv_aspect=|" "${CONFIG_PATH}";
  	  for val in ${HDMI_SETTINGS_CEA[@]}; do
		if grep -q "#${val}" ${CONFIG_PATH}; then
		  sudo sed -i "s|#${val}|${val}|" "${CONFIG_PATH}";
		fi
	  done
	  for val in ${HDMI_SETTINGS_DMT[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	echo
	read -n 1 -s -r -p "Press any key to reboot"
	echo
	echo "[OK System Will Restart now...]"
	clear
	sudo reboot
}

# Enables a custom standard DMT ratio & resolution.
function enable_vrd() {
  #dialog --infobox "...Applying..." 3 20 ; sleep 2
  sudo sed -i "s|^hdmi_mode=.*|hdmi_mode=$1|" "${CONFIG_PATH}";
  sudo sed -i "s|^hdmi_ignore_edid=0xa5000080|hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
  sudo sed -i "s|^hdmi_cvt=|#hdmi_cvtX=|" "${CONFIG_PATH}";
  sudo sed -i "s|#hdmi_mode=.*|hdmi_mode=$1|" "${CONFIG_PATH}";
  sudo sed -i "s|#hdmi_ignore_edid=0xa5000080|hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
  sudo sed -i "s|#hdmi_cvt=|#hdmi_cvtX=|" "${CONFIG_PATH}";
  sudo sed -i "s|^sdtv_mode=|#sdtv_mode=|" "${CONFIG_PATH}";
  sudo sed -i "s|^sdtv_aspect=|#sdtv_aspect=|" "${CONFIG_PATH}";
  	  for val in ${HDMI_SETTINGS_DMT[@]}; do
		if grep -q "#${val}" ${CONFIG_PATH}; then
		  sudo sed -i "s|#${val}|${val}|" "${CONFIG_PATH}";
		fi
	  done
	  for val in ${HDMI_SETTINGS_CEA[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	echo
	read -n 1 -s -r -p "Press any key to reboot"
	echo
	echo "[OK System Will Restart now...]"
	clear
	sudo reboot
}

# Defines the TV standard used for composite video output over the yellow RCA jack to NTSC or PAL.
function enable_sdtvm() {
  #dialog --infobox "...Applying..." 3 20 ; sleep 2
	sudo sed -i "s|^hdmi_mode=|#hdmi_mode=|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_ignore_edid=0xa5000080|#hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_cvt=|#hdmi_cvtX=|" "${CONFIG_PATH}";
	  for val in ${HDMI_SETTINGS_CEA[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	  for val in ${HDMI_SETTINGS_DMT[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	sudo sed -i "s|^sdtv_mode=.*|sdtv_mode=$1|" "${CONFIG_PATH}";
	sudo sed -i "s|#sdtv_mode=.*|sdtv_mode=$1|" "${CONFIG_PATH}";
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	echo
	read -n 1 -s -r -p "Press any key to reboot"
	echo
	echo "[OK System Will Restart now...]"
	clear
	sudo reboot
}

# Defines the TV standard used for composite video output over the yellow RCA jack to forced ratio either (Default) 4:3 or 16:9.
function enable_sdtvr() {
  #dialog --infobox "...Applying..." 3 20 ; sleep 2
	sudo sed -i "s|^hdmi_mode=|#hdmi_mode=|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_ignore_edid=0xa5000080|#hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_cvt=|#hdmi_cvtX=|" "${CONFIG_PATH}";
	  for val in ${HDMI_SETTINGS_CEA[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	  for val in ${HDMI_SETTINGS_DMT[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	sudo sed -i "s|^sdtv_aspect=.*|sdtv_aspect=$1|" "${CONFIG_PATH}";
	sudo sed -i "s|#sdtv_aspect=.*|sdtv_aspect=$1|" "${CONFIG_PATH}";
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	echo
	read -n 1 -s -r -p "Press any key to reboot"
	echo
	echo "[OK System Will Restart now...]"
	clear
	sudo reboot
}

# Enables a custom non standard DMT ratio & resolution option X Example cvt9 in config.txt
function enable_vrdcX() {
  #dialog --infobox "...Applying..." 3 20 ; sleep 2
	sudo sed -i "s|^hdmi_mode=.*|hdmi_mode=$1|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_ignore_edid=0xa5000080|hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_cvtX=|hdmi_cvt=|" "${CONFIG_PATH}";
	sudo sed -i "s|#hdmi_mode=.*|hdmi_mode=$1|" "${CONFIG_PATH}";
	sudo sed -i "s|#hdmi_ignore_edid=0xa5000080|hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
	sudo sed -i "s|#hdmi_cvtX=|hdmi_cvt=|" "${CONFIG_PATH}";
	sudo sed -i "s|^sdtv_mode=|#sdtv_mode=|" "${CONFIG_PATH}";
	sudo sed -i "s|^sdtv_aspect=|#sdtv_aspect=|" "${CONFIG_PATH}";
	  for val in ${HDMI_SETTINGS_DMT[@]}; do
		if grep -q "#${val}" ${CONFIG_PATH}; then
		  sudo sed -i "s|#${val}|${val}|" "${CONFIG_PATH}";
		fi
	  done
	  for val in ${HDMI_SETTINGS_CEA[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	echo
	read -n 1 -s -r -p "Press any key to reboot"
	echo
	echo "[OK System Will Restart now...]"
	clear
	sudo reboot
}

# Disables ALL custom CEA & DMT or STDTV resolutions & ratio
function disable_vrALL() {
  #dialog --infobox "...Applying..." 3 20 ; sleep 2
	sudo sed -i "s|^hdmi_mode=|#hdmi_mode=|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_ignore_edid=0xa5000080|#hdmi_ignore_edid=0xa5000080|" "${CONFIG_PATH}";
	sudo sed -i "s|^hdmi_cvt=|#hdmi_cvtX=|" "${CONFIG_PATH}";
	sudo sed -i "s|^sdtv_mode=|#sdtv_mode=|" "${CONFIG_PATH}";
    sudo sed -i "s|^sdtv_aspect=|#sdtv_aspect=|" "${CONFIG_PATH}";
	  for val in ${HDMI_SETTINGS_CEA[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	  for val in ${HDMI_SETTINGS_DMT[@]}; do
		sudo sed -i "s|^${val}|#${val}|" "${CONFIG_PATH}";
	  done
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	echo
	read -n 1 -s -r -p "Press any key to reboot"
	echo
	echo "[OK System Will Restart now...]"
	clear
	sudo reboot
}


function overscan_menu() {
# check for other overscan settings
if grep -q '#disable_overscan=0' "/boot/config.txt"; then sudo perl -p -i -e 's/#disable_overscan=0/#disable_overscan=1/g' /boot/config.txt
elif grep -q 'disable_overscan=0' "/boot/config.txt"; then sudo perl -p -i -e 's/disable_overscan=0/#disable_overscan=1/g' /boot/config.txt; fi
if grep -q '#disable_overscan=1' "/boot/config.txt"; then ovscn="Enabled"; ovscn2="Disable"; else ovscn="Disabled"; ovscn2="Enable"; fi

    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Overscan is now $ovscn, What would you like to $ovscn2 it?" 25 75 20 \
            1 "$ovscn2 Overscan " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) overscan_toggle ;;
            *) break ;;
        esac
    done
}

overscan_toggle() {
# check for normal overscan settings
if grep -q '#disable_overscan=1' "/boot/config.txt"; then sudo perl -p -i -e 's/#disable_overscan=1/disable_overscan=1/g' /boot/config.txt
dialog --infobox "...Removing..." 3 20; sleep 2
elif grep -q '#disable_overscan=1' "/boot/config.txt"; then sudo perl -p -i -e 's/disable_overscan=1/#disable_overscan=1/g' /boot/config.txt
dialog --infobox "...Applying..." 3 20; sleep 2; fi

echo "Your Retropie is about to reboot so that the settings take effect!"
sleep 3
sudo reboot
}

main_menu
