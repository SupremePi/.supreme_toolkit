#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What do you want to apply?" 25 100 25 \
            1 "Set Modules (keyboard needed)" \
            2 "Set OpenBor default controller config (keyboard needed)" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) set-modules  ;;
            2) set-default  ;;
            *) break ;;
        esac
    done
}


function set-modules() {
readonly JOY2KEY_SCRIPT="$HOME/RetroPie-Setup/scriptmodules/helpers.sh"
readonly OPENBOR_ROMDIR="/home/pi/RetroPie/roms/ports/openbor"
[[ -e $JOY2KEY_SCRIPT ]] || (cd /opt/retropie/ports/openbor-v6510-RPi4; ./OpenBOR; kill $$)
sleep 0.5; sudo pkill -f joy2key
source "$JOY2KEY_SCRIPT"
scriptdir="$HOME/RetroPie-Setup"
for file in "$OPENBOR_ROMDIR/"*.[Pp][Aa][Kk]; do
  [[ -e $file ]] || continue
  filename="${file##*/}"; filename="${filename%.*}"
  darray+=("$file" "$filename")
done
if [[ ${#darray[@]} -gt 0 ]]; then
    joy2keyStart; sleep 0.2
    cmd=(dialog --backtitle " OpenBOR - The ultimate 2D gaming engine " --title " Module selection list " --no-tags --stdout --menu "Please select a module from list to get launched:" 16 75 16)
    choices=$("${cmd[@]}" "${darray[@]}")
    joy2keyStop; sleep 0.2
    [[ $choices ]] || exit  
fi

"/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _PORT_ "openbor" "$choices"

}

function set-default() {
dialog --infobox "...Launching now..." 3 20 ; sleep 2
clear

/opt/retropie/supplementary/runcommand/runcommand.sh 0 _PORT_ openbor /home/pi/RetroPie/scripts/default.pak

}

main_menu
