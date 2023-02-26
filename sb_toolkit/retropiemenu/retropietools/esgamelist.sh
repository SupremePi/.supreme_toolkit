#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

IFS=';'

# Welcome
 dialog --backtitle "Gamelist Cleanup Utility" --title "Emulation Station Gamelist Cleanup Utility" \
    --yesno "\nEmulation Station gamelist utility.\n\nThis utility will perform a cleanup in your Emulation Station gamelist.xml file.\n\nThe cleanup utility will only work on gamelist.xml files located within the roms folder also.\n\nThe cleanup utility will perform an audit on the rom files you have installed versus what is listed in the gamelist.xml file.  It will remove all entries from a gamelist.xml file where there is no matching rom file.  This process will create a curated gamelist.xml file only containg entries for rom files it locates in the particular system rom folder.\n\nFor those systems with large romsets like MAME/FBA, the script will take awhile to run.\n\nYou can monitor it's progress with this file:  /tmp/remove.txt\n\n---You must restart Emulation Station after making these changes---\n\nWARNING: Always make a backup copy of your gamelist.xml and media files before making changes to your system.\n\n\nDo you want to proceed?" \
    35 85 2>&1 > /dev/tty \
    || exit

function main_menu() {
ls /home/pi/RetroPie/roms > /tmp/romfolders

let i=0 # define counting variable
W=() # define working array
while read -r line; do # process file by file
    let i=$i+1
    W+=($i "$line")
done < <(cat /tmp/romfolders)

ROMFLD=$(dialog --title "RetroPie Emulation Station Gamelist Cleanup Utility" --menu "ROM folders - choose the one to clean." 24 80 17 "${W[@]}" 3>&2 2>&1 1>&3)

clear

if [ -z $ROMFLD ]; then
   return
else
dialog --infobox "...processing..." 3 20 ; sleep 2
currentfolder=`sed -n ${ROMFLD}p /tmp/romfolders`
clean_gamelist ${currentfolder}
fi
}

function clean_gamelist() {
  dialog --infobox "...processing..." 3 20 ; sleep 2
  system=$1
  gamelist_dir="/home/pi/RetroPie/roms/${system}"
  original_gamelist="${gamelist_dir}/gamelist.xml"
  clean_gamelist="${gamelist_dir}/gamelist.xml-clean"

  cp "${original_gamelist}" "${original_gamelist}.bkp"
  cat "$original_gamelist" > "$clean_gamelist" 

  while read -r path; do
    full_path="$path"
    [[ "$path" == ./* ]] && full_path="${gamelist_dir}/$path"
    full_path="$(echo "$full_path" | sed 's/&amp;/\&/g')"
    [[ -f "$full_path" ]] && continue

    xmlstarlet ed -L -d "/gameList/game[path=\"$path\"]" "$clean_gamelist"
    echo "The game with <path> = \"$path\" has been removed from xml." >> /tmp/removed.txt
  done < <(xmlstarlet sel -t -v "/gameList/game/path" "$original_gamelist"; echo)

  cp "${clean_gamelist}" "${original_gamelist}"
}



# Main

main_menu
