#!/bin/bash

#IFS=';'

# Welcome
 dialog --backtitle "RPC80 SINGLE SAVES SCRIPT" --title " RPC80 Saves Script" \
    --yesno "\nRPC80 SINGLE SAVES SCRIPT.\n\nThis utility will Creates a save directory at ~/RetroPie/saves.\n\n\n\nDo you want to proceed?" \
    20 80 2>&1 > /dev/tty \
    || exit


function main_menu() {
    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " RPC80 SINGLE SAVES DIR OPTIONS MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Based on original RPC80 Saves Script. Let's do it..." 25 75 20 \
            - "*** RPC80 SINGLE SAVES DIR OPTIONS MENU ***" \
           1 " -  Enable Single Saves Directory" \
           2 " -  Revert Single Saves Directory" \
           2>&1 > /dev/tty)

        case "$choice" in
           1) rpc80_svon  ;;
           2) rpc80_svoff  ;;
		   -) none ;;
            *)  break ;;
        esac
    done
}

function rpc80_svon() {
clear
################################################################################
# RPC80 SaveFile Script                                                        #
################################################################################
# Author: RPC80                                                                #
# Date: 2018.05.11                                                             #
################################################################################
# Purpose: Creates a save directory at ~/RetroPie/saves                        #
# and configures all retroarch emulators with their own config files           #
# to store savefiles at ~/RetroPie/saves/{system_name}                         #
# and savestate files at ~/Retropie/saves/{system_name}/states                 #
################################################################################

CONFIGS_DIR=/opt/retropie/configs
CONFIG_FILENAME=retroarch.cfg
SAVES_DIR=~/RetroPie/saves
ROMS_DIR=~/RetroPie/roms

SAVE_FILE_CONFIG="savefile_directory = \"~/RetroPie/saves"
SAVE_STATE_CONFIG="savestate_directory = \"~/RetroPie/saves"

echo "
  ____  ____   ____ ___   ___
 |  _ \|  _ \ / ___( _ ) / _ \\
 | |_) | |_) | |   / _ \| | | |
 |  _ <|  __/| |__| (_) | |_| |
 |_| \_\_|    \____\___/ \___/

"

  # Loop through the configs directory
  for d in ${CONFIGS_DIR}//*; do

      # Get the system/emulator name
      system_name=${d##*/}

      # Skip `all` & `amiga` & symbolic link config folders
      if [[ ${system_name} == 'all' || ${system_name} == 'amiga' || ${system_name} == 'genh' || ${system_name} == 'megh' || ${system_name} == 'moto' || ${system_name} == 'neogeocd' || ${system_name} == 'pce-cd' || ${system_name} == 'snesmsu1' || ${system_name} == 'tg-cd' ]]; then
	    echo "Skipping ${system_name} folder configs"
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

      # Create save file directories
      if [ ! -d $SAVES_DIR ]; then
        echo "Creating master saves file directory ${SAVES_DIR} ..."
        mkdir $SAVES_DIR
        if [ $? -ne 0 ] ; then
          echo "[ERROR] Failed to create save file directory: ${SAVE_DIR}"
          exit 1
        else
          echo "[OK] Created save file directory ${SAVES_DIR}"
        fi
      fi
      echo "Creating save file directory for ${system_name} ..."
      mkdir -p ${SAVES_DIR}/${system_name}
      if [ $? -ne 0 ] ; then
        echo "[ERROR] Failed to create save file directory: ${SAVES_DIR}/${system_name}"
        exit 1
      else
        echo "[OK] Created save file directory ${SAVES_DIR}/${system_name}"
      fi
      mkdir -p ${SAVES_DIR}/${system_name}/states
      if [ $? -ne 0 ] ; then
        echo "[ERROR] Failed to create save file directory: ${SAVES_DIR}/${system_name}/states"
        exit 1
      else
        echo "[OK] Created save file directory ${SAVES_DIR}/${system_name}/states"
      fi

      # Check if savefile & savestate config exists
      if grep -E 'savefile_directory|savestate_directory' "${config_file}"; then
        echo "Overwriting configs..."
        sed -i "s|savefile_directory.*|${SAVE_FILE_CONFIG}/${system_name}\"|" "${config_file}"
		sed -i "s|savestate_directory.*|${SAVE_STATE_CONFIG}/${system_name}/states\"|" "${config_file}"
      else
        echo "Writing save configs...!"
		sed -i '/#include "/i \
savefile_directory = \"~/RetroPie/saves/'${system_name}'\" \
savestate_directory = \"~/RetroPie/saves/'${system_name}'/states\" \
<->' "${config_file}"
	  fi
	  
	  # Move existing saves to the master saves rom directory
	  if [[ ! -d daphne ]]; then
	  find "${ROMS_DIR}/${system_name}" -regextype posix-egrep -regex ".*\.(srm|auto|fs|hi)$" -type f -print0 | xargs -0 mv -t "${SAVES_DIR}/${system_name}/"
	  find "${ROMS_DIR}/${system_name}/states" -regextype posix-egrep -regex ".*\.(state[0-9]|state.auto|state)$" -type f -print0 | xargs -0 mv -t "${SAVES_DIR}/${system_name}/states/"
	  fi	
	  
  done
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
}

