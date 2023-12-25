#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

function main_menu() {
	clear
	local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " RETROARCH VISUAL OPTIONS MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Select a RetroArch Options you would like to apply." 25 75 20 \
            - "*** SHADERS SELECTIONS ***" \
            1 " - Disable All Shaders " \
            2 " - Enable All Shaders " \
			- "" \
			- "*** OVERLAY SELECTIONS ***" \
			3 " - Add Or Enable All Preset System Overlays " \
            4 " - Add Or Disable All Preset System Overlays " \
			5 " - Enable A Preset System Overlay " \
            6 " - Disable A Preset System Overlay " \
		    - "" \
			- "*** VIDEO SMOOTH SELECTIONS ***" \
			7 " - Add Or Enable Video Smooth - All Systems " \
            8 " - Add Or Disable Video Smooth - All Systems " \
		    9 " - Enable Video Smooth - Single System " \
           10 " - Disable Video Smooth - Single System " \
		   2>&1 > /dev/tty)

        case "$choice" in
            1) disable_shaders  ;;
            2) enable_shaders  ;;
			3) all_overlay_on  ;;
            4) all_overlay_off  ;;
            5) sys_overlay_on  ;;
            6) sys_overlay_off  ;;
			7) all_v_smooth_on  ;;
            8) all_v_smooth_off  ;;
		    9) v_smooth_sys_on  ;;
           10) v_smooth_sys_off  ;;
			-) none  ;;
            *)  break ;;
        esac
    done
}

function disable_shaders() {
	dialog --infobox "...Removing..." 3 20 ; sleep 2
	mv /opt/retropie/configs/all/retroarch/shaders/ /opt/retropie/configs/all/retroarch/shaders.OFF/
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
}

function enable_shaders() {
	dialog --infobox "...Applying..." 3 20 ; sleep 2
	mv /opt/retropie/configs/all/retroarch/shaders.OFF/ /opt/retropie/configs/all/retroarch/shaders/
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
}

function sys_overlay_on() {
	clear
	echo 
	echo " I will display a list of all systems in configs folder... "
	echo " Keep in mind ONLY RetroArch cores can use overlays. "
	echo " An overlay preset required in the corresponding retroarch.cfg line #6 ... "
	echo
	echo " If you can't see full list. Use below keys to scroll or exit list!"
	echo
	echo "----------------------------------------------------------------------"
	echo " <space>		Display next k lines of text [current screen size]"
	echo " <return>		Display next k lines of text [1]*"
	echo " d			Scroll k lines [current scroll size, initially 11]*"
	echo " q			Exit from more"
	echo "----------------------------------------------------------------------"
	echo
	echo ***PLEASE TYPE THE SYSTEM NAME AS SHOWS IN THE CONFIGS FOLDER***
	echo 
	echo Example: nes
	echo NOT Nes or NES etc...
	echo
	read -n 1 -s -r -p "Press any key to continue..."
	cd /opt/retropie/configs/ 
	echo
	ls -d */ | column | more
	echo
	read -p 'So which system would you like to enable the overlay options?: ' sname
	echo
	if [ -f $sname/retroarch.cfg ]; then 
	find $sname -name "retroarch.cfg" -exec sed -i 's|.*#input_overlay_enable|input_overlay_enable|g; s|.*#input_overlay|input_overlay|g' {} 2>/dev/null \;
	cd $HOME
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	else
	clear
	echo
	echo "This systems does not contain a retroarch.cfg file... Script will go stop!"
	echo
	sleep 2
	fi
}

function sys_overlay_off() {
	clear
	echo 
	echo " I will display a list of all systems in configs folder... "
	echo " Keep in mind ONLY RetroArch cores can use overlays. "
	echo " An overlay preset required in the corresponding retroarch.cfg line #6 ... "
	echo
	echo " If you can't see full list. Use below keys to scroll or exit list!"
	echo
	echo "----------------------------------------------------------------------"
	echo " <space>		Display next k lines of text [current screen size]"
	echo " <return>		Display next k lines of text [1]*"
	echo " d			Scroll k lines [current scroll size, initially 11]*"
	echo " q			Exit from more"
	echo "----------------------------------------------------------------------"
	echo
	echo ***PLEASE TYPE THE SYSTEM NAME AS SHOWS IN THE CONFIGS FOLDER***
	echo 
	echo Example: nes
	echo NOT Nes or NES etc...
	echo
	read -n 1 -s -r -p "Press any key to continue..."
	cd /opt/retropie/configs/ 
	echo
	ls -d */ | column | more
	echo
	read -p 'So which system would you like to disable the overlay options?: ' sname
	echo
	if [ -f $sname/retroarch.cfg ]; then 
	find $sname -name "retroarch.cfg" -exec sed -i 's|^input_overlay_enable|#input_overlay_enable|g; s|^input_overlay|#input_overlay|g' {} 2>/dev/null \;
	cd $HOME
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	else
	clear
	echo
	echo "This systems does not contain a retroarch.cfg file... Script will go stop!"
	echo
	sleep 2
	fi
}

