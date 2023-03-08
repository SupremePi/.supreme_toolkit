#!/bin/bash
# TAMO+ Script
# By Chad "thepitster" Ward https://github.com/ALLRiPPED/
# & The Supreme Team https://github.com/SupremePi/

currentuser=$(whoami) # Check user
. /home/$currentuser/tamoplus/scripts/tamo-functions

if [ ! -d /home/pi/tamoplus ]; then 
echo "Tamo Plus is missing? Will download it now."
curl -sSL https://bit.ly/Install-TAMO | bash
clear
fi

tamoplus_music() {
stats_check
    local choice
    while true; do
        choice=$(dialog --colors --backtitle "TAMO+ Music Settings  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay: $vpos$hpos  Resolution: $resolution" --title " Music Settings " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "Enable/Disable Background Music $bgms" \
            2 "Enable/Disable BGM On-Boot $bgmos" \
            3 "Music Selection $ms" \
            4 "Volume Control $vol" \
            5 "Music Start Delay In Seconds $msd" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) enable_music ;;
            2) enable_musicos ;;
            3) music_select ;;
            4) set_bgm_volume ;;
            5) music_startdelay ;;
            *) break ;;
        esac
    done
}

music_select() {
stats_check
local choice
    while true; do
        choice=$(dialog --colors --backtitle "Select Your Music Choice  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay POS: $vpos$hpos  Resolution: $resolution" --title " Music Selection " \
            --ok-label OK --cancel-label Back \
            --menu "What action would you like to perform?" 25 85 20 \
            1 "Change Music Folder" \
            2 "Disable Music Folder" \
            3 "Enable/Disable Arcade Music" \
            4 "Enable/Disable Custom Music" \
            5 "Enable/Disable Nostalgia Music" \
            6 "Enable/Disable Ultimate Vs Fighter Music" \
            7 "Enable/Disable Venom Music" \
            2>&1 > /dev/tty)
        case "$choice" in
            1) set_music_dir ;;
            2) disable_music_dir ;;
            3) enable_arcade  ;;
            4) enable_custom  ;;
            5) enable_nt  ;;
            6) enable_uvf  ;;
            7) enable_venom  ;;
            *) break ;;
        esac
    done
}

set_music_dir() {
stats_check
  CUR_DIR=""
  CUR_PLY=""
  SELECTION=""
  SELECT=""
  IFS=$'\n'
  local SELECTION
  CUR_DIR=$(grep "musicdir =" "$SCRIPT_LOC" |(awk '{print $3}') | tr -d '"')/
  export CUR_DIR
  while [ -z $SELECTION ]; do
    [[ "${CUR_DIR}" ]] && CUR_DIR="${CUR_DIR}"/
    local cmd=(dialog --colors \
      --backtitle "$BACKTITLE | Current Folder: $CUR_DIR  BGM Status $bgms  Volume: $vol  Theme: $ts  Music: $ms  Overlay POS: $vpos$hpos  Resolution: $resolution" \
      --title "$TITLE" \
      --menu "Choose a music directory" 20 70 20 )
    local iterator=1
    local offset=-1
    local options=()
    if [ "$(dirname $CUR_DIR)" != "$CUR_DIR" ]; then
      options+=(0)
      options+=("Parent Directory")
      offset=$(($offset+2))
    fi
    options+=($iterator)
    options+=("<Use This Directory>")
    iterator=$(($iterator+1))
    for DIR in $(find "$CUR_DIR" -maxdepth 1 -mindepth 1 -type d | sort); do
      options+=($iterator)
      options+=("$(basename $DIR)")
      iterator=$(($iterator+1))
    done
    choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    case $choice in
      0) CUR_DIR="$(dirname $CUR_DIR)" ;;
      1) SELECTION="$CUR_DIR" ;;
      '') return ;;
      *) CUR_DIR="$CUR_DIR${options[ $((2*choice + $offset )) ]}" ;;
    esac
  done
  [[ "${MUSIC_DIR}" ]] && MUSIC_DIR="${MUSIC_DIR}"
  if [ "$SELECTION" != "$MUSIC_DIR" ]; then
    echo "Music directory changed to '$SELECTION'"
    CUR_PLY=$(grep "musicdir =" "$SCRIPT_LOC"|awk '{print $3}')
    export CUR_PLY
    SELECT=$(echo $SELECTION | sed 's:/*$::')
    sed -i -E "s|musicdir = ${CUR_PLY}|musicdir = \"${SELECT}\"|g" $SCRIPT_LOC
    bgm_check
  elif [ "$SELECTION" == "$MUSIC_DIR" ]; then
    echo "Music directory is already '$SELECTION'"
  else
    return
  fi
  IFS=$OLDIFS
bgm_check
stats_check
}

set_bgm_volume() {
  local CUR_VOL
  CUR_VOL=$(grep "maxvolume =" "$SCRIPT_LOC"|awk '{print $3}' | awk '{print $1 * 100}')
  export CUR_VOL
  local NEW_VOL
  NEW_VOL=$(dialog \
	--backtitle "$BACKTITLE" \
	--title "$TITLE" \
	--rangebox "Set volume level (D+/U-): " 0 50 0 100 "$CUR_VOL" \
	2>&1 >/dev/tty)
if [ -z "$NEW_VOL" ] || [ "$NEW_VOL" == "$CUR_VOL" ]; then return; fi;
  echo "BGM volume set to $NEW_VOL%"
  NEW_VOL=$(echo  "$NEW_VOL" | awk '{print $1 / 100}')
  export NEW_VOL
  CUR_VOL=$(echo  "$CUR_VOL" | awk '{print $1 / 100}')
  export CUR_VOL
perl -p -i -e 's/maxvolume = $ENV{CUR_VOL}/maxvolume = $ENV{NEW_VOL}/g' $SCRIPT_LOC
bgm_check
stats_check
}

music_startdelay() {
oldstartdelaytime=$(grep "startdelay = " "$SCRIPT_LOC"|awk '{print $3}')
export oldstartdelaytime
startdelaytime=$(dialog --colors --title "Adjust the Music Start Delay" \
	--inputbox "Input the Start Delay Time:" 8 40 "$oldstartdelaytime" 3>&1 1>&2 2>&3 3>&-)
export startdelaytime
if [ $startdelaytime ]; then
perl -p -i -e 's/startdelay = $ENV{oldstartdelaytime}/startdelay = $ENV{startdelaytime}/g' $SCRIPT_LOC
else
	return
fi
bgm_check
stats_check
}

tamoplus_music
