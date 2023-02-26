#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "+Start-Amiberry" \
            2 "+Start-DOSBox" \
            3 "+Start-DOSBox-SDL2" \
            4 "+Start-Fuse" \
            5 "+Start-Reicast" \
            6 "+Start-ResidualVM" \
            7 "+Start-ScummVM" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) +Start-Amiberry  ;;
            2) +Start-DOSBox  ;;
            3) +Start-DOSBox-SDL2  ;;
            4) +Start-Fuse  ;;
            5) +Start-Reicast  ;;
            6) +Start-ResidualVM  ;;
            7) +Start-ScummVM  ;;
            *)  break ;;
        esac
    done
}

#-1-#
function +Start-Amiberry() {
if [[ -f "/opt/retropie/emulators/amiberry/amiberry.sh" ]]; then
"/opt/retropie/emulators/amiberry/amiberry.sh"
else
echo "Your System Amiberry Is Not Installed Or Missing."
sleep 3
fi
}

#-2-#
function +Start-DOSBox() {
if [[ -f "/opt/retropie/emulators/dosbox-sdl2/bin/dosbox" ]]; then
[[ ! -n "$(aconnect -o | grep -e TiMidity -e FluidSynth)" ]] && needs_synth="1"

function midi_synth() {
    [[ "$needs_synth" != "1" ]] && return

    case "$1" in
        "start")
            timidity -Os -iAD &
            until [[ -n "$(aconnect -o | grep TiMidity)" ]]; do
                sleep 1
            done
            ;;
        "stop")
            killall timidity
            ;;
        *)
            ;;
    esac
}

params=("$@")
if [[ -z "${params[0]}" ]]; then
    params=(-c "@MOUNT C /home/pi/RetroPie/roms/pc" -c "@C:")
elif [[ "${params[0]}" == *.sh ]]; then
    midi_synth start
    bash "${params[@]}"
    midi_synth stop
    exit
elif [[ "${params[0]}" == *.conf ]]; then
    params=(-userconf -conf "${params[@]}")
else
    params+=(-exit)
fi

midi_synth start
"/opt/retropie/emulators/dosbox/bin/dosbox" "${params[@]}"
midi_synth stop
else
echo "Your System Pc Is Not Installed Or Missing."
sleep 3
fi
}

#-3-#
function +Start-DOSBox-SDL2() {
if [[ -f "/opt/retropie/emulators/dosbox-sdl2/bin/dosbox" ]]; then
[[ ! -n "$(aconnect -o | grep -e TiMidity -e FluidSynth)" ]] && needs_synth="0"

function midi_synth() {
    [[ "$needs_synth" != "1" ]] && return

    case "$1" in
        "start")
            timidity -Os -iAD &
            until [[ -n "$(aconnect -o | grep TiMidity)" ]]; do
                sleep 1
            done
            ;;
        "stop")
            killall timidity
            ;;
        *)
            ;;
    esac
}

params=("$@")
if [[ -z "${params[0]}" ]]; then
    params=(-c "@MOUNT C /home/pi/RetroPie/roms/pc" -c "@C:")
elif [[ "${params[0]}" == *.sh ]]; then
    midi_synth start
    bash "${params[@]}"
    midi_synth stop
    exit
elif [[ "${params[0]}" == *.conf ]]; then
    params=(-userconf -conf "${params[@]}")
else
    params+=(-exit)
fi

midi_synth start
"/opt/retropie/emulators/dosbox-sdl2/bin/dosbox" "${params[@]}"
midi_synth stop
else
echo "Your System Pc Is Not Installed Or Missing."
sleep 3
fi
}

#-4-#
function +Start-Fuse() {
if [[ -f "/opt/retropie/emulators/fuse/bin/fuse" ]]; then
/opt/retropie/emulators/fuse/bin/fuse --machine 128 --full-screen
else
echo "Your System Fuse Is Not Installed Or Missing."
sleep 3
fi
}

#-5-%
function +Start-Reicast() {
if [[ -f "/opt/retropie/emulators/reicast/bin/reicast.sh" ]]; then
/opt/retropie/emulators/reicast/bin/reicast.sh
else
echo "Your System Reicast Is Not Installed Or Missing."
sleep 3
fi
}

#-6-#
function +Start-ResidualVM() {
if [[ -f "/opt/retropie/emulators/residualvm/bin/residualvm" ]]; then
renderer="$1"
[[ -z "$renderer" ]] && renderer="software"
game="$2"
[[ "$game" =~ ^\+ ]] && game=""
pushd "/home/pi/RetroPie/roms/residualvm" >/dev/null
/opt/retropie/emulators/residualvm/bin/residualvm --renderer=$renderer --fullscreen --joystick=0 --extrapath="/opt/retropie/emulators/residualvm/extra" $game
while read id desc; do
    echo "$desc" > "/home/pi/RetroPie/roms/residualvm/$id.rvm"
done < <(/opt/retropie/emulators/residualvm/bin/residualvm --list-targets | tail -n +3)
popd >/dev/null
else
echo "Your System ResidualVM Is Not Installed Or Missing."
sleep 3
fi
}

#-7-#
function +Start-ScummVM() {
if [[ -f "/opt/retropie/emulators/scummvm/bin/scummvm" ]]; then
pkill -STOP mpg123
enablevideolaunch="true"
if [[ $enablevideolaunch == "true" ]]; then
 default="$HOME/RetroPie/videoloadingscreens/default.mp4"
 
  # If condition to check filename with -f switch, f means regular file
 if [[ -f $ifgame ]]; then
     omxplayer "$ifgame" > /dev/null 2>&1
 elif [[ -f $ifsystem ]]; then
      omxplayer "$ifsystem" > /dev/null 2>&1
 elif [[ -f $default ]]; then
    omxplayer "$default" > /dev/null 2>&1
 fi
fi

game="$1"
pushd "/home/pi/RetroPie/roms/scummvm" >/dev/null
/opt/retropie/emulators/scummvm/bin/scummvm --fullscreen --joystick=0 --extrapath="/opt/retropie/emulators/scummvm/extra" $game
while read line; do
    id=($line);
    touch "/home/pi/RetroPie/roms/scummvm/$id.svm"
done < <(/opt/retropie/emulators/scummvm/bin/scummvm --list-targets | tail -n +3)
popd >/dev/null
else
echo "Your System ScummVM( Is Not Installed Or Missing."
sleep 3
fi
}

main_menu