function all_overlay_on() {
	clear
dialog --infobox "APPLYING CHANGES NOW..... Please wait" 5 30 ; sleep 2
CONFIGS_DIR=/opt/retropie/configs
CONFIG_FILENAME=retroarch.cfg
VIDEO_FILE_CONFIG_TRUE="input_overlay_enable = \"true"\"

for d in ${CONFIGS_DIR}//*; do

    system_name=${d##*/}

    if [[ ${system_name} = 'all' ]]; then
      echo "Skipping 'all' config"
      continue
    fi

    echo "Checking System Configs for '${system_name}' ..."
    config_file=${CONFIGS_DIR}/${system_name}/${CONFIG_FILENAME}

    if [[ -f ${config_file} ]]; then
      echo "Found config file: ${config_file}"
    else
      echo "No config file found for ${system_name}"
      continue
    fi
	
    if grep 'input_overlay_enable*' "${config_file}"; then
      echo "Overwriting video file config with '${VIDEO_FILE_CONFIG_TRUE}/${system_name}\"' in ${config_file} ..."
      sed -i "s|input_overlay_enable.*|${VIDEO_FILE_CONFIG_TRUE}|" "${config_file}"
    else
      echo "Writing video file config ${VIDEO_FILE_CONFIG_TRUE}/${system_name} in ${config_file}!"
      echo "" >> "${config_file}"
      echo "${VIDEO_FILE_CONFIG_TRUE}" >> "${config_file}"
    fi
done
echo Video overlay is now on.
sleep 3
}

function all_overlay_off() {
	clear
dialog --infobox "APPLYING CHANGES NOW..... Please wait" 5 30 ; sleep 2
CONFIGS_DIR=/opt/retropie/configs
CONFIG_FILENAME=retroarch.cfg
VIDEO_FILE_CONFIG_TRUE="input_overlay_enable = \"false"\"

for d in ${CONFIGS_DIR}//*; do

    system_name=${d##*/}

    if [[ ${system_name} = 'all' ]]; then
      echo "Skipping 'all' config"
      continue
    fi

    echo "Checking System Configs for '${system_name}' ..."
    config_file=${CONFIGS_DIR}/${system_name}/${CONFIG_FILENAME}

    if [[ -f ${config_file} ]]; then
      echo "Found config file: ${config_file}"
    else
      echo "No config file found for ${system_name}"
      continue
    fi
	
    if grep 'input_overlay_enable*' "${config_file}"; then
      echo "Overwriting video file config with '${VIDEO_FILE_CONFIG_TRUE}/${system_name}\"' in ${config_file} ..."
      sed -i "s|input_overlay_enable.*|${VIDEO_FILE_CONFIG_TRUE}|" "${config_file}"
    else
      echo "Writing video file config ${VIDEO_FILE_CONFIG_TRUE}/${system_name} in ${config_file}!"
      echo "" >> "${config_file}"
      echo "${VIDEO_FILE_CONFIG_TRUE}" >> "${config_file}"
    fi
done
echo Video overlay is now off.
sleep 3
}

function v_smooth_sys_on() {
	clear
	echo 
	echo " I will display a list of all systems in configs folder... "
	echo " Keep in mind ONLY RetroArch cores can use video smooth option. "
	echo " By default is disabled!"
	echo " * TIP *: Disable shader(s) or just for this system."
	echo
	echo " If you can't see full list. Use below keys to scroll or exit list!"
	echo
	echo "----------------------------------------------------------------------"
	echo " <space>		Display next k lines of text [current screen size]"
	echo " <return>		Display next k lines of text [1]*"
	echo " d			Scroll k lines [current scroll size, initially 11]*"
	echo " q			Exit from more"
	echo "----------------------------------------------------------------------"
	echo
	echo ***PLEASE TYPE THE SYSTEM NAME AS SHOWS IN THE CONFIGS FOLDER***
	echo 
	echo Example: nes
	echo NOT Nes or NES etc...
	echo
	read -n 1 -s -r -p "Press any key to continue..."
	cd /opt/retropie/configs/ 
	echo
	ls -d */ | column | more
	echo
	read -p 'So which system would you like to enable the video smooth option?: ' sname
	echo
	if [ -f $sname/retroarch.cfg ]; then 
	find $sname -name "retroarch.cfg" -exec sed -i 's|.*#video_smooth|video_smooth|g;' {} 2>/dev/null \;
	cd $HOME
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	else
	clear
	echo
	echo "This systems does not contain a retroarch.cfg file... Script will go stop!"
	echo
	sleep 2
	fi
}

function v_smooth_sys_off() {
	clear
	echo 
	echo " I will display a list of all systems in configs folder... "
	echo " Keep in mind ONLY RetroArch cores can use video smooth option. "
	echo " * TIP *: Enable your shader(s) or for this system back if you prefer. "
	echo
	echo " If you can't see full list. Use below keys to scroll or exit list!"
	echo
	echo "----------------------------------------------------------------------"
	echo " <space>		Display next k lines of text [current screen size]"
	echo " <return>		Display next k lines of text [1]*"
	echo " d			Scroll k lines [current scroll size, initially 11]*"
	echo " q			Exit from more"
	echo "----------------------------------------------------------------------"
	echo
	echo ***PLEASE TYPE THE SYSTEM NAME AS SHOWS IN THE CONFIGS FOLDER***
	echo 
	echo Example: nes
	echo NOT Nes or NES etc...
	echo
	read -n 1 -s -r -p "Press any key to continue..."
	cd /opt/retropie/configs/ 
	echo
	ls -d */ | column | more
	echo
	read -p 'So which system would you like to disable the video smooth option?: ' sname
	echo
	if [ -f $sname/retroarch.cfg ]; then 
	find $sname -name "retroarch.cfg" -exec sed -i 's|^video_smooth|#video_smooth|g;' {} 2>/dev/null \;
	cd $HOME
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	else
	clear
	echo
	echo "This systems does not contain a retroarch.cfg file... Script will go stop!"
	echo
	sleep 2
	fi
}

function all_v_smooth_on() {
	clear
	dialog --infobox "APPLYING CHANGES NOW..... Please wait" 5 30 ; sleep 2
CONFIGS_DIR=/opt/retropie/configs
CONFIG_FILENAME=retroarch.cfg
VIDEO_FILE_CONFIG_TRUE="video_smooth = \"true"\"

for d in ${CONFIGS_DIR}//*; do

    system_name=${d##*/}

    if [[ ${system_name} = 'all' ]]; then
      echo "Skipping 'all' config"
      continue
    fi

    echo "Checking System Configs for '${system_name}' ..."
    config_file=${CONFIGS_DIR}/${system_name}/${CONFIG_FILENAME}

    if [[ -f ${config_file} ]]; then
      echo "Found config file: ${config_file}"
    else
      echo "No config file found for ${system_name}"
      continue
    fi
	
    if grep 'video_smooth*' "${config_file}"; then
      echo "Overwriting video file config with '${VIDEO_FILE_CONFIG_TRUE}/${system_name}\"' in ${config_file} ..."
      sed -i "s|video_smooth.*|${VIDEO_FILE_CONFIG_TRUE}|" "${config_file}"
    else
      echo "Writing video file config ${VIDEO_FILE_CONFIG_TRUE}/${system_name} in ${config_file}!"
      echo "" >> "${config_file}"
      echo "${VIDEO_FILE_CONFIG_TRUE}" >> "${config_file}"
    fi
done
echo Video smoothing is now on.
sleep 3
}

function all_v_smooth_off() {
	clear
	dialog --infobox "APPLYING CHANGES NOW..... Please wait" 5 30 ; sleep 2
CONFIGS_DIR=/opt/retropie/configs
CONFIG_FILENAME=retroarch.cfg
VIDEO_FILE_CONFIG_FALSE="video_smooth = \"false"\"

for d in ${CONFIGS_DIR}//*; do

    system_name=${d##*/}

    if [[ ${system_name} = 'all' ]]; then
      echo "Skipping 'all' config"
      continue
    fi

    echo "Checking System Configs for '${system_name}' ..."
    config_file=${CONFIGS_DIR}/${system_name}/${CONFIG_FILENAME}

    if [[ -f ${config_file} ]]; then
      echo "Found config file: ${config_file}"
    else
      echo "No config file found for ${system_name}"
      continue
    fi
	
    if grep 'video_smooth*' "${config_file}"; then
      echo "Overwriting video file config with '${VIDEO_FILE_CONFIG_FALSE}/${system_name}\"' in ${config_file} ..."
      sed -i "s|video_smooth.*|${VIDEO_FILE_CONFIG_FALSE}|" "${config_file}"
    else
      echo "Writing video file config ${VIDEO_FILE_CONFIG_FALSE}/${system_name} in ${config_file}!"
      echo "" >> "${config_file}"
      echo "${VIDEO_FILE_CONFIG_FALSE}" >> "${config_file}"
    fi
done
echo Video smoothing is now off.
sleep 3
}

main_menu