function rpc80_svoff() {
	dialog --infobox "...Reverting..." 3 20	; sleep 1
	clear
# Check for the existence of the saves directory
  if [ ! -d "$SAVES_DIR" ]; then
    echo "No save file directory. Exiting."
    break
	#continue
  fi

  # Loop through the configs directory
  for d in ${CONFIGS_DIR}//*; do

    # Get the system/emulator name
    system_name=${d##*/}
	
    # Check for existing config file
    config_file=${CONFIGS_DIR}/${system_name}/${CONFIG_FILENAME}

      if [[ -f ${config_file} ]]; then
        echo "Found config file: ${config_file}"
      else
        echo "No config file found for ${system_name}"
        continue
      fi

	  # Check if savefile & savestate config exists
      if grep -E 'savefile_directory|savestate_directory' "${config_file}"; then
      echo "Removing config entries..."
      #sed -i "s|savefile_directory.*||" "${config_file}"
	  #sed -i "s|savestate_directory.*||" "${config_file}"
	  sed -i '/savefile_directory.*/d' "${config_file}"
	  sed -i '/savestate_directory.*/d' "${config_file}"
	  sed -i '/<->.*/d' "${config_file}"
	  fi
	  #find . -type d \( -name all -o -name amiga \) -prune -false -o -name "/opt/retropie/configs/${system_name}/retroarch.cfg" -exec sed -i '/savefile_directory/d' {} 2>/dev/null \;
	  #find . -type d \( -name all -o -name amiga \) -prune -false -o -name "/opt/retropie/configs/${system_name}/retroarch.cfg" -exec sed -i '/savestate_directory/d' {} 2>/dev/null \;
	  
    # Move existing saves to the systems roms directory
      if [[ ! -d daphne ]]; then
	  find "${SAVES_DIR}/${system_name}" -regextype posix-egrep -regex ".*\.(srm|auto|fs|hi)$" -type f -print0 | xargs -0 mv -t "${ROMS_DIR}/${system_name}/"
	  find "${SAVES_DIR}/${system_name}/states" -regextype posix-egrep -regex ".*\.(state[1-9]|state.auto|state)$" -type f -print0 | xargs -0 mv -t "${ROMS_DIR}/${system_name}/states/"
	  find "${SAVES_DIR}/${system_name}/states" -regextype posix-egrep -regex ".*\.(state[1-9]|state.auto|state)$" -type f -print0 | xargs -0 mv -t "/opt/retropie/configs/all/retroarch/states/"
	  fi
	  
  done
	# Delete system saves saves directory
	rm -rf ~/RetroPie/saves/
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1	
}

main_menu
