#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/
# This script changes marquee dual screen pull folder

infobox=""
infobox="${infobox}______________________________________________________________________________________\n\n"
infobox="${infobox}\n"
infobox="${infobox}Supreme Team Marquee Tool\n\n"
infobox="${infobox}\n"
infobox="${infobox}Please note a reboot may be done after You make a choice.\n"
infobox="${infobox}\n\n"
infobox="${infobox}**AVAILABLE OPTIONS**\n"
infobox="${infobox}Themed Marquee Midea folder located in the roms directory of each system\n"
infobox="${infobox}Marquee Midea folder located in the roms directory of each system\n"
infobox="${infobox}Mixart media Folder located in the roms directory of each system\n"
infobox="${infobox}Wheel midea Folder located in the roms directory of each system\n"
infobox="${infobox}Boxart Midea Folder located in the roms directory of each system\n"
infobox="${infobox}Fix Framebuffer Resolution\n"
infobox="${infobox}Turn Marquee Script ON/OFF\n"
infobox="${infobox}Turn Marquee Script ON/OFF Alternative will hide not suppoted systems\n"
infobox="${infobox}\n"
infobox="${infobox}If a folder is missing for your choice this script will add it for you\n"
infobox="${infobox}\n"


dialog --backtitle "Supreme Team Marquee Tool" \
--title "Marquee Tool By The Supreme Team" \
--msgbox "${infobox}" 35 110

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
			1 "Pull Media from Roms-System-Themed-Marquee folder" \
            2 "Pull Media from Roms-System-Marquee Folder" \
			3 "Pull Media from Roms-System-Mixart Folder" \
            4 "Pull Media from Roms-System-Boxart Folder" \
			5 "Pull Media from Roms-System-Wheel Folder" \
			6 "Fix Framebuffer Resolution" \
			7 "Turn Marquee script on or off" \
			8 "Turn Marquee script on or off Alternative" \
            2>&1 > /dev/tty)

        case "$choice" in
		    1) system-themed-marquee  ;;
		    2) system-marquee  ;;
            3) system-mixar  ;;
            4) system-boxart  ;;
            5) system-wheel  ;;
            6) fix-framebuffer-resolution  ;;
			7) marquee-on-off  ;;
			8) marquee-on-off-alt  ;;
            *)  break ;;
        esac
    done
}

# Make folder system-themed-marquee SUPREME -----------------------------------------------------------------------------------------------------------------------------------
function system-themed-marquee() {
	dialog --infobox "APPLYING CHANGES NOW." 3 25 ; sleep 6
	if [ ! -d /home/pi/Piethemed-marquee3 ]; then
	
if [ ! -d /home/pi/RetroPie/roms/3do/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/3do >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/3do/themed-marquee
  echo themed-marquee folder for 3do was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/3do/themed-marquee /home/pi/PieMarquee2/marquee/3do
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/3do/themed-marquee /home/pi/PieMarquee2/marquee/3do
fi

if [ ! -d /home/pi/RetroPie/roms/ags/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/ags >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ags/themed-marquee
  echo themed-marquee folder for ags was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ags/themed-marquee /home/pi/PieMarquee2/marquee/ags
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ags/themed-marquee /home/pi/PieMarquee2/marquee/ags
fi

if [ ! -d /home/pi/RetroPie/roms/amiga/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/amiga >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga/themed-marquee
  echo themed-marquee folder for amiga was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga/themed-marquee /home/pi/PieMarquee2/marquee/amiga
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga/themed-marquee /home/pi/PieMarquee2/marquee/amiga
fi

if [ ! -d /home/pi/RetroPie/roms/amstradcpc/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/amstradcpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amstradcpc/themed-marquee
  echo themed-marquee folder for amstradcpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amstradcpc/themed-marquee /home/pi/PieMarquee2/marquee/amstradcpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amstradcpc/themed-marquee /home/pi/PieMarquee2/marquee/amstradcpc
fi

if [ ! -d /home/pi/RetroPie/roms/apple2/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/apple2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2/themed-marquee
  echo themed-marquee folder for apple2 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2/themed-marquee /home/pi/PieMarquee2/marquee/apple2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2/themed-marquee /home/pi/PieMarquee2/marquee/apple2
fi

if [ ! -d /home/pi/RetroPie/roms/arcade/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/aracde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcade/themed-marquee
  echo themed-marquee folder for arcade was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcade/themed-marquee /home/pi/PieMarquee2/marquee/arcade
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcade/themed-marquee /home/pi/PieMarquee2/marquee/arcade
fi

if [ ! -d /home/pi/RetroPie/roms/arcadia/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/arcadia >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcadia/themed-marquee
  echo themed-marquee folder for arcadia was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcadia/themed-marquee /home/pi/PieMarquee2/marquee/arcadia
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcadia/themed-marquee /home/pi/PieMarquee2/marquee/arcadia
fi

if [ ! -d /home/pi/RetroPie/roms/atari800/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari800/themed-marquee
  echo themed-marquee folder for atari800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari800/themed-marquee /home/pi/PieMarquee2/marquee/atari800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari800/themed-marquee /home/pi/PieMarquee2/marquee/atari800
fi

if [ ! -d /home/pi/RetroPie/roms/atari2600/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari2600 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari2600/themed-marquee
  echo themed-marquee folder for atari2600 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari2600/themed-marquee /home/pi/PieMarquee2/marquee/atari2600
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari2600/themed-marquee /home/pi/PieMarquee2/marquee/atari2600
fi

if [ ! -d /home/pi/RetroPie/roms/atari5200/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari5200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari5200/themed-marquee
  echo themed-marquee folder for atari5200 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari5200/themed-marquee /home/pi/PieMarquee2/marquee/atari5200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari5200/themed-marquee /home/pi/PieMarquee2/marquee/atari5200
fi

if [ ! -d /home/pi/RetroPie/roms/atari7800/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari7800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari7800/themed-marquee
  echo themed-marquee folder for atari7800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari7800/themed-marquee /home/pi/PieMarquee2/marquee/atari7800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari7800/themed-marquee /home/pi/PieMarquee2/marquee/atari7800
fi

if [ ! -d /home/pi/RetroPie/roms/atarijaguar/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atarijaguar >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarijaguar/themed-marquee
  echo themed-marquee folder for atarijaguar was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarijaguar/themed-marquee /home/pi/PieMarquee2/marquee/atarijaguar
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarijaguar/themed-marquee /home/pi/PieMarquee2/marquee/atarijaguar
fi

if [ ! -d /home/pi/RetroPie/roms/atarilynx/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atarilynx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarilynx/themed-marquee
  echo themed-marquee folder for atarilynx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarilynx/themed-marquee /home/pi/PieMarquee2/marquee/atarilynx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarilynx/themed-marquee /home/pi/PieMarquee2/marquee/atarilynx
fi

if [ ! -d /home/pi/RetroPie/roms/atarist/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atarist >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarist/themed-marquee
  echo themed-marquee folder for atarist was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarist/themed-marquee /home/pi/PieMarquee2/marquee/atarist
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarist/themed-marquee /home/pi/PieMarquee2/marquee/atarist
fi

if [ ! -d /home/pi/RetroPie/roms/atomiswave/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/atomiswave >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atomiswave/themed-marquee
  echo themed-marquee folder for atomiswave was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atomiswave/themed-marquee /home/pi/PieMarquee2/marquee/atomiswave
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atomiswave/themed-marquee /home/pi/PieMarquee2/marquee/atomiswave
fi

if [ ! -d /home/pi/RetroPie/roms/channelf/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/channelf >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/channelf/themed-marquee
  echo themed-marquee folder for channelf was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/channelf/themed-marquee /home/pi/PieMarquee2/marquee/channelf
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/channelf/themed-marquee /home/pi/PieMarquee2/marquee/channelf
fi

if [ ! -d /home/pi/RetroPie/roms/chromium/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/chromium >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/chromium/themed-marquee
  echo themed-marquee folder for chromium was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/chromium/themed-marquee /home/pi/PieMarquee2/marquee/chromium
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/chromium/themed-marquee /home/pi/PieMarquee2/marquee/chromium
fi

if [ ! -d /home/pi/RetroPie/roms/coco/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/coco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coco/themed-marquee
  echo themed-marquee folder for coco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coco/themed-marquee /home/pi/PieMarquee2/marquee/coco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coco/themed-marquee /home/pi/PieMarquee2/marquee/coco
fi

if [ ! -d /home/pi/RetroPie/roms/coleco/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/coleco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coleco/themed-marquee
  echo themed-marquee folder for coleco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coleco/themed-marquee /home/pi/PieMarquee2/marquee/coleco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coleco/themed-marquee /home/pi/PieMarquee2/marquee/coleco
fi

if [ ! -d /home/pi/RetroPie/roms/crvision/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/crvision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/crvision/themed-marquee
  echo themed-marquee folder for crvision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/crvision/themed-marquee /home/pi/PieMarquee2/marquee/crvision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/crvision/themed-marquee /home/pi/PieMarquee2/marquee/crvision
fi

if [ ! -d /home/pi/RetroPie/roms/daphne/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/daphne >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/daphne/themed-marquee
  echo themed-marquee folder for daphne was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/daphne/themed-marquee /home/pi/PieMarquee2/marquee/daphne
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/daphne/themed-marquee /home/pi/PieMarquee2/marquee/daphne
fi

if [ ! -d /home/pi/RetroPie/roms/dragon32/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/dragon32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dragon32/themed-marquee
  echo themed-marquee folder for dragon32 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dragon32/themed-marquee /home/pi/PieMarquee2/marquee/dragon32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dragon32/themed-marquee /home/pi/PieMarquee2/marquee/dragon32
fi

if [ ! -d /home/pi/RetroPie/roms/dreamcast/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/dreamcast >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dreamcast/themed-marquee
  echo themed-marquee folder for dreamcast was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dreamcast/themed-marquee /home/pi/PieMarquee2/marquee/dreamcast
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dreamcast/themed-marquee /home/pi/PieMarquee2/marquee/dreamcast
fi

if [ ! -d /home/pi/RetroPie/roms/gameandwatch/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gameandwatch >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gameandwatch/themed-marquee
  echo themed-marquee folder for gameandwatch was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gameandwatch/themed-marquee /home/pi/PieMarquee2/marquee/gameandwatch
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gameandwatch/themed-marquee /home/pi/PieMarquee2/marquee/gameandwatch
fi

if [ ! -d /home/pi/RetroPie/roms/gamegear/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gamegear >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamegear/themed-marquee
  echo themed-marquee folder for gamegear was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamegear/themed-marquee /home/pi/PieMarquee2/marquee/gamegear
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamegear/themed-marquee /home/pi/PieMarquee2/marquee/gamegear
fi

if [ ! -d /home/pi/RetroPie/roms/gb/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gb/themed-marquee
  echo themed-marquee folder for gb was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gb/themed-marquee /home/pi/PieMarquee2/marquee/gb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gb/themed-marquee /home/pi/PieMarquee2/marquee/gb
fi

if [ ! -d /home/pi/RetroPie/roms/gba/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gba/themed-marquee
  echo themed-marquee folder for gba was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gba/themed-marquee /home/pi/PieMarquee2/marquee/gba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gba/themed-marquee /home/pi/PieMarquee2/marquee/gba
fi

if [ ! -d /home/pi/RetroPie/roms/gbc/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbc/themed-marquee
  echo themed-marquee folder for gbc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbc/themed-marquee /home/pi/PieMarquee2/marquee/gbc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbc/themed-marquee /home/pi/PieMarquee2/marquee/gbc
fi

if [ ! -d /home/pi/RetroPie/roms/intellivision/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/intellivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/intellivision/themed-marquee
  echo themed-marquee folder for intellivision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/intellivision/themed-marquee /home/pi/PieMarquee2/marquee/intellivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/intellivision/themed-marquee /home/pi/PieMarquee2/marquee/intellivision
fi

if [ ! -d /home/pi/RetroPie/roms/kodi/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/kodi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/kodi/themed-marquee
  echo themed-marquee folder for kodi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/kodi/themed-marquee /home/pi/PieMarquee2/marquee/kodi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/kodi/themed-marquee /home/pi/PieMarquee2/marquee/kodi
fi

if [ ! -d /home/pi/RetroPie/roms/love/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/love >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/love/themed-marquee
  echo themed-marquee folder for love was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/love/themed-marquee /home/pi/PieMarquee2/marquee/love
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/love/themed-marquee /home/pi/PieMarquee2/marquee/love
fi

if [ ! -d /home/pi/RetroPie/roms/macintosh/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/macintosh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/macintosh/themed-marquee
  echo themed-marquee folder for macintosh was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/macintosh/themed-marquee /home/pi/PieMarquee2/marquee/macintosh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/macintosh/themed-marquee /home/pi/PieMarquee2/marquee/macintosh
fi

if [ ! -d /home/pi/RetroPie/roms/mame-advmame/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame-advmame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-advmame/themed-marquee
  echo themed-marquee folder for mame-advmame was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-advmame/themed-marquee /home/pi/PieMarquee2/marquee/mame-advmame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-advmame/themed-marquee /home/pi/PieMarquee2/marquee/mame-advmame
fi

if [ ! -d /home/pi/RetroPie/roms/mame-libretro/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame-libretro >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-libretro/themed-marquee
  echo themed-marquee folder for mame-libretro was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-libretro/themed-marquee /home/pi/PieMarquee2/marquee/mame-libretro
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-libretro/themed-marquee /home/pi/PieMarquee2/marquee/mame-libretro
fi

if [ ! -d /home/pi/RetroPie/roms/mame-mame4all/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame-mame4all >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-mame4all/themed-marquee
  echo themed-marquee folder for mame-mame4all was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-mame4all/themed-marquee /home/pi/PieMarquee2/marquee/mame-mame4all
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-mame4all/themed-marquee /home/pi/PieMarquee2/marquee/mame-mame4all
fi

if [ ! -d /home/pi/RetroPie/roms/mastersystem/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mastersystem >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mastersystem/themed-marquee
  echo themed-marquee folder for mastersystem was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mastersystem/themed-marquee /home/pi/PieMarquee2/marquee/mastersystem
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mastersystem/themed-marquee /home/pi/PieMarquee2/marquee/mastersystem
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/megadrive >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive/themed-marquee
  echo themed-marquee folder for megadrive was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive/themed-marquee /home/pi/PieMarquee2/marquee/megadrive
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive/themed-marquee /home/pi/PieMarquee2/marquee/megadrive
fi

if [ ! -d /home/pi/RetroPie/roms/msx/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/msx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx/themed-marquee
  echo themed-marquee folder for msx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx/themed-marquee /home/pi/PieMarquee2/marquee/msx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx/themed-marquee /home/pi/PieMarquee2/marquee/msx
fi

if [ ! -d /home/pi/RetroPie/roms/n64/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/n64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64/themed-marquee
  echo themed-marquee folder for n64 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64/themed-marquee /home/pi/PieMarquee2/marquee/n64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64/themed-marquee /home/pi/PieMarquee2/marquee/n64
fi

if [ ! -d /home/pi/RetroPie/roms/naomi/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/naomi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/naomi/themed-marquee
  echo themed-marquee folder for naomi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/naomi/themed-marquee /home/pi/PieMarquee2/marquee/naomi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/themed-marquee /home/pi/PieMarquee2/marquee/naomi
fi

if [ ! -d /home/pi/RetroPie/roms/nds/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/nds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nds/themed-marquee
  echo themed-marquee folder for nds was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nds/themed-marquee /home/pi/PieMarquee2/marquee/nds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/themed-marquee /home/pi/PieMarquee2/marquee/nds
fi

if [ ! -d /home/pi/RetroPie/roms/neogeo/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/neogeo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeo/themed-marquee
  echo themed-marquee folder for neogeo was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeo/themed-marquee /home/pi/PieMarquee2/marquee/neogeo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeo/themed-marquee /home/pi/PieMarquee2/marquee/neogeo
fi

if [ ! -d /home/pi/RetroPie/roms/neogeocd/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/neogeocd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeocd/themed-marquee
  echo themed-marquee folder for neogeocd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeocd/themed-marquee /home/pi/PieMarquee2/marquee/neogeocd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeocd/themed-marquee /home/pi/PieMarquee2/marquee/neogeocd
fi

if [ ! -d /home/pi/RetroPie/roms/nes/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/nes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nes/themed-marquee
  echo themed-marquee folder for nes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nes/themed-marquee /home/pi/PieMarquee2/marquee/nes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nes/themed-marquee /home/pi/PieMarquee2/marquee/nes
fi

if [ ! -d /home/pi/RetroPie/roms/ngp/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/ngp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngp/themed-marquee
  echo themed-marquee folder for ngp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngp/themed-marquee /home/pi/PieMarquee2/marquee/ngp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngp/themed-marquee /home/pi/PieMarquee2/marquee/ngp
fi

if [ ! -d /home/pi/RetroPie/roms/ngpc/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/ngpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngpc/themed-marquee
  echo themed-marquee folder for ngpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngpc/themed-marquee /home/pi/PieMarquee2/marquee/ngpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngpc/themed-marquee /home/pi/PieMarquee2/marquee/ngpc
fi

if [ ! -d /home/pi/RetroPie/roms/openbor/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/openbor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/openbor/themed-marquee
  echo themed-marquee folder for openbor was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/openbor/themed-marquee /home/pi/PieMarquee2/marquee/openbor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/openbor/themed-marquee /home/pi/PieMarquee2/marquee/openbor
fi

if [ ! -d /home/pi/RetroPie/roms/oric/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/oric >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/oric/themed-marquee
  echo themed-marquee folder for oric was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/oric/themed-marquee /home/pi/PieMarquee2/marquee/oric
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/oric/themed-marquee /home/pi/PieMarquee2/marquee/oric
fi

if [ ! -d /home/pi/RetroPie/roms/pc/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc/themed-marquee
  echo themed-marquee folder for pc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc/themed-marquee /home/pi/PieMarquee2/marquee/pc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc/themed-marquee /home/pi/PieMarquee2/marquee/pc
fi

if [ ! -d /home/pi/RetroPie/roms/pc88/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pc88 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc88/themed-marquee
  echo themed-marquee folder for pc88 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc88/themed-marquee /home/pi/PieMarquee2/marquee/pc88
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc88/themed-marquee /home/pi/PieMarquee2/marquee/pc88
fi

if [ ! -d /home/pi/RetroPie/roms/pc98/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pc98 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc98/themed-marquee
  echo themed-marquee folder for pc98 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc98/themed-marquee /home/pi/PieMarquee2/marquee/pc98
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc98/themed-marquee /home/pi/PieMarquee2/marquee/pc98
fi

if [ ! -d /home/pi/RetroPie/roms/pcengine/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pcengine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcengine/themed-marquee
  echo themed-marquee folder for pcengine was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcengine/themed-marquee /home/pi/PieMarquee2/marquee/pcengine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcengine/themed-marquee /home/pi/PieMarquee2/marquee/pcengine
fi

if [ ! -d /home/pi/RetroPie/roms/pcenginecd/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pcenginecd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcenginecd/themed-marquee
  echo themed-marquee folder for pcenginecd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcenginecd/themed-marquee /home/pi/PieMarquee2/marquee/pcenginecd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcenginecd/themed-marquee /home/pi/PieMarquee2/marquee/pcenginecd
fi

if [ ! -d /home/pi/RetroPie/roms/pcfx/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pcfx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcfx/themed-marquee
  echo themed-marquee folder for pcfx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcfx/themed-marquee /home/pi/PieMarquee2/marquee/pcfx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcfx/themed-marquee /home/pi/PieMarquee2/marquee/pcfx
fi

if [ ! -d /home/pi/RetroPie/roms/.supremeteammarquee ]; then
  mkdir /home/pi/RetroPie/roms/.supremeteammarquee >/dev/null 2>&1
  sleep 1
fi

if [ ! -d /home/pi/RetroPie/roms/pixel/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pixel >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pixel/themed-marquee
  echo themed-marquee folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pixel/themed-marquee /home/pi/PieMarquee2/marquee/pixel
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pixel/themed-marquee /home/pi/PieMarquee2/marquee/pixel
fi

if [ ! -d /home/pi/RetroPie/roms/pokemini/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pokemini >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pokemini/themed-marquee
  echo themed-marquee folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pokemini/themed-marquee /home/pi/PieMarquee2/marquee/pokemini
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pokemini/themed-marquee /home/pi/PieMarquee2/marquee/pokemini
fi

if [ ! -d /home/pi/RetroPie/roms/ports/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/ports >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ports/themed-marquee
  echo themed-marquee folder for ports was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ports/themed-marquee /home/pi/PieMarquee2/marquee/ports
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ports/themed-marquee /home/pi/PieMarquee2/marquee/ports
fi

if [ ! -d /home/pi/RetroPie/roms/power/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/power >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/power/themed-marquee
  echo themed-marquee folder for power was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/power/themed-marquee /home/pi/PieMarquee2/marquee/power
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/power/themed-marquee /home/pi/PieMarquee2/marquee/power
fi

if [ ! -d /home/pi/RetroPie/roms/psp/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/psp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp/themed-marquee
  echo themed-marquee folder for psp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp/themed-marquee /home/pi/PieMarquee2/marquee/psp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp/themed-marquee /home/pi/PieMarquee2/marquee/psp
fi

if [ ! -d /home/pi/RetroPie/roms/psx/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/psx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psx/themed-marquee
  echo themed-marquee folder for psx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psx/themed-marquee /home/pi/PieMarquee2/marquee/psx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psx/themed-marquee /home/pi/PieMarquee2/marquee/psx
fi

if [ ! -d /home/pi/RetroPie/roms/residualvm/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/residualvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/residualvm/themed-marquee
  echo themed-marquee folder for residualvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/residualvm/themed-marquee /home/pi/PieMarquee2/marquee/residualvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/residualvm/themed-marquee /home/pi/PieMarquee2/marquee/residualvm
fi

if [ ! -d /home/pi/RetroPie/roms/samcoupe/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/samcoupe >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/samcoupe/themed-marquee
  echo themed-marquee folder for samcoupe was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/samcoupe/themed-marquee /home/pi/PieMarquee2/marquee/samcoupe
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/samcoupe/themed-marquee /home/pi/PieMarquee2/marquee/samcoupe
fi

if [ ! -d /home/pi/RetroPie/roms/saturn/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/saturn >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn/themed-marquee
  echo themed-marquee folder for saturn was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn/themed-marquee /home/pi/PieMarquee2/marquee/saturn
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn/themed-marquee /home/pi/PieMarquee2/marquee/saturn
fi

if [ ! -d /home/pi/RetroPie/roms/scummvm/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/scummvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scummvm/themed-marquee
  echo themed-marquee folder for scummvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scummvm/themed-marquee /home/pi/PieMarquee2/marquee/scummvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scummvm/themed-marquee /home/pi/PieMarquee2/marquee/scummvm
fi

if [ ! -d /home/pi/RetroPie/roms/sega32x/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/sega32x >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sega32x/themed-marquee
  echo themed-marquee folder for sega32x was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sega32x/themed-marquee /home/pi/PieMarquee2/marquee/sega32x
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sega32x/themed-marquee /home/pi/PieMarquee2/marquee/sega32x
fi

if [ ! -d /home/pi/RetroPie/roms/segacd/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/segacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/segacd/themed-marquee
  echo themed-marquee folder for segacd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/segacd/themed-marquee /home/pi/PieMarquee2/marquee/segacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/segacd/themed-marquee /home/pi/PieMarquee2/marquee/segacd
fi

if [ ! -d /home/pi/RetroPie/roms/sg-1000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/sg-1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sg-1000/themed-marquee
  echo themed-marquee folder for sg-1000 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sg-1000/themed-marquee /home/pi/PieMarquee2/marquee/sg-1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sg-1000/themed-marquee /home/pi/PieMarquee2/marquee/sg-1000
fi

if [ ! -d /home/pi/RetroPie/roms/snes/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/snes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snes/themed-marquee
  echo themed-marquee folder for snes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snes/themed-marquee /home/pi/PieMarquee2/marquee/snes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snes/themed-marquee /home/pi/PieMarquee2/marquee/snes
fi

if [ ! -d /home/pi/RetroPie/roms/snesmsu1/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/snesmsu1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesmsu1/themed-marquee
  echo themed-marquee folder for snesmsu1 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesmsu1/themed-marquee /home/pi/PieMarquee2/marquee/snesmsu1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesmsu1/themed-marquee /home/pi/PieMarquee2/marquee/snesmsu1
fi

if [ ! -d /home/pi/RetroPie/roms/solarus/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/solarus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/solarus/themed-marquee
  echo themed-marquee folder for solarus was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/solarus/themed-marquee /home/pi/PieMarquee2/marquee/solarus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/solarus/themed-marquee /home/pi/PieMarquee2/marquee/solarus
fi

if [ ! -d /home/pi/RetroPie/roms/steam/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/steam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/steam/themed-marquee
  echo themed-marquee folder for steam was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/steam/themed-marquee /home/pi/PieMarquee2/marquee/steam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/steam/themed-marquee /home/pi/PieMarquee2/marquee/steam
fi

if [ ! -d /home/pi/RetroPie/roms/stratagus/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/stratagus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/stratagus/themed-marquee
  echo themed-marquee folder for strataguswas not found will now add !
  ln -sfn /home/pi/RetroPie/roms/stratagus/themed-marquee /home/pi/PieMarquee2/marquee/stratagus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/stratagus/themed-marquee /home/pi/PieMarquee2/marquee/stratagus
fi

if [ ! -d /home/pi/RetroPie/roms/tg16/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/tg16 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16/themed-marquee
  echo themed-marquee folder for tg16 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16/themed-marquee /home/pi/PieMarquee2/marquee/tg16
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16/themed-marquee /home/pi/PieMarquee2/marquee/tg16
fi

if [ ! -d /home/pi/RetroPie/roms/tg16cd/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/tg16cd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16cd/themed-marquee
  echo themed-marquee folder for tg16cd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16cd/themed-marquee /home/pi/PieMarquee2/marquee/tg16cd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16cd/themed-marquee /home/pi/PieMarquee2/marquee/tg16cd
fi

if [ ! -d /home/pi/RetroPie/roms/ti99/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/ti99 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ti99/themed-marquee
  echo themed-marquee folder for ti99 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ti99/themed-marquee /home/pi/PieMarquee2/marquee/ti99
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ti99/themed-marquee /home/pi/PieMarquee2/marquee/ti99
fi

if [ ! -d /home/pi/RetroPie/roms/trs-80/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/trs-80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/trs-80/themed-marquee
  echo themed-marquee folder for trs-80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/trs-80/themed-marquee /home/pi/PieMarquee2/marquee/trs-80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/trs-80/themed-marquee /home/pi/PieMarquee2/marquee/trs-80
fi

if [ ! -d /home/pi/RetroPie/roms/vectrex/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/vectrex >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vectrex/themed-marquee
  echo themed-marquee folder for vectrex not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vectrex/themed-marquee /home/pi/PieMarquee2/marquee/vectrex
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vectrex/themed-marquee /home/pi/PieMarquee2/marquee/vectrex
fi

if [ ! -d /home/pi/RetroPie/roms/videopac/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/videopac >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/videopac/themed-marquee
  echo themed-marquee folder for videopac not found will now add !
  ln -sfn /home/pi/RetroPie/roms/videopac/themed-marquee /home/pi/PieMarquee2/marquee/videopac
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/videopac/themed-marquee /home/pi/PieMarquee2/marquee/videopac
fi

if [ ! -d /home/pi/RetroPie/roms/virtualboy/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/virtualboy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/virtualboy/themed-marquee
  echo themed-marquee folder for virtualboy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/virtualboy/themed-marquee /home/pi/PieMarquee2/marquee/virtualboy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/virtualboy/themed-marquee /home/pi/PieMarquee2/marquee/virtualboy
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswan/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/wonderswan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswan/themed-marquee
  echo themed-marquee folder for wonderswan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswan/themed-marquee /home/pi/PieMarquee2/marquee/wonderswan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswan/themed-marquee /home/pi/PieMarquee2/marquee/wonderswan
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswancolor/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/wonderswancolor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswancolor/themed-marquee
  echo themed-marquee folder for wonderswancolor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswancolor/themed-marquee /home/pi/PieMarquee2/marquee/wonderswancolor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswancolor/themed-marquee /home/pi/PieMarquee2/marquee/wonderswancolor
fi

if [ ! -d /home/pi/RetroPie/roms/x1/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/x1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x1/themed-marquee
  echo themed-marquee folder for x1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x1/themed-marquee /home/pi/PieMarquee2/marquee/x1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x1/themed-marquee /home/pi/PieMarquee2/marquee/x1
fi

if [ ! -d /home/pi/RetroPie/roms/x68000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/x68000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x68000/themed-marquee
  echo themed-marquee folder for x68000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x68000/themed-marquee /home/pi/PieMarquee2/marquee/x68000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x68000/themed-marquee /home/pi/PieMarquee2/marquee/x68000
fi

if [ ! -d /home/pi/RetroPie/roms/zmachine/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/zmachine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zmachine/themed-marquee
  echo themed-marquee folder for zmachine not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zmachine/themed-marquee /home/pi/PieMarquee2/marquee/zmachine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zmachine/themed-marquee /home/pi/PieMarquee2/marquee/zmachine
fi

if [ ! -d /home/pi/RetroPie/roms/zx81/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/zx81 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zx81/themed-marquee
  echo themed-marquee folder for zx81 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zx81/themed-marquee /home/pi/PieMarquee2/marquee/zx81
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zx81/themed-marquee /home/pi/PieMarquee2/marquee/zx81
fi

if [ ! -d /home/pi/RetroPie/roms/zxspectrum/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/zxspectrum >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zxspectrum/themed-marquee
  echo themed-marquee folder for zxspectrum not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zxspectrum/themed-marquee /home/pi/PieMarquee2/marquee/zxspectrum
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zxspectrum/themed-marquee /home/pi/PieMarquee2/marquee/zxspectrum
fi

if [ ! -d /home/pi/RetroPie/roms/adam/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/adam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/adam/themed-marquee
  echo themed-marquee folder for adam not found will now add !
  ln -sfn /home/pi/RetroPie/roms/adam/themed-marquee /home/pi/PieMarquee2/marquee/adam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/adam/themed-marquee /home/pi/PieMarquee2/marquee/adam
fi

if [ ! -d /home/pi/RetroPie/roms/advision/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/advision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/advision/themed-marquee
  echo themed-marquee folder for advision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/advision/themed-marquee /home/pi/PieMarquee2/marquee/advision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/advision/themed-marquee /home/pi/PieMarquee2/marquee/advision
fi

if [ ! -d /home/pi/RetroPie/roms/amiga1200/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/amiga1200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga1200/themed-marquee
  echo themed-marquee folder for amiga1200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga1200/themed-marquee /home/pi/PieMarquee2/marquee/amiga1200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga1200/themed-marquee /home/pi/PieMarquee2/marquee/amiga1200
fi

if [ ! -d /home/pi/RetroPie/roms/amigacd32/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/amigacd32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amigacd32/themed-marquee
  echo themed-marquee folder for amigacd32 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amigacd32/themed-marquee /home/pi/PieMarquee2/marquee/amigacd32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amigacd32/themed-marquee /home/pi/PieMarquee2/marquee/amigacd32
fi

if [ ! -d /home/pi/RetroPie/roms/apfm1000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/apfm1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apfm1000/themed-marquee
  echo themed-marquee folder for apfm1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apfm1000/themed-marquee /home/pi/PieMarquee2/marquee/apfm1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apfm1000/themed-marquee /home/pi/PieMarquee2/marquee/apfm1000
fi

if [ ! -d /home/pi/RetroPie/roms/apple2gs/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/apple2gs >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2gs/themed-marquee
  echo themed-marquee folder for apple2gs not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2gs/themed-marquee /home/pi/PieMarquee2/marquee/apple2gs
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2gs/themed-marquee /home/pi/PieMarquee2/marquee/apple2gs
fi

if [ ! -d /home/pi/RetroPie/roms/astrocde/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/astrocde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/astrocde/themed-marquee
  echo themed-marquee folder for astrocde not found will now add !
  ln -sfn /home/pi/RetroPie/roms/astrocde/themed-marquee /home/pi/PieMarquee2/marquee/astrocde
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/astrocde/themed-marquee /home/pi/PieMarquee2/marquee/astrocde
fi

if [ ! -d /home/pi/RetroPie/roms/bbcb/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/bbcb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/bbcb/themed-marquee
  echo themed-marquee folder for bbcb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/bbcb/themed-marquee /home/pi/PieMarquee2/marquee/bbcb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/bbcb/themed-marquee /home/pi/PieMarquee2/marquee/bbcb
fi

if [ ! -d /home/pi/RetroPie/roms/c64/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/c64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c64/themed-marquee
  echo themed-marquee folder for c64 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c64/themed-marquee /home/pi/PieMarquee2/marquee/c64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c64/themed-marquee /home/pi/PieMarquee2/marquee/c64
fi

if [ ! -d /home/pi/RetroPie/roms/c128/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/c128 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c128/themed-marquee
  echo themed-marquee folder for c128 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c128/themed-marquee /home/pi/PieMarquee2/marquee/c128
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c128/themed-marquee /home/pi/PieMarquee2/marquee/c128
fi


if [ ! -d /home/pi/RetroPie/roms/cdimono1/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/cdimono1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdimono1/themed-marquee
  echo themed-marquee folder for cdimono1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdimono1/themed-marquee /home/pi/PieMarquee2/marquee/cdimono1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdimono1/themed-marquee /home/pi/PieMarquee2/marquee/cdimono1
fi

if [ ! -d /home/pi/RetroPie/roms/cdtv/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/cdtv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdtv/themed-marquee
  echo themed-marquee folder for cdtv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdtv/themed-marquee /home/pi/PieMarquee2/marquee/cdtv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdtv/themed-marquee /home/pi/PieMarquee2/marquee/cdtv
fi

if [ ! -d /home/pi/RetroPie/roms/custom ]; then
  mkdir /home/pi/RetroPie/roms/custom >/dev/null 2>&1
  echo custom folder for custom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
fi

if [ ! -d /home/pi/RetroPie/roms/system ]; then
  mkdir /home/pi/RetroPie/roms/system >/dev/null 2>&1
  echo system folder for system not found will now add !
  ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
fi

if [ ! -d /home/pi/RetroPie/roms/dendy/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/dendy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dendy/themed-marquee
  echo themed-marquee folder for dendy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dendy/themed-marquee /home/pi/PieMarquee2/marquee/dendy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dendy/themed-marquee /home/pi/PieMarquee2/marquee/dendy
fi

if [ ! -d /home/pi/RetroPie/roms/electron/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/electron >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/electron/themed-marquee
  echo themed-marquee folder for electron not found will now add !
  ln -sfn /home/pi/RetroPie/roms/electron/themed-marquee /home/pi/PieMarquee2/marquee/electron
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/electron/themed-marquee /home/pi/PieMarquee2/marquee/electron
fi

if [ ! -d /home/pi/RetroPie/roms/famicom/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/famicom >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/famicom/themed-marquee
  echo themed-marquee folder for famicom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/famicom/themed-marquee /home/pi/PieMarquee2/marquee/famicom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/famicom/themed-marquee /home/pi/PieMarquee2/marquee/famicom
fi

if [ ! -d /home/pi/RetroPie/roms/fba/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/fba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fba/themed-marquee
  echo themed-marquee folder for fba not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fba/themed-marquee /home/pi/PieMarquee2/marquee/fba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fba/themed-marquee /home/pi/PieMarquee2/marquee/fba
fi

if [ ! -d /home/pi/RetroPie/roms/fbneo/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/fbneo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fbneo/themed-marquee
  echo themed-marquee folder for fbneo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fbneo/themed-marquee /home/pi/PieMarquee2/marquee/fbneo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fbneo/themed-marquee /home/pi/PieMarquee2/marquee/fbneo
fi

if [ ! -d /home/pi/RetroPie/roms/fds/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/fds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fds/themed-marquee
  echo themed-marquee folder for fds not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fds/themed-marquee /home/pi/PieMarquee2/marquee/fds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fds/themed-marquee /home/pi/PieMarquee2/marquee/fds
fi

if [ ! -d /home/pi/RetroPie/roms/fm7/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/fm7 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fm7/themed-marquee
  echo themed-marquee folder for fm7 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fm7/themed-marquee /home/pi/PieMarquee2/marquee/fm7
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fm7/themed-marquee /home/pi/PieMarquee2/marquee/fm7
fi

if [ ! -d /home/pi/RetroPie/roms/gamate/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gamate >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamate/themed-marquee
  echo themed-marquee folder for gamate not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamate/themed-marquee /home/pi/PieMarquee2/marquee/gamate
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamate/themed-marquee /home/pi/PieMarquee2/marquee/gamate
fi

if [ ! -d /home/pi/RetroPie/roms/gamepock/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gamepock >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamepock/themed-marquee
  echo themed-marquee folder for gamepock not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamepock/themed-marquee /home/pi/PieMarquee2/marquee/gamepock
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamepock/themed-marquee /home/pi/PieMarquee2/marquee/gamepock
fi

if [ ! -d /home/pi/RetroPie/roms/gbah/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbah >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbah/themed-marquee
  echo themed-marquee folder for gbah not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbah/themed-marquee /home/pi/PieMarquee2/marquee/gbah
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbah/themed-marquee /home/pi/PieMarquee2/marquee/gbah
fi

if [ ! -d /home/pi/RetroPie/roms/gbh/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbh/themed-marquee
  echo themed-marquee folder for gbh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbh/themed-marquee /home/pi/PieMarquee2/marquee/gbh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbh/themed-marquee /home/pi/PieMarquee2/marquee/gbh
fi

if [ ! -d /home/pi/RetroPie/roms/gbm/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbm/themed-marquee
  echo themed-marquee folder for gbm not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbm/themed-marquee /home/pi/PieMarquee2/marquee/gbm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbm/themed-marquee /home/pi/PieMarquee2/marquee/gbm
fi

if [ ! -d /home/pi/RetroPie/roms/genh/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/genh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/genh/themed-marquee
  echo themed-marquee folder for genh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/genh/themed-marquee /home/pi/PieMarquee2/marquee/genh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/genh/themed-marquee /home/pi/PieMarquee2/marquee/genh
fi

if [ ! -d /home/pi/RetroPie/roms/ggh/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/ggh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ggh/themed-marquee
  echo themed-marquee folder for ggh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ggh/themed-marquee /home/pi/PieMarquee2/marquee/ggh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ggh/themed-marquee /home/pi/PieMarquee2/marquee/ggh
fi
if [ ! -d /home/pi/RetroPie/roms/gx4000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/gx4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gx4000/themed-marquee
  echo themed-marquee folder for gx4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gx4000/themed-marquee /home/pi/PieMarquee2/marquee/gx4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gx4000/themed-marquee /home/pi/PieMarquee2/marquee/gx4000
fi

if [ ! -d /home/pi/RetroPie/roms/instruction ]; then
  mkdir /home/pi/RetroPie/roms/instruction >/dev/null 2>&1
  echo instruction folder for instruction not found will now add !
  ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
fi

if [ ! -d /home/pi/RetroPie/roms/laser200/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/laser200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/laser200/themed-marquee
  echo themed-marquee folder for laser200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/laser200/themed-marquee /home/pi/PieMarquee2/marquee/laser200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/laser200/themed-marquee /home/pi/PieMarquee2/marquee/laser200
fi

if [ ! -d /home/pi/RetroPie/roms/m5/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/m5 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/m5/themed-marquee
  echo themed-marquee folder for m5 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/m5/themed-marquee /home/pi/PieMarquee2/marquee/m5
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/m5/themed-marquee /home/pi/PieMarquee2/marquee/m5
fi

if [ ! -d /home/pi/RetroPie/roms/mame/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame/themed-marquee
  echo themed-marquee folder for mame not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame/themed-marquee /home/pi/PieMarquee2/marquee/mame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame/themed-marquee /home/pi/PieMarquee2/marquee/mame
fi

if [ ! -d /home/pi/RetroPie/roms/markii/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/markii >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/markii/themed-marquee
  echo themed-marquee folder for markii not found will now add !
  ln -sfn /home/pi/RetroPie/roms/markii/themed-marquee /home/pi/PieMarquee2/marquee/markii
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/markii/themed-marquee /home/pi/PieMarquee2/marquee/markii
fi

if [ ! -d /home/pi/RetroPie/roms/megacd/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/megacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd/themed-marquee
  echo themed-marquee folder for megacd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd/themed-marquee /home/pi/PieMarquee2/marquee/megacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd/themed-marquee /home/pi/PieMarquee2/marquee/megacd
fi

if [ ! -d /home/pi/RetroPie/roms/megacd-japan/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/megacd-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd-japan/themed-marquee
  echo themed-marquee folder for megacd-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd-japan/themed-marquee /home/pi/PieMarquee2/marquee/megacd-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd-japan/themed-marquee /home/pi/PieMarquee2/marquee/megacd-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive-japan/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/megadrive-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive-japan/themed-marquee
  echo themed-marquee folder for megadrive-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive-japan/themed-marquee /home/pi/PieMarquee2/marquee/megadrive-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive-japan/themed-marquee /home/pi/PieMarquee2/marquee/megadrive-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megaduck/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/megaduck >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megaduck/themed-marquee
  echo themed-marquee folder for megaduck not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megaduck/themed-marquee /home/pi/PieMarquee2/marquee/megaduck
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megaduck/themed-marquee /home/pi/PieMarquee2/marquee/megaduck
fi

if [ ! -d /home/pi/RetroPie/roms/model2/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/model2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model2/themed-marquee
  echo themed-marquee folder for model2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model2/themed-marquee /home/pi/PieMarquee2/marquee/model2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model2/themed-marquee /home/pi/PieMarquee2/marquee/model2
fi

if [ ! -d /home/pi/RetroPie/roms/model3/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/model3 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model3/themed-marquee
  echo themed-marquee folder for model3 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model3/themed-marquee /home/pi/PieMarquee2/marquee/model3
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model3/themed-marquee /home/pi/PieMarquee2/marquee/model3
fi

if [ ! -d /home/pi/RetroPie/roms/msx2/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/msx2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2/themed-marquee
  echo themed-marquee folder for msx2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2/themed-marquee /home/pi/PieMarquee2/marquee/msx2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2/themed-marquee /home/pi/PieMarquee2/marquee/msx2
fi

if [ ! -d /home/pi/RetroPie/roms/msx2plus/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/msx2plus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2plus/themed-marquee
  echo themed-marquee folder for msx2plus not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2plus/themed-marquee /home/pi/PieMarquee2/marquee/msx2plus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2plus/themed-marquee /home/pi/PieMarquee2/marquee/msx2plus
fi

if [ ! -d /home/pi/RetroPie/roms/msxturbo/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/msxturbo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msxturbo/themed-marquee
  echo themed-marquee folder for msxturbo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msxturbo/themed-marquee /home/pi/PieMarquee2/marquee/msxturbo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msxturbo/themed-marquee /home/pi/PieMarquee2/marquee/msxturbo
fi

if [ ! -d /home/pi/RetroPie/roms/mtx/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mtx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mtx/themed-marquee
  echo themed-marquee folder for mtx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mtx/themed-marquee /home/pi/PieMarquee2/marquee/mtx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mtx/themed-marquee /home/pi/PieMarquee2/marquee/mtx
fi

if [ ! -d /home/pi/RetroPie/roms/multivision/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/multivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/multivision/themed-marquee
  echo themed-marquee folder for multivision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/multivision/themed-marquee /home/pi/PieMarquee2/marquee/multivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/multivision/themed-marquee /home/pi/PieMarquee2/marquee/multivision
fi

if [ ! -d /home/pi/RetroPie/roms/mz700/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mz700 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz700/themed-marquee
  echo themed-marquee folder for mz700 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz700/themed-marquee /home/pi/PieMarquee2/marquee/mz700
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz700/themed-marquee /home/pi/PieMarquee2/marquee/mz700
fi

if [ ! -d /home/pi/RetroPie/roms/mz2500/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/mz2500 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz2500/themed-marquee
  echo themed-marquee folder for mz2500 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz2500/themed-marquee /home/pi/PieMarquee2/marquee/mz2500
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz2500/themed-marquee /home/pi/PieMarquee2/marquee/mz2500
fi

if [ ! -d /home/pi/RetroPie/roms/n64dd/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/n64dd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64dd/themed-marquee
  echo themed-marquee folder for n64dd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64dd/themed-marquee /home/pi/PieMarquee2/marquee/n64dd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64dd/themed-marquee /home/pi/PieMarquee2/marquee/n64dd
fi

if [ ! -d /home/pi/RetroPie/roms/n64-japan/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/n64-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64-japan/themed-marquee
  echo themed-marquee folder for n64-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64-japan/themed-marquee /home/pi/PieMarquee2/marquee/n64-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64-japan/themed-marquee /home/pi/PieMarquee2/marquee/n64-japan
fi

if [ ! -d /home/pi/RetroPie/roms/neocdz/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/neocdz >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neocdz/themed-marquee
  echo themed-marquee folder for neocdz not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neocdz/themed-marquee /home/pi/PieMarquee2/marquee/neocdz
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neocdz/themed-marquee /home/pi/PieMarquee2/marquee/neocdz
fi

if [ ! -d /home/pi/RetroPie/roms/nesh/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/nesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nesh/themed-marquee
  echo themed-marquee folder for nesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nesh/themed-marquee /home/pi/PieMarquee2/marquee/nesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nesh/themed-marquee /home/pi/PieMarquee2/marquee/nesh
fi

if [ ! -d /home/pi/RetroPie/roms/plus4/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/plus4 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/plus4/themed-marquee
  echo themed-marquee folder for plus4 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/plus4/themed-marquee /home/pi/PieMarquee2/marquee/plus4
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/plus4/themed-marquee /home/pi/PieMarquee2/marquee/plus4
fi

if [ ! -d /home/pi/RetroPie/roms/psp-japan/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/psp-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp-japan/themed-marquee
  echo themed-marquee folder for psp-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp-japan/themed-marquee /home/pi/PieMarquee2/marquee/psp-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp-japan/themed-marquee /home/pi/PieMarquee2/marquee/psp-japan
fi

if [ ! -d /home/pi/RetroPie/roms/pspminis/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pspminis >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pspminis/themed-marquee
  echo themed-marquee folder for pspminis not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pspminis/themed-marquee /home/pi/PieMarquee2/marquee/pspminis
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pspminis/themed-marquee /home/pi/PieMarquee2/marquee/pspminis
fi

if [ ! -d /home/pi/RetroPie/roms/publisher ]; then
  mkdir /home/pi/RetroPie/roms/publisher >/dev/null 2>&1
  echo publisher folder for publisher not found will now add !
  ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
fi

if [ ! -d /home/pi/RetroPie/roms/pv1000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pv1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv1000/themed-marquee
  echo themed-marquee folder for pv1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv1000/themed-marquee /home/pi/PieMarquee2/marquee/pv1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv1000/themed-marquee /home/pi/PieMarquee2/marquee/pv1000
fi

if [ ! -d /home/pi/RetroPie/roms/pv2000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/pv2000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv2000/themed-marquee
  echo themed-marquee folder for pv2000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv2000/themed-marquee /home/pi/PieMarquee2/marquee/pv2000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv2000/themed-marquee /home/pi/PieMarquee2/marquee/pv2000
fi

if [ ! -d /home/pi/RetroPie/roms/satellaview/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/satellaview >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/satellaview/themed-marquee
  echo themed-marquee folder for satellaview not found will now add !
  ln -sfn /home/pi/RetroPie/roms/satellaview/themed-marquee /home/pi/PieMarquee2/marquee/satellaview
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/satellaview/themed-marquee /home/pi/PieMarquee2/marquee/satellaview
fi

if [ ! -d /home/pi/RetroPie/roms/saturn-japan/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/saturn-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn-japan/themed-marquee
  echo themed-marquee folder for saturn-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn-japan/themed-marquee /home/pi/PieMarquee2/marquee/saturn-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn-japan/themed-marquee /home/pi/PieMarquee2/marquee/saturn-japan
fi

if [ ! -d /home/pi/RetroPie/roms/sc-3000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/sc-3000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sc-3000/themed-marquee
  echo themed-marquee folder for sc-3000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sc-3000/themed-marquee /home/pi/PieMarquee2/marquee/sc-3000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sc-3000/themed-marquee /home/pi/PieMarquee2/marquee/sc-3000
fi

if [ ! -d /home/pi/RetroPie/roms/scv/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/scv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scv/themed-marquee
  echo themed-marquee folder for scv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scv/themed-marquee /home/pi/PieMarquee2/marquee/scv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scv/themed-marquee /home/pi/PieMarquee2/marquee/scv
fi

if [ ! -d /home/pi/RetroPie/roms/sfc/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/sfc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sfc/themed-marquee
  echo themed-marquee folder for sfc not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sfc/themed-marquee /home/pi/PieMarquee2/marquee/sfc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sfc/themed-marquee /home/pi/PieMarquee2/marquee/sfc
fi

if [ ! -d /home/pi/RetroPie/roms/sgb/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/sgb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sgb/themed-marquee
  echo themed-marquee folder for sgb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sgb/themed-marquee /home/pi/PieMarquee2/marquee/sgb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sgb/themed-marquee /home/pi/PieMarquee2/marquee/sgb
fi

if [ ! -d /home/pi/RetroPie/roms/snesh/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/snesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesh/themed-marquee
  echo themed-marquee folder for snesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesh/themed-marquee /home/pi/PieMarquee2/marquee/snesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesh/themed-marquee /home/pi/PieMarquee2/marquee/snesh
fi

if [ ! -d /home/pi/RetroPie/roms/sorcerer/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/sorcerer >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sorcerer/themed-marquee
  echo themed-marquee folder for sorcerer not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sorcerer/themed-marquee /home/pi/PieMarquee2/marquee/sorcerer
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sorcerer/themed-marquee /home/pi/PieMarquee2/marquee/sorcerer
fi

if [ ! -d /home/pi/RetroPie/roms/sufami/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/sufami >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sufami/themed-marquee
  echo themed-marquee folder for sufami not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sufami/themed-marquee /home/pi/PieMarquee2/marquee/sufami
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sufami/themed-marquee /home/pi/PieMarquee2/marquee/sufami
fi

if [ ! -d /home/pi/RetroPie/roms/supergrafx/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/supergrafx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/supergrafx/themed-marquee
  echo themed-marquee folder for supergrafx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/supergrafx/themed-marquee /home/pi/PieMarquee2/marquee/supergrafx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/supergrafx/themed-marquee /home/pi/PieMarquee2/marquee/supergrafx
fi

if [ ! -d /home/pi/RetroPie/roms/svi318/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/svi318 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svi318/themed-marquee
  echo themed-marquee folder for svi318 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svi318/themed-marquee /home/pi/PieMarquee2/marquee/svi318
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svi318/themed-marquee /home/pi/PieMarquee2/marquee/svi318
fi

if [ ! -d /home/pi/RetroPie/roms/svision/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/svision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svision/themed-marquee
  echo themed-marquee folder for svision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svision/themed-marquee /home/pi/PieMarquee2/marquee/svision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svision/themed-marquee /home/pi/PieMarquee2/marquee/svision
fi

if [ ! -d /home/pi/RetroPie/roms/tic80/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/tic80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tic80/themed-marquee 
  echo themed-marquee folder for tic80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tic80/themed-marquee /home/pi/PieMarquee2/marquee/tic80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tic80/themed-marquee /home/pi/PieMarquee2/marquee/tic80
fi

if [ ! -d /home/pi/RetroPie/roms/tutor/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/tutor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tutor/themed-marquee
  echo themed-marquee folder for tutor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tutor/themed-marquee /home/pi/PieMarquee2/marquee/tutor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tutor/themed-marquee /home/pi/PieMarquee2/marquee/tutor
fi

if [ ! -d /home/pi/RetroPie/roms/vc4000/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/vc4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vc4000/themed-marquee
  echo themed-marquee folder for vc4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vc4000/themed-marquee /home/pi/PieMarquee2/marquee/vc4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vc4000/themed-marquee /home/pi/PieMarquee2/marquee/vc4000
fi

if [ ! -d /home/pi/RetroPie/roms/vic20/themed-marquee ]; then
  mkdir /home/pi/RetroPie/roms/vic20 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vic20/themed-marquee
  echo themed-marquee folder for vic20 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vic20/themed-marquee /home/pi/PieMarquee2/marquee/vic20
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vic20/themed-marquee /home/pi/PieMarquee2/marquee/vic20
fi

else
echo "$(tput setaf 6)
Looks like you have the themed-marquee script off please turn it on and try again.
$(tput sgr0)"   
sleep 4
fi
}

# Make folder marquee SUPREME -----------------------------------------------------------------------------------------------------------------------------------
function system-marquee() {
	dialog --infobox "APPLYING CHANGES NOW." 3 25 ; sleep 6
	if [ ! -d /home/pi/PieMarquee3 ]; then
	
if [ ! -d /home/pi/RetroPie/roms/3do/marquee ]; then
  mkdir /home/pi/RetroPie/roms/3do >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/3do/marquee
  echo marquee folder for 3do was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/3do/marquee /home/pi/PieMarquee2/marquee/3do
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/3do/marquee /home/pi/PieMarquee2/marquee/3do
fi

if [ ! -d /home/pi/RetroPie/roms/ags/marquee ]; then
  mkdir /home/pi/RetroPie/roms/ags >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ags/marquee
  echo marquee folder for ags was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ags/marquee /home/pi/PieMarquee2/marquee/ags
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ags/marquee /home/pi/PieMarquee2/marquee/ags
fi

if [ ! -d /home/pi/RetroPie/roms/amiga/marquee ]; then
  mkdir /home/pi/RetroPie/roms/amiga >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga/marquee
  echo marquee folder for amiga was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga/marquee /home/pi/PieMarquee2/marquee/amiga
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga/marquee /home/pi/PieMarquee2/marquee/amiga
fi

if [ ! -d /home/pi/RetroPie/roms/amstradcpc/marquee ]; then
  mkdir /home/pi/RetroPie/roms/amstradcpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amstradcpc/marquee
  echo marquee folder for amstradcpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amstradcpc/marquee /home/pi/PieMarquee2/marquee/amstradcpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amstradcpc/marquee /home/pi/PieMarquee2/marquee/amstradcpc
fi

if [ ! -d /home/pi/RetroPie/roms/apple2/marquee ]; then
  mkdir /home/pi/RetroPie/roms/apple2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2/marquee
  echo marquee folder for apple2 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2/marquee /home/pi/PieMarquee2/marquee/apple2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2/marquee /home/pi/PieMarquee2/marquee/apple2
fi

if [ ! -d /home/pi/RetroPie/roms/arcade/marquee ]; then
  mkdir /home/pi/RetroPie/roms/aracde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcade/marquee
  echo marquee folder for arcade was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcade/marquee /home/pi/PieMarquee2/marquee/arcade
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcade/marquee /home/pi/PieMarquee2/marquee/arcade
fi

if [ ! -d /home/pi/RetroPie/roms/arcadia/marquee ]; then
  mkdir /home/pi/RetroPie/roms/arcadia >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcadia/marquee
  echo marquee folder for arcadia was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcadia/marquee /home/pi/PieMarquee2/marquee/arcadia
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcadia/marquee /home/pi/PieMarquee2/marquee/arcadia
fi

if [ ! -d /home/pi/RetroPie/roms/atari800/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari800/marquee
  echo marquee folder for atari800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari800/marquee /home/pi/PieMarquee2/marquee/atari800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari800/marquee /home/pi/PieMarquee2/marquee/atari800
fi

if [ ! -d /home/pi/RetroPie/roms/atari2600/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari2600 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari2600/marquee
  echo marquee folder for atari2600 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari2600/marquee /home/pi/PieMarquee2/marquee/atari2600
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari2600/marquee /home/pi/PieMarquee2/marquee/atari2600
fi

if [ ! -d /home/pi/RetroPie/roms/atari5200/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari5200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari5200/marquee
  echo marquee folder for atari5200 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari5200/marquee /home/pi/PieMarquee2/marquee/atari5200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari5200/marquee /home/pi/PieMarquee2/marquee/atari5200
fi

if [ ! -d /home/pi/RetroPie/roms/atari7800/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atari7800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari7800/marquee
  echo marquee folder for atari7800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari7800/marquee /home/pi/PieMarquee2/marquee/atari7800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari7800/marquee /home/pi/PieMarquee2/marquee/atari7800
fi

if [ ! -d /home/pi/RetroPie/roms/atarijaguar/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atarijaguar >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarijaguar/marquee
  echo marquee folder for atarijaguar was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarijaguar/marquee /home/pi/PieMarquee2/marquee/atarijaguar
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarijaguar/marquee /home/pi/PieMarquee2/marquee/atarijaguar
fi

if [ ! -d /home/pi/RetroPie/roms/atarilynx/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atarilynx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarilynx/marquee
  echo marquee folder for atarilynx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarilynx/marquee /home/pi/PieMarquee2/marquee/atarilynx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarilynx/marquee /home/pi/PieMarquee2/marquee/atarilynx
fi

if [ ! -d /home/pi/RetroPie/roms/atarist/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atarist >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarist/marquee
  echo marquee folder for atarist was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarist/marquee /home/pi/PieMarquee2/marquee/atarist
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarist/marquee /home/pi/PieMarquee2/marquee/atarist
fi

if [ ! -d /home/pi/RetroPie/roms/atomiswave/marquee ]; then
  mkdir /home/pi/RetroPie/roms/atomiswave >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atomiswave/marquee
  echo marquee folder for atomiswave was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atomiswave/marquee /home/pi/PieMarquee2/marquee/atomiswave
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atomiswave/marquee /home/pi/PieMarquee2/marquee/atomiswave
fi

if [ ! -d /home/pi/RetroPie/roms/channelf/marquee ]; then
  mkdir /home/pi/RetroPie/roms/channelf >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/channelf/marquee
  echo marquee folder for channelf was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/channelf/marquee /home/pi/PieMarquee2/marquee/channelf
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/channelf/marquee /home/pi/PieMarquee2/marquee/channelf
fi

if [ ! -d /home/pi/RetroPie/roms/chromium/marquee ]; then
  mkdir /home/pi/RetroPie/roms/chromium >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/chromium/marquee
  echo marquee folder for chromium was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/chromium/marquee /home/pi/PieMarquee2/marquee/chromium
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/chromium/marquee /home/pi/PieMarquee2/marquee/chromium
fi

if [ ! -d /home/pi/RetroPie/roms/coco/marquee ]; then
  mkdir /home/pi/RetroPie/roms/coco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coco/marquee
  echo marquee folder for coco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coco/marquee /home/pi/PieMarquee2/marquee/coco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coco/marquee /home/pi/PieMarquee2/marquee/coco
fi

if [ ! -d /home/pi/RetroPie/roms/coleco/marquee ]; then
  mkdir /home/pi/RetroPie/roms/coleco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coleco/marquee
  echo marquee folder for coleco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coleco/marquee /home/pi/PieMarquee2/marquee/coleco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coleco/marquee /home/pi/PieMarquee2/marquee/coleco
fi

if [ ! -d /home/pi/RetroPie/roms/crvision/marquee ]; then
  mkdir /home/pi/RetroPie/roms/crvision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/crvision/marquee
  echo marquee folder for crvision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/crvision/marquee /home/pi/PieMarquee2/marquee/crvision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/crvision/marquee /home/pi/PieMarquee2/marquee/crvision
fi

if [ ! -d /home/pi/RetroPie/roms/daphne/marquee ]; then
  mkdir /home/pi/RetroPie/roms/daphne >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/daphne/marquee
  echo marquee folder for daphne was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/daphne/marquee /home/pi/PieMarquee2/marquee/daphne
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/daphne/marquee /home/pi/PieMarquee2/marquee/daphne
fi

if [ ! -d /home/pi/RetroPie/roms/dragon32/marquee ]; then
  mkdir /home/pi/RetroPie/roms/dragon32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dragon32/marquee
  echo marquee folder for dragon32 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dragon32/marquee /home/pi/PieMarquee2/marquee/dragon32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dragon32/marquee /home/pi/PieMarquee2/marquee/dragon32
fi

if [ ! -d /home/pi/RetroPie/roms/dreamcast/marquee ]; then
  mkdir /home/pi/RetroPie/roms/dreamcast >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dreamcast/marquee
  echo marquee folder for dreamcast was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dreamcast/marquee /home/pi/PieMarquee2/marquee/dreamcast
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dreamcast/marquee /home/pi/PieMarquee2/marquee/dreamcast
fi

if [ ! -d /home/pi/RetroPie/roms/gameandwatch/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gameandwatch >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gameandwatch/marquee
  echo marquee folder for gameandwatch was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gameandwatch/marquee /home/pi/PieMarquee2/marquee/gameandwatch
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gameandwatch/marquee /home/pi/PieMarquee2/marquee/gameandwatch
fi

if [ ! -d /home/pi/RetroPie/roms/gamegear/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gamegear >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamegear/marquee
  echo marquee folder for gamegear was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamegear/marquee /home/pi/PieMarquee2/marquee/gamegear
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamegear/marquee /home/pi/PieMarquee2/marquee/gamegear
fi

if [ ! -d /home/pi/RetroPie/roms/gb/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gb/marquee
  echo marquee folder for gb was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gb/marquee /home/pi/PieMarquee2/marquee/gb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gb/marquee /home/pi/PieMarquee2/marquee/gb
fi

if [ ! -d /home/pi/RetroPie/roms/gba/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gba/marquee
  echo marquee folder for gba was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gba/marquee /home/pi/PieMarquee2/marquee/gba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gba/marquee /home/pi/PieMarquee2/marquee/gba
fi

if [ ! -d /home/pi/RetroPie/roms/gbc/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbc/marquee
  echo marquee folder for gbc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbc/marquee /home/pi/PieMarquee2/marquee/gbc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbc/marquee /home/pi/PieMarquee2/marquee/gbc
fi

if [ ! -d /home/pi/RetroPie/roms/intellivision/marquee ]; then
  mkdir /home/pi/RetroPie/roms/intellivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/intellivision/marquee
  echo marquee folder for intellivision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/intellivision/marquee /home/pi/PieMarquee2/marquee/intellivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/intellivision/marquee /home/pi/PieMarquee2/marquee/intellivision
fi

if [ ! -d /home/pi/RetroPie/roms/kodi/marquee ]; then
  mkdir /home/pi/RetroPie/roms/kodi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/kodi/marquee
  echo marquee folder for kodi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/kodi/marquee /home/pi/PieMarquee2/marquee/kodi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/kodi/marquee /home/pi/PieMarquee2/marquee/kodi
fi

if [ ! -d /home/pi/RetroPie/roms/love/marquee ]; then
  mkdir /home/pi/RetroPie/roms/love >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/love/marquee
  echo marquee folder for love was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/love/marquee /home/pi/PieMarquee2/marquee/love
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/love/marquee /home/pi/PieMarquee2/marquee/love
fi

if [ ! -d /home/pi/RetroPie/roms/macintosh/marquee ]; then
  mkdir /home/pi/RetroPie/roms/macintosh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/macintosh/marquee
  echo marquee folder for macintosh was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/macintosh/marquee /home/pi/PieMarquee2/marquee/macintosh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/macintosh/marquee /home/pi/PieMarquee2/marquee/macintosh
fi

if [ ! -d /home/pi/RetroPie/roms/mame-advmame/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame-advmame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-advmame/marquee
  echo marquee folder for mame-advmame was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-advmame/marquee /home/pi/PieMarquee2/marquee/mame-advmame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-advmame/marquee /home/pi/PieMarquee2/marquee/mame-advmame
fi

if [ ! -d /home/pi/RetroPie/roms/mame-libretro/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame-libretro >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-libretro/marquee
  echo marquee folder for mame-libretro was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-libretro/marquee /home/pi/PieMarquee2/marquee/mame-libretro
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-libretro/marquee /home/pi/PieMarquee2/marquee/mame-libretro
fi

if [ ! -d /home/pi/RetroPie/roms/mame-mame4all/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame-mame4all >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-mame4all/marquee
  echo marquee folder for mame-mame4all was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-mame4all/marquee /home/pi/PieMarquee2/marquee/mame-mame4all
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-mame4all/marquee /home/pi/PieMarquee2/marquee/mame-mame4all
fi

if [ ! -d /home/pi/RetroPie/roms/mastersystem/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mastersystem >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mastersystem/marquee
  echo marquee folder for mastersystem was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mastersystem/marquee /home/pi/PieMarquee2/marquee/mastersystem
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mastersystem/marquee /home/pi/PieMarquee2/marquee/mastersystem
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive/marquee ]; then
  mkdir /home/pi/RetroPie/roms/megadrive >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive/marquee
  echo marquee folder for megadrive was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive/marquee /home/pi/PieMarquee2/marquee/megadrive
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive/marquee /home/pi/PieMarquee2/marquee/megadrive
fi

if [ ! -d /home/pi/RetroPie/roms/msx/marquee ]; then
  mkdir /home/pi/RetroPie/roms/msx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx/marquee
  echo marquee folder for msx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx/marquee /home/pi/PieMarquee2/marquee/msx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx/marquee /home/pi/PieMarquee2/marquee/msx
fi

if [ ! -d /home/pi/RetroPie/roms/n64/marquee ]; then
  mkdir /home/pi/RetroPie/roms/n64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64/marquee
  echo marquee folder for n64 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64/marquee /home/pi/PieMarquee2/marquee/n64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64/marquee /home/pi/PieMarquee2/marquee/n64
fi

if [ ! -d /home/pi/RetroPie/roms/naomi/marquee ]; then
  mkdir /home/pi/RetroPie/roms/naomi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/naomi/marquee
  echo marquee folder for naomi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/naomi/marquee /home/pi/PieMarquee2/marquee/naomi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/marquee /home/pi/PieMarquee2/marquee/naomi
fi

if [ ! -d /home/pi/RetroPie/roms/nds/marquee ]; then
  mkdir /home/pi/RetroPie/roms/nds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nds/marquee
  echo marquee folder for nds was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nds/marquee /home/pi/PieMarquee2/marquee/nds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/marquee /home/pi/PieMarquee2/marquee/nds
fi

if [ ! -d /home/pi/RetroPie/roms/neogeo/marquee ]; then
  mkdir /home/pi/RetroPie/roms/neogeo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeo/marquee
  echo marquee folder for neogeo was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeo/marquee /home/pi/PieMarquee2/marquee/neogeo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeo/marquee /home/pi/PieMarquee2/marquee/neogeo
fi

if [ ! -d /home/pi/RetroPie/roms/neogeocd/marquee ]; then
  mkdir /home/pi/RetroPie/roms/neogeocd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeocd/marquee
  echo marquee folder for neogeocd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeocd/marquee /home/pi/PieMarquee2/marquee/neogeocd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeocd/marquee /home/pi/PieMarquee2/marquee/neogeocd
fi

if [ ! -d /home/pi/RetroPie/roms/nes/marquee ]; then
  mkdir /home/pi/RetroPie/roms/nes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nes/marquee
  echo marquee folder for nes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nes/marquee /home/pi/PieMarquee2/marquee/nes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nes/marquee /home/pi/PieMarquee2/marquee/nes
fi

if [ ! -d /home/pi/RetroPie/roms/ngp/marquee ]; then
  mkdir /home/pi/RetroPie/roms/ngp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngp/marquee
  echo marquee folder for ngp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngp/marquee /home/pi/PieMarquee2/marquee/ngp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngp/marquee /home/pi/PieMarquee2/marquee/ngp
fi

if [ ! -d /home/pi/RetroPie/roms/ngpc/marquee ]; then
  mkdir /home/pi/RetroPie/roms/ngpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngpc/marquee
  echo marquee folder for ngpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngpc/marquee /home/pi/PieMarquee2/marquee/ngpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngpc/marquee /home/pi/PieMarquee2/marquee/ngpc
fi

if [ ! -d /home/pi/RetroPie/roms/openbor/marquee ]; then
  mkdir /home/pi/RetroPie/roms/openbor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/openbor/marquee
  echo marquee folder for openbor was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/openbor/marquee /home/pi/PieMarquee2/marquee/openbor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/openbor/marquee /home/pi/PieMarquee2/marquee/openbor
fi

if [ ! -d /home/pi/RetroPie/roms/oric/marquee ]; then
  mkdir /home/pi/RetroPie/roms/oric >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/oric/marquee
  echo marquee folder for oric was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/oric/marquee /home/pi/PieMarquee2/marquee/oric
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/oric/marquee /home/pi/PieMarquee2/marquee/oric
fi

if [ ! -d /home/pi/RetroPie/roms/pc/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc/marquee
  echo marquee folder for pc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc/marquee /home/pi/PieMarquee2/marquee/pc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc/marquee /home/pi/PieMarquee2/marquee/pc
fi

if [ ! -d /home/pi/RetroPie/roms/pc88/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pc88 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc88/marquee
  echo marquee folder for pc88 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc88/marquee /home/pi/PieMarquee2/marquee/pc88
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc88/marquee /home/pi/PieMarquee2/marquee/pc88
fi

if [ ! -d /home/pi/RetroPie/roms/pc98/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pc98 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc98/marquee
  echo marquee folder for pc98 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc98/marquee /home/pi/PieMarquee2/marquee/pc98
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc98/marquee /home/pi/PieMarquee2/marquee/pc98
fi

if [ ! -d /home/pi/RetroPie/roms/pcengine/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pcengine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcengine/marquee
  echo marquee folder for pcengine was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcengine/marquee /home/pi/PieMarquee2/marquee/pcengine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcengine/marquee /home/pi/PieMarquee2/marquee/pcengine
fi

if [ ! -d /home/pi/RetroPie/roms/pcenginecd/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pcenginecd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcenginecd/marquee
  echo marquee folder for pcenginecd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcenginecd/marquee /home/pi/PieMarquee2/marquee/pcenginecd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcenginecd/marquee /home/pi/PieMarquee2/marquee/pcenginecd
fi

if [ ! -d /home/pi/RetroPie/roms/pcfx/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pcfx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcfx/marquee
  echo marquee folder for pcfx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcfx/marquee /home/pi/PieMarquee2/marquee/pcfx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcfx/marquee /home/pi/PieMarquee2/marquee/pcfx
fi

if [ ! -d /home/pi/RetroPie/roms/.supremeteammarquee ]; then
  mkdir /home/pi/RetroPie/roms/.supremeteammarquee >/dev/null 2>&1
  sleep 1
fi

if [ ! -d /home/pi/RetroPie/roms/pixel/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pixel >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pixel/marquee
  echo marquee folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pixel/marquee /home/pi/PieMarquee2/marquee/pixel
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pixel/marquee /home/pi/PieMarquee2/marquee/pixel
fi

if [ ! -d /home/pi/RetroPie/roms/pokemini/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pokemini >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pokemini/marquee
  echo marquee folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pokemini/marquee /home/pi/PieMarquee2/marquee/pokemini
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pokemini/marquee /home/pi/PieMarquee2/marquee/pokemini
fi

if [ ! -d /home/pi/RetroPie/roms/ports/marquee ]; then
  mkdir /home/pi/RetroPie/roms/ports >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ports/marquee
  echo marquee folder for ports was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ports/marquee /home/pi/PieMarquee2/marquee/ports
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ports/marquee /home/pi/PieMarquee2/marquee/ports
fi

if [ ! -d /home/pi/RetroPie/roms/power/marquee ]; then
  mkdir /home/pi/RetroPie/roms/power >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/power/marquee
  echo marquee folder for power was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/power/marquee /home/pi/PieMarquee2/marquee/power
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/power/marquee /home/pi/PieMarquee2/marquee/power
fi

if [ ! -d /home/pi/RetroPie/roms/psp/marquee ]; then
  mkdir /home/pi/RetroPie/roms/psp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp/marquee
  echo marquee folder for psp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp/marquee /home/pi/PieMarquee2/marquee/psp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp/marquee /home/pi/PieMarquee2/marquee/psp
fi

if [ ! -d /home/pi/RetroPie/roms/psx/marquee ]; then
  mkdir /home/pi/RetroPie/roms/psx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psx/marquee
  echo marquee folder for psx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psx/marquee /home/pi/PieMarquee2/marquee/psx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psx/marquee /home/pi/PieMarquee2/marquee/psx
fi

if [ ! -d /home/pi/RetroPie/roms/residualvm/marquee ]; then
  mkdir /home/pi/RetroPie/roms/residualvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/residualvm/marquee
  echo marquee folder for residualvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/residualvm/marquee /home/pi/PieMarquee2/marquee/residualvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/residualvm/marquee /home/pi/PieMarquee2/marquee/residualvm
fi

if [ ! -d /home/pi/RetroPie/roms/samcoupe/marquee ]; then
  mkdir /home/pi/RetroPie/roms/samcoupe >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/samcoupe/marquee
  echo marquee folder for samcoupe was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/samcoupe/marquee /home/pi/PieMarquee2/marquee/samcoupe
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/samcoupe/marquee /home/pi/PieMarquee2/marquee/samcoupe
fi

if [ ! -d /home/pi/RetroPie/roms/saturn/marquee ]; then
  mkdir /home/pi/RetroPie/roms/saturn >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn/marquee
  echo marquee folder for saturn was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn/marquee /home/pi/PieMarquee2/marquee/saturn
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn/marquee /home/pi/PieMarquee2/marquee/saturn
fi

if [ ! -d /home/pi/RetroPie/roms/scummvm/marquee ]; then
  mkdir /home/pi/RetroPie/roms/scummvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scummvm/marquee
  echo marquee folder for scummvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scummvm/marquee /home/pi/PieMarquee2/marquee/scummvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scummvm/marquee /home/pi/PieMarquee2/marquee/scummvm
fi

if [ ! -d /home/pi/RetroPie/roms/sega32x/marquee ]; then
  mkdir /home/pi/RetroPie/roms/sega32x >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sega32x/marquee
  echo marquee folder for sega32x was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sega32x/marquee /home/pi/PieMarquee2/marquee/sega32x
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sega32x/marquee /home/pi/PieMarquee2/marquee/sega32x
fi

if [ ! -d /home/pi/RetroPie/roms/segacd/marquee ]; then
  mkdir /home/pi/RetroPie/roms/segacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/segacd/marquee
  echo marquee folder for segacd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/segacd/marquee /home/pi/PieMarquee2/marquee/segacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/segacd/marquee /home/pi/PieMarquee2/marquee/segacd
fi

if [ ! -d /home/pi/RetroPie/roms/sg-1000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/sg-1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sg-1000/marquee
  echo marquee folder for sg-1000 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sg-1000/marquee /home/pi/PieMarquee2/marquee/sg-1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sg-1000/marquee /home/pi/PieMarquee2/marquee/sg-1000
fi

if [ ! -d /home/pi/RetroPie/roms/snes/marquee ]; then
  mkdir /home/pi/RetroPie/roms/snes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snes/marquee
  echo marquee folder for snes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snes/marquee /home/pi/PieMarquee2/marquee/snes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snes/marquee /home/pi/PieMarquee2/marquee/snes
fi

if [ ! -d /home/pi/RetroPie/roms/snesmsu1/marquee ]; then
  mkdir /home/pi/RetroPie/roms/snesmsu1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesmsu1/marquee
  echo marquee folder for snesmsu1 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesmsu1/marquee /home/pi/PieMarquee2/marquee/snesmsu1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesmsu1/marquee /home/pi/PieMarquee2/marquee/snesmsu1
fi

if [ ! -d /home/pi/RetroPie/roms/solarus/marquee ]; then
  mkdir /home/pi/RetroPie/roms/solarus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/solarus/marquee
  echo marquee folder for solarus was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/solarus/marquee /home/pi/PieMarquee2/marquee/solarus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/solarus/marquee /home/pi/PieMarquee2/marquee/solarus
fi

if [ ! -d /home/pi/RetroPie/roms/steam/marquee ]; then
  mkdir /home/pi/RetroPie/roms/steam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/steam/marquee
  echo marquee folder for steam was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/steam/marquee /home/pi/PieMarquee2/marquee/steam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/steam/marquee /home/pi/PieMarquee2/marquee/steam
fi

if [ ! -d /home/pi/RetroPie/roms/stratagus/marquee ]; then
  mkdir /home/pi/RetroPie/roms/stratagus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/stratagus/marquee
  echo marquee folder for strataguswas not found will now add !
  ln -sfn /home/pi/RetroPie/roms/stratagus/marquee /home/pi/PieMarquee2/marquee/stratagus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/stratagus/marquee /home/pi/PieMarquee2/marquee/stratagus
fi

if [ ! -d /home/pi/RetroPie/roms/tg16/marquee ]; then
  mkdir /home/pi/RetroPie/roms/tg16 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16/marquee
  echo marquee folder for tg16 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16/marquee /home/pi/PieMarquee2/marquee/tg16
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16/marquee /home/pi/PieMarquee2/marquee/tg16
fi

if [ ! -d /home/pi/RetroPie/roms/tg16cd/marquee ]; then
  mkdir /home/pi/RetroPie/roms/tg16cd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16cd/marquee
  echo marquee folder for tg16cd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16cd/marquee /home/pi/PieMarquee2/marquee/tg16cd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16cd/marquee /home/pi/PieMarquee2/marquee/tg16cd
fi

if [ ! -d /home/pi/RetroPie/roms/ti99/marquee ]; then
  mkdir /home/pi/RetroPie/roms/ti99 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ti99/marquee
  echo marquee folder for ti99 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ti99/marquee /home/pi/PieMarquee2/marquee/ti99
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ti99/marquee /home/pi/PieMarquee2/marquee/ti99
fi

if [ ! -d /home/pi/RetroPie/roms/trs-80/marquee ]; then
  mkdir /home/pi/RetroPie/roms/trs-80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/trs-80/marquee
  echo marquee folder for trs-80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/trs-80/marquee /home/pi/PieMarquee2/marquee/trs-80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/trs-80/marquee /home/pi/PieMarquee2/marquee/trs-80
fi

if [ ! -d /home/pi/RetroPie/roms/vectrex/marquee ]; then
  mkdir /home/pi/RetroPie/roms/vectrex >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vectrex/marquee
  echo marquee folder for vectrex not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vectrex/marquee /home/pi/PieMarquee2/marquee/vectrex
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vectrex/marquee /home/pi/PieMarquee2/marquee/vectrex
fi

if [ ! -d /home/pi/RetroPie/roms/videopac/marquee ]; then
  mkdir /home/pi/RetroPie/roms/videopac >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/videopac/marquee
  echo marquee folder for videopac not found will now add !
  ln -sfn /home/pi/RetroPie/roms/videopac/marquee /home/pi/PieMarquee2/marquee/videopac
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/videopac/marquee /home/pi/PieMarquee2/marquee/videopac
fi

if [ ! -d /home/pi/RetroPie/roms/virtualboy/marquee ]; then
  mkdir /home/pi/RetroPie/roms/virtualboy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/virtualboy/marquee
  echo marquee folder for virtualboy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/virtualboy/marquee /home/pi/PieMarquee2/marquee/virtualboy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/virtualboy/marquee /home/pi/PieMarquee2/marquee/virtualboy
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswan/marquee ]; then
  mkdir /home/pi/RetroPie/roms/wonderswan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswan/marquee
  echo marquee folder for wonderswan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswan/marquee /home/pi/PieMarquee2/marquee/wonderswan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswan/marquee /home/pi/PieMarquee2/marquee/wonderswan
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswancolor/marquee ]; then
  mkdir /home/pi/RetroPie/roms/wonderswancolor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswancolor/marquee
  echo marquee folder for wonderswancolor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswancolor/marquee /home/pi/PieMarquee2/marquee/wonderswancolor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswancolor/marquee /home/pi/PieMarquee2/marquee/wonderswancolor
fi

if [ ! -d /home/pi/RetroPie/roms/x1/marquee ]; then
  mkdir /home/pi/RetroPie/roms/x1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x1/marquee
  echo marquee folder for x1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x1/marquee /home/pi/PieMarquee2/marquee/x1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x1/marquee /home/pi/PieMarquee2/marquee/x1
fi

if [ ! -d /home/pi/RetroPie/roms/x68000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/x68000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x68000/marquee
  echo marquee folder for x68000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x68000/marquee /home/pi/PieMarquee2/marquee/x68000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x68000/marquee /home/pi/PieMarquee2/marquee/x68000
fi

if [ ! -d /home/pi/RetroPie/roms/zmachine/marquee ]; then
  mkdir /home/pi/RetroPie/roms/zmachine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zmachine/marquee
  echo marquee folder for zmachine not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zmachine/marquee /home/pi/PieMarquee2/marquee/zmachine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zmachine/marquee /home/pi/PieMarquee2/marquee/zmachine
fi

if [ ! -d /home/pi/RetroPie/roms/zx81/marquee ]; then
  mkdir /home/pi/RetroPie/roms/zx81 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zx81/marquee
  echo marquee folder for zx81 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zx81/marquee /home/pi/PieMarquee2/marquee/zx81
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zx81/marquee /home/pi/PieMarquee2/marquee/zx81
fi

if [ ! -d /home/pi/RetroPie/roms/zxspectrum/marquee ]; then
  mkdir /home/pi/RetroPie/roms/zxspectrum >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zxspectrum/marquee
  echo marquee folder for zxspectrum not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zxspectrum/marquee /home/pi/PieMarquee2/marquee/zxspectrum
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zxspectrum/marquee /home/pi/PieMarquee2/marquee/zxspectrum
fi

if [ ! -d /home/pi/RetroPie/roms/adam/marquee ]; then
  mkdir /home/pi/RetroPie/roms/adam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/adam/marquee
  echo marquee folder for adam not found will now add !
  ln -sfn /home/pi/RetroPie/roms/adam/marquee /home/pi/PieMarquee2/marquee/adam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/adam/marquee /home/pi/PieMarquee2/marquee/adam
fi

if [ ! -d /home/pi/RetroPie/roms/advision/marquee ]; then
  mkdir /home/pi/RetroPie/roms/advision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/advision/marquee
  echo marquee folder for advision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/advision/marquee /home/pi/PieMarquee2/marquee/advision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/advision/marquee /home/pi/PieMarquee2/marquee/advision
fi

if [ ! -d /home/pi/RetroPie/roms/amiga1200/marquee ]; then
  mkdir /home/pi/RetroPie/roms/amiga1200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga1200/marquee
  echo marquee folder for amiga1200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga1200/marquee /home/pi/PieMarquee2/marquee/amiga1200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga1200/marquee /home/pi/PieMarquee2/marquee/amiga1200
fi

if [ ! -d /home/pi/RetroPie/roms/amigacd32/marquee ]; then
  mkdir /home/pi/RetroPie/roms/amigacd32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amigacd32/marquee
  echo marquee folder for amigacd32 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amigacd32/marquee /home/pi/PieMarquee2/marquee/amigacd32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amigacd32/marquee /home/pi/PieMarquee2/marquee/amigacd32
fi

if [ ! -d /home/pi/RetroPie/roms/apfm1000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/apfm1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apfm1000/marquee
  echo marquee folder for apfm1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apfm1000/marquee /home/pi/PieMarquee2/marquee/apfm1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apfm1000/marquee /home/pi/PieMarquee2/marquee/apfm1000
fi

if [ ! -d /home/pi/RetroPie/roms/apple2gs/marquee ]; then
  mkdir /home/pi/RetroPie/roms/apple2gs >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2gs/marquee
  echo marquee folder for apple2gs not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2gs/marquee /home/pi/PieMarquee2/marquee/apple2gs
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2gs/marquee /home/pi/PieMarquee2/marquee/apple2gs
fi

if [ ! -d /home/pi/RetroPie/roms/astrocde/marquee ]; then
  mkdir /home/pi/RetroPie/roms/astrocde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/astrocde/marquee
  echo marquee folder for astrocde not found will now add !
  ln -sfn /home/pi/RetroPie/roms/astrocde/marquee /home/pi/PieMarquee2/marquee/astrocde
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/astrocde/marquee /home/pi/PieMarquee2/marquee/astrocde
fi

if [ ! -d /home/pi/RetroPie/roms/bbcb/marquee ]; then
  mkdir /home/pi/RetroPie/roms/bbcb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/bbcb/marquee
  echo marquee folder for bbcb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/bbcb/marquee /home/pi/PieMarquee2/marquee/bbcb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/bbcb/marquee /home/pi/PieMarquee2/marquee/bbcb
fi

if [ ! -d /home/pi/RetroPie/roms/c64/marquee ]; then
  mkdir /home/pi/RetroPie/roms/c64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c64/marquee
  echo marquee folder for c64 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c64/marquee /home/pi/PieMarquee2/marquee/c64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c64/marquee /home/pi/PieMarquee2/marquee/c64
fi

if [ ! -d /home/pi/RetroPie/roms/c128/marquee ]; then
  mkdir /home/pi/RetroPie/roms/c128 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c128/marquee
  echo marquee folder for c128 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c128/marquee /home/pi/PieMarquee2/marquee/c128
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c128/marquee /home/pi/PieMarquee2/marquee/c128
fi


if [ ! -d /home/pi/RetroPie/roms/cdimono1/marquee ]; then
  mkdir /home/pi/RetroPie/roms/cdimono1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdimono1/marquee
  echo marquee folder for cdimono1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdimono1/marquee /home/pi/PieMarquee2/marquee/cdimono1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdimono1/marquee /home/pi/PieMarquee2/marquee/cdimono1
fi

if [ ! -d /home/pi/RetroPie/roms/cdtv/marquee ]; then
  mkdir /home/pi/RetroPie/roms/cdtv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdtv/marquee
  echo marquee folder for cdtv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdtv/marquee /home/pi/PieMarquee2/marquee/cdtv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdtv/marquee /home/pi/PieMarquee2/marquee/cdtv
fi

if [ ! -d /home/pi/RetroPie/roms/custom ]; then
  mkdir /home/pi/RetroPie/roms/custom >/dev/null 2>&1
  echo custom folder for custom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
fi

if [ ! -d /home/pi/RetroPie/roms/system ]; then
  mkdir /home/pi/RetroPie/roms/system >/dev/null 2>&1
  echo system folder for system not found will now add !
  ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
fi

if [ ! -d /home/pi/RetroPie/roms/dendy/marquee ]; then
  mkdir /home/pi/RetroPie/roms/dendy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dendy/marquee
  echo marquee folder for dendy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dendy/marquee /home/pi/PieMarquee2/marquee/dendy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dendy/marquee /home/pi/PieMarquee2/marquee/dendy
fi

if [ ! -d /home/pi/RetroPie/roms/electron/marquee ]; then
  mkdir /home/pi/RetroPie/roms/electron >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/electron/marquee
  echo marquee folder for electron not found will now add !
  ln -sfn /home/pi/RetroPie/roms/electron/marquee /home/pi/PieMarquee2/marquee/electron
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/electron/marquee /home/pi/PieMarquee2/marquee/electron
fi

if [ ! -d /home/pi/RetroPie/roms/famicom/marquee ]; then
  mkdir /home/pi/RetroPie/roms/famicom >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/famicom/marquee
  echo marquee folder for famicom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/famicom/marquee /home/pi/PieMarquee2/marquee/famicom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/famicom/marquee /home/pi/PieMarquee2/marquee/famicom
fi

if [ ! -d /home/pi/RetroPie/roms/fba/marquee ]; then
  mkdir /home/pi/RetroPie/roms/fba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fba/marquee
  echo marquee folder for fba not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fba/marquee /home/pi/PieMarquee2/marquee/fba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fba/marquee /home/pi/PieMarquee2/marquee/fba
fi

if [ ! -d /home/pi/RetroPie/roms/fbneo/marquee ]; then
  mkdir /home/pi/RetroPie/roms/fbneo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fbneo/marquee
  echo marquee folder for fbneo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fbneo/marquee /home/pi/PieMarquee2/marquee/fbneo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fbneo/marquee /home/pi/PieMarquee2/marquee/fbneo
fi

if [ ! -d /home/pi/RetroPie/roms/fds/marquee ]; then
  mkdir /home/pi/RetroPie/roms/fds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fds/marquee
  echo marquee folder for fds not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fds/marquee /home/pi/PieMarquee2/marquee/fds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fds/marquee /home/pi/PieMarquee2/marquee/fds
fi

if [ ! -d /home/pi/RetroPie/roms/fm7/marquee ]; then
  mkdir /home/pi/RetroPie/roms/fm7 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fm7/marquee
  echo marquee folder for fm7 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fm7/marquee /home/pi/PieMarquee2/marquee/fm7
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fm7/marquee /home/pi/PieMarquee2/marquee/fm7
fi

if [ ! -d /home/pi/RetroPie/roms/gamate/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gamate >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamate/marquee
  echo marquee folder for gamate not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamate/marquee /home/pi/PieMarquee2/marquee/gamate
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamate/marquee /home/pi/PieMarquee2/marquee/gamate
fi

if [ ! -d /home/pi/RetroPie/roms/gamepock/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gamepock >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamepock/marquee
  echo marquee folder for gamepock not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamepock/marquee /home/pi/PieMarquee2/marquee/gamepock
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamepock/marquee /home/pi/PieMarquee2/marquee/gamepock
fi

if [ ! -d /home/pi/RetroPie/roms/gbah/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbah >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbah/marquee
  echo marquee folder for gbah not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbah/marquee /home/pi/PieMarquee2/marquee/gbah
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbah/marquee /home/pi/PieMarquee2/marquee/gbah
fi

if [ ! -d /home/pi/RetroPie/roms/gbh/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbh/marquee
  echo marquee folder for gbh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbh/marquee /home/pi/PieMarquee2/marquee/gbh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbh/marquee /home/pi/PieMarquee2/marquee/gbh
fi

if [ ! -d /home/pi/RetroPie/roms/gbm/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gbm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbm/marquee
  echo marquee folder for gbm not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbm/marquee /home/pi/PieMarquee2/marquee/gbm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbm/marquee /home/pi/PieMarquee2/marquee/gbm
fi

if [ ! -d /home/pi/RetroPie/roms/genh/marquee ]; then
  mkdir /home/pi/RetroPie/roms/genh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/genh/marquee
  echo marquee folder for genh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/genh/marquee /home/pi/PieMarquee2/marquee/genh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/genh/marquee /home/pi/PieMarquee2/marquee/genh
fi

if [ ! -d /home/pi/RetroPie/roms/ggh/marquee ]; then
  mkdir /home/pi/RetroPie/roms/ggh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ggh/marquee
  echo marquee folder for ggh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ggh/marquee /home/pi/PieMarquee2/marquee/ggh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ggh/marquee /home/pi/PieMarquee2/marquee/ggh
fi
if [ ! -d /home/pi/RetroPie/roms/gx4000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/gx4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gx4000/marquee
  echo marquee folder for gx4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gx4000/marquee /home/pi/PieMarquee2/marquee/gx4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gx4000/marquee /home/pi/PieMarquee2/marquee/gx4000
fi

if [ ! -d /home/pi/RetroPie/roms/instruction ]; then
  mkdir /home/pi/RetroPie/roms/instruction >/dev/null 2>&1
  echo instruction folder for instruction not found will now add !
  ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
fi

if [ ! -d /home/pi/RetroPie/roms/laser200/marquee ]; then
  mkdir /home/pi/RetroPie/roms/laser200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/laser200/marquee
  echo marquee folder for laser200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/laser200/marquee /home/pi/PieMarquee2/marquee/laser200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/laser200/marquee /home/pi/PieMarquee2/marquee/laser200
fi

if [ ! -d /home/pi/RetroPie/roms/m5/marquee ]; then
  mkdir /home/pi/RetroPie/roms/m5 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/m5/marquee
  echo marquee folder for m5 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/m5/marquee /home/pi/PieMarquee2/marquee/m5
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/m5/marquee /home/pi/PieMarquee2/marquee/m5
fi

if [ ! -d /home/pi/RetroPie/roms/mame/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame/marquee
  echo marquee folder for mame not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame/marquee /home/pi/PieMarquee2/marquee/mame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame/marquee /home/pi/PieMarquee2/marquee/mame
fi

if [ ! -d /home/pi/RetroPie/roms/markii/marquee ]; then
  mkdir /home/pi/RetroPie/roms/markii >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/markii/marquee
  echo marquee folder for markii not found will now add !
  ln -sfn /home/pi/RetroPie/roms/markii/marquee /home/pi/PieMarquee2/marquee/markii
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/markii/marquee /home/pi/PieMarquee2/marquee/markii
fi

if [ ! -d /home/pi/RetroPie/roms/megacd/marquee ]; then
  mkdir /home/pi/RetroPie/roms/megacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd/marquee
  echo marquee folder for megacd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd/marquee /home/pi/PieMarquee2/marquee/megacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd/marquee /home/pi/PieMarquee2/marquee/megacd
fi

if [ ! -d /home/pi/RetroPie/roms/megacd-japan/marquee ]; then
  mkdir /home/pi/RetroPie/roms/megacd-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd-japan/marquee
  echo marquee folder for megacd-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd-japan/marquee /home/pi/PieMarquee2/marquee/megacd-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd-japan/marquee /home/pi/PieMarquee2/marquee/megacd-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive-japan/marquee ]; then
  mkdir /home/pi/RetroPie/roms/megadrive-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive-japan/marquee
  echo marquee folder for megadrive-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive-japan/marquee /home/pi/PieMarquee2/marquee/megadrive-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive-japan/marquee /home/pi/PieMarquee2/marquee/megadrive-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megaduck/marquee ]; then
  mkdir /home/pi/RetroPie/roms/megaduck >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megaduck/marquee
  echo marquee folder for megaduck not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megaduck/marquee /home/pi/PieMarquee2/marquee/megaduck
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megaduck/marquee /home/pi/PieMarquee2/marquee/megaduck
fi

if [ ! -d /home/pi/RetroPie/roms/model2/marquee ]; then
  mkdir /home/pi/RetroPie/roms/model2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model2/marquee
  echo marquee folder for model2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model2/marquee /home/pi/PieMarquee2/marquee/model2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model2/marquee /home/pi/PieMarquee2/marquee/model2
fi

if [ ! -d /home/pi/RetroPie/roms/model3/marquee ]; then
  mkdir /home/pi/RetroPie/roms/model3 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model3/marquee
  echo marquee folder for model3 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model3/marquee /home/pi/PieMarquee2/marquee/model3
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model3/marquee /home/pi/PieMarquee2/marquee/model3
fi

if [ ! -d /home/pi/RetroPie/roms/msx2/marquee ]; then
  mkdir /home/pi/RetroPie/roms/msx2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2/marquee
  echo marquee folder for msx2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2/marquee /home/pi/PieMarquee2/marquee/msx2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2/marquee /home/pi/PieMarquee2/marquee/msx2
fi

if [ ! -d /home/pi/RetroPie/roms/msx2plus/marquee ]; then
  mkdir /home/pi/RetroPie/roms/msx2plus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2plus/marquee
  echo marquee folder for msx2plus not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2plus/marquee /home/pi/PieMarquee2/marquee/msx2plus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2plus/marquee /home/pi/PieMarquee2/marquee/msx2plus
fi

if [ ! -d /home/pi/RetroPie/roms/msxturbo/marquee ]; then
  mkdir /home/pi/RetroPie/roms/msxturbo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msxturbo/marquee
  echo marquee folder for msxturbo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msxturbo/marquee /home/pi/PieMarquee2/marquee/msxturbo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msxturbo/marquee /home/pi/PieMarquee2/marquee/msxturbo
fi

if [ ! -d /home/pi/RetroPie/roms/mtx/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mtx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mtx/marquee
  echo marquee folder for mtx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mtx/marquee /home/pi/PieMarquee2/marquee/mtx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mtx/marquee /home/pi/PieMarquee2/marquee/mtx
fi

if [ ! -d /home/pi/RetroPie/roms/multivision/marquee ]; then
  mkdir /home/pi/RetroPie/roms/multivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/multivision/marquee
  echo marquee folder for multivision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/multivision/marquee /home/pi/PieMarquee2/marquee/multivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/multivision/marquee /home/pi/PieMarquee2/marquee/multivision
fi

if [ ! -d /home/pi/RetroPie/roms/mz700/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mz700 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz700/marquee
  echo marquee folder for mz700 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz700/marquee /home/pi/PieMarquee2/marquee/mz700
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz700/marquee /home/pi/PieMarquee2/marquee/mz700
fi

if [ ! -d /home/pi/RetroPie/roms/mz2500/marquee ]; then
  mkdir /home/pi/RetroPie/roms/mz2500 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz2500/marquee
  echo marquee folder for mz2500 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz2500/marquee /home/pi/PieMarquee2/marquee/mz2500
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz2500/marquee /home/pi/PieMarquee2/marquee/mz2500
fi

if [ ! -d /home/pi/RetroPie/roms/n64dd/marquee ]; then
  mkdir /home/pi/RetroPie/roms/n64dd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64dd/marquee
  echo marquee folder for n64dd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64dd/marquee /home/pi/PieMarquee2/marquee/n64dd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64dd/marquee /home/pi/PieMarquee2/marquee/n64dd
fi

if [ ! -d /home/pi/RetroPie/roms/n64-japan/marquee ]; then
  mkdir /home/pi/RetroPie/roms/n64-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64-japan/marquee
  echo marquee folder for n64-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64-japan/marquee /home/pi/PieMarquee2/marquee/n64-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64-japan/marquee /home/pi/PieMarquee2/marquee/n64-japan
fi

if [ ! -d /home/pi/RetroPie/roms/neocdz/marquee ]; then
  mkdir /home/pi/RetroPie/roms/neocdz >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neocdz/marquee
  echo marquee folder for neocdz not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neocdz/marquee /home/pi/PieMarquee2/marquee/neocdz
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neocdz/marquee /home/pi/PieMarquee2/marquee/neocdz
fi

if [ ! -d /home/pi/RetroPie/roms/nesh/marquee ]; then
  mkdir /home/pi/RetroPie/roms/nesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nesh/marquee
  echo marquee folder for nesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nesh/marquee /home/pi/PieMarquee2/marquee/nesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nesh/marquee /home/pi/PieMarquee2/marquee/nesh
fi

if [ ! -d /home/pi/RetroPie/roms/plus4/marquee ]; then
  mkdir /home/pi/RetroPie/roms/plus4 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/plus4/marquee
  echo marquee folder for plus4 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/plus4/marquee /home/pi/PieMarquee2/marquee/plus4
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/plus4/marquee /home/pi/PieMarquee2/marquee/plus4
fi

if [ ! -d /home/pi/RetroPie/roms/psp-japan/marquee ]; then
  mkdir /home/pi/RetroPie/roms/psp-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp-japan/marquee
  echo marquee folder for psp-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp-japan/marquee /home/pi/PieMarquee2/marquee/psp-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp-japan/marquee /home/pi/PieMarquee2/marquee/psp-japan
fi

if [ ! -d /home/pi/RetroPie/roms/pspminis/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pspminis >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pspminis/marquee
  echo marquee folder for pspminis not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pspminis/marquee /home/pi/PieMarquee2/marquee/pspminis
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pspminis/marquee /home/pi/PieMarquee2/marquee/pspminis
fi

if [ ! -d /home/pi/RetroPie/roms/publisher ]; then
  mkdir /home/pi/RetroPie/roms/publisher >/dev/null 2>&1
  echo publisher folder for publisher not found will now add !
  ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
fi

if [ ! -d /home/pi/RetroPie/roms/pv1000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pv1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv1000/marquee
  echo marquee folder for pv1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv1000/marquee /home/pi/PieMarquee2/marquee/pv1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv1000/marquee /home/pi/PieMarquee2/marquee/pv1000
fi

if [ ! -d /home/pi/RetroPie/roms/pv2000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/pv2000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv2000/marquee
  echo marquee folder for pv2000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv2000/marquee /home/pi/PieMarquee2/marquee/pv2000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv2000/marquee /home/pi/PieMarquee2/marquee/pv2000
fi

if [ ! -d /home/pi/RetroPie/roms/satellaview/marquee ]; then
  mkdir /home/pi/RetroPie/roms/satellaview >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/satellaview/marquee
  echo marquee folder for satellaview not found will now add !
  ln -sfn /home/pi/RetroPie/roms/satellaview/marquee /home/pi/PieMarquee2/marquee/satellaview
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/satellaview/marquee /home/pi/PieMarquee2/marquee/satellaview
fi

if [ ! -d /home/pi/RetroPie/roms/saturn-japan/marquee ]; then
  mkdir /home/pi/RetroPie/roms/saturn-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn-japan/marquee
  echo marquee folder for saturn-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn-japan/marquee /home/pi/PieMarquee2/marquee/saturn-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn-japan/marquee /home/pi/PieMarquee2/marquee/saturn-japan
fi

if [ ! -d /home/pi/RetroPie/roms/sc-3000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/sc-3000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sc-3000/marquee
  echo marquee folder for sc-3000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sc-3000/marquee /home/pi/PieMarquee2/marquee/sc-3000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sc-3000/marquee /home/pi/PieMarquee2/marquee/sc-3000
fi

if [ ! -d /home/pi/RetroPie/roms/scv/marquee ]; then
  mkdir /home/pi/RetroPie/roms/scv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scv/marquee
  echo marquee folder for scv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scv/marquee /home/pi/PieMarquee2/marquee/scv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scv/marquee /home/pi/PieMarquee2/marquee/scv
fi

if [ ! -d /home/pi/RetroPie/roms/sfc/marquee ]; then
  mkdir /home/pi/RetroPie/roms/sfc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sfc/marquee
  echo marquee folder for sfc not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sfc/marquee /home/pi/PieMarquee2/marquee/sfc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sfc/marquee /home/pi/PieMarquee2/marquee/sfc
fi

if [ ! -d /home/pi/RetroPie/roms/sgb/marquee ]; then
  mkdir /home/pi/RetroPie/roms/sgb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sgb/marquee
  echo marquee folder for sgb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sgb/marquee /home/pi/PieMarquee2/marquee/sgb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sgb/marquee /home/pi/PieMarquee2/marquee/sgb
fi

if [ ! -d /home/pi/RetroPie/roms/snesh/marquee ]; then
  mkdir /home/pi/RetroPie/roms/snesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesh/marquee
  echo marquee folder for snesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesh/marquee /home/pi/PieMarquee2/marquee/snesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesh/marquee /home/pi/PieMarquee2/marquee/snesh
fi

if [ ! -d /home/pi/RetroPie/roms/sorcerer/marquee ]; then
  mkdir /home/pi/RetroPie/roms/sorcerer >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sorcerer/marquee
  echo marquee folder for sorcerer not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sorcerer/marquee /home/pi/PieMarquee2/marquee/sorcerer
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sorcerer/marquee /home/pi/PieMarquee2/marquee/sorcerer
fi

if [ ! -d /home/pi/RetroPie/roms/sufami/marquee ]; then
  mkdir /home/pi/RetroPie/roms/sufami >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sufami/marquee
  echo marquee folder for sufami not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sufami/marquee /home/pi/PieMarquee2/marquee/sufami
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sufami/marquee /home/pi/PieMarquee2/marquee/sufami
fi

if [ ! -d /home/pi/RetroPie/roms/supergrafx/marquee ]; then
  mkdir /home/pi/RetroPie/roms/supergrafx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/supergrafx/marquee
  echo marquee folder for supergrafx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/supergrafx/marquee /home/pi/PieMarquee2/marquee/supergrafx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/supergrafx/marquee /home/pi/PieMarquee2/marquee/supergrafx
fi

if [ ! -d /home/pi/RetroPie/roms/svi318/marquee ]; then
  mkdir /home/pi/RetroPie/roms/svi318 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svi318/marquee
  echo marquee folder for svi318 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svi318/marquee /home/pi/PieMarquee2/marquee/svi318
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svi318/marquee /home/pi/PieMarquee2/marquee/svi318
fi

if [ ! -d /home/pi/RetroPie/roms/svision/marquee ]; then
  mkdir /home/pi/RetroPie/roms/svision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svision/marquee
  echo marquee folder for svision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svision/marquee /home/pi/PieMarquee2/marquee/svision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svision/marquee /home/pi/PieMarquee2/marquee/svision
fi

if [ ! -d /home/pi/RetroPie/roms/tic80/marquee ]; then
  mkdir /home/pi/RetroPie/roms/tic80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tic80/marquee 
  echo marquee folder for tic80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tic80/marquee /home/pi/PieMarquee2/marquee/tic80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tic80/marquee /home/pi/PieMarquee2/marquee/tic80
fi

if [ ! -d /home/pi/RetroPie/roms/tutor/marquee ]; then
  mkdir /home/pi/RetroPie/roms/tutor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tutor/marquee
  echo marquee folder for tutor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tutor/marquee /home/pi/PieMarquee2/marquee/tutor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tutor/marquee /home/pi/PieMarquee2/marquee/tutor
fi

if [ ! -d /home/pi/RetroPie/roms/vc4000/marquee ]; then
  mkdir /home/pi/RetroPie/roms/vc4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vc4000/marquee
  echo marquee folder for vc4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vc4000/marquee /home/pi/PieMarquee2/marquee/vc4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vc4000/marquee /home/pi/PieMarquee2/marquee/vc4000
fi

if [ ! -d /home/pi/RetroPie/roms/vic20/marquee ]; then
  mkdir /home/pi/RetroPie/roms/vic20 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vic20/marquee
  echo marquee folder for vic20 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vic20/marquee /home/pi/PieMarquee2/marquee/vic20
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vic20/marquee /home/pi/PieMarquee2/marquee/vic20
fi

else
echo "$(tput setaf 6)
Looks like you have the marquee script off please turn it on and try again.
$(tput sgr0)"   
sleep 4
fi
}

# Make folder mixart SUPREME -----------------------------------------------------------------------------------------------------------------------------------
function system-mixar() {
	dialog --infobox "APPLYING CHANGES NOW" 3 25 ; sleep 6
	if [ ! -d /home/pi/PieMarquee3 ]; then
	
if [ ! -d /home/pi/RetroPie/roms/3do/mixart ]; then
  mkdir /home/pi/RetroPie/roms/3do >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/3do/mixart
  echo mixart folder for 3do was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/3do/mixart /home/pi/PieMarquee2/marquee/3do
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/3do/mixart /home/pi/PieMarquee2/marquee/3do
fi

if [ ! -d /home/pi/RetroPie/roms/ags/mixart ]; then
  mkdir /home/pi/RetroPie/roms/ags >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ags/mixart
  echo mixart folder for ags was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ags/mixart /home/pi/PieMarquee2/marquee/ags
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ags/mixart /home/pi/PieMarquee2/marquee/ags
fi

if [ ! -d /home/pi/RetroPie/roms/amiga/mixart ]; then
  mkdir /home/pi/RetroPie/roms/amiga >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga/mixart
  echo mixart folder for amiga was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga/mixart /home/pi/PieMarquee2/marquee/amiga
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga/mixart /home/pi/PieMarquee2/marquee/amiga
fi

if [ ! -d /home/pi/RetroPie/roms/amstradcpc/mixart ]; then
  mkdir /home/pi/RetroPie/roms/amstradcpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amstradcpc/mixart
  echo mixart folder for amstradcpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amstradcpc/mixart /home/pi/PieMarquee2/marquee/amstradcpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amstradcpc/mixart /home/pi/PieMarquee2/marquee/amstradcpc
fi

if [ ! -d /home/pi/RetroPie/roms/apple2/mixart ]; then
  mkdir /home/pi/RetroPie/roms/apple2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2/mixart
  echo mixart folder for apple2 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2/mixart /home/pi/PieMarquee2/marquee/apple2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2/mixart /home/pi/PieMarquee2/marquee/apple2
fi

if [ ! -d /home/pi/RetroPie/roms/arcade/mixart ]; then
  mkdir /home/pi/RetroPie/roms/aracde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcade/mixart
  echo mixart folder for arcade was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcade/mixart /home/pi/PieMarquee2/marquee/arcade
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcade/mixart /home/pi/PieMarquee2/marquee/arcade
fi

if [ ! -d /home/pi/RetroPie/roms/arcadia/mixart ]; then
  mkdir /home/pi/RetroPie/roms/arcadia >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcadia/mixart
  echo mixart folder for arcadia was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcadia/mixart /home/pi/PieMarquee2/marquee/arcadia
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcadia/mixart /home/pi/PieMarquee2/marquee/arcadia
fi

if [ ! -d /home/pi/RetroPie/roms/atari800/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atari800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari800/mixart
  echo mixart folder for atari800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari800/mixart /home/pi/PieMarquee2/marquee/atari800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari800/mixart /home/pi/PieMarquee2/marquee/atari800
fi

if [ ! -d /home/pi/RetroPie/roms/atari2600/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atari2600 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari2600/mixart
  echo mixart folder for atari2600 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari2600/mixart /home/pi/PieMarquee2/marquee/atari2600
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari2600/mixart /home/pi/PieMarquee2/marquee/atari2600
fi

if [ ! -d /home/pi/RetroPie/roms/atari5200/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atari5200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari5200/mixart
  echo mixart folder for atari5200 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari5200/mixart /home/pi/PieMarquee2/marquee/atari5200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari5200/mixart /home/pi/PieMarquee2/marquee/atari5200
fi

if [ ! -d /home/pi/RetroPie/roms/atari7800/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atari7800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari7800/mixart
  echo mixart folder for atari7800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari7800/mixart /home/pi/PieMarquee2/marquee/atari7800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari7800/mixart /home/pi/PieMarquee2/marquee/atari7800
fi

if [ ! -d /home/pi/RetroPie/roms/atarijaguar/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atarijaguar >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarijaguar/mixart
  echo mixart folder for atarijaguar was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarijaguar/mixart /home/pi/PieMarquee2/marquee/atarijaguar
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarijaguar/mixart /home/pi/PieMarquee2/marquee/atarijaguar
fi

if [ ! -d /home/pi/RetroPie/roms/atarilynx/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atarilynx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarilynx/mixart
  echo mixart folder for atarilynx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarilynx/mixart /home/pi/PieMarquee2/marquee/atarilynx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarilynx/mixart /home/pi/PieMarquee2/marquee/atarilynx
fi

if [ ! -d /home/pi/RetroPie/roms/atarist/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atarist >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarist/mixart
  echo mixart folder for atarist was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarist/mixart /home/pi/PieMarquee2/marquee/atarist
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarist/mixart /home/pi/PieMarquee2/marquee/atarist
fi

if [ ! -d /home/pi/RetroPie/roms/atomiswave/mixart ]; then
  mkdir /home/pi/RetroPie/roms/atomiswave >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atomiswave/mixart
  echo mixart folder for atomiswave was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atomiswave/mixart /home/pi/PieMarquee2/marquee/atomiswave
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atomiswave/mixart /home/pi/PieMarquee2/marquee/atomiswave
fi

if [ ! -d /home/pi/RetroPie/roms/channelf/mixart ]; then
  mkdir /home/pi/RetroPie/roms/channelf >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/channelf/mixart
  echo mixart folder for channelf was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/channelf/mixart /home/pi/PieMarquee2/marquee/channelf
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/channelf/mixart /home/pi/PieMarquee2/marquee/channelf
fi

if [ ! -d /home/pi/RetroPie/roms/chromium/mixart ]; then
  mkdir /home/pi/RetroPie/roms/chromium >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/chromium/mixart
  echo mixart folder for chromium was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/chromium/mixart /home/pi/PieMarquee2/marquee/chromium
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/chromium/mixart /home/pi/PieMarquee2/marquee/chromium
fi

if [ ! -d /home/pi/RetroPie/roms/coco/mixart ]; then
  mkdir /home/pi/RetroPie/roms/coco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coco/mixart
  echo mixart folder for coco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coco/mixart /home/pi/PieMarquee2/marquee/coco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coco/mixart /home/pi/PieMarquee2/marquee/coco
fi

if [ ! -d /home/pi/RetroPie/roms/coleco/mixart ]; then
  mkdir /home/pi/RetroPie/roms/coleco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coleco/mixart
  echo mixart folder for coleco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coleco/mixart /home/pi/PieMarquee2/marquee/coleco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coleco/mixart /home/pi/PieMarquee2/marquee/coleco
fi

if [ ! -d /home/pi/RetroPie/roms/crvision/mixart ]; then
  mkdir /home/pi/RetroPie/roms/crvision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/crvision/mixart
  echo mixart folder for crvision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/crvision/mixart /home/pi/PieMarquee2/marquee/crvision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/crvision/mixart /home/pi/PieMarquee2/marquee/crvision
fi

if [ ! -d /home/pi/RetroPie/roms/daphne/mixart ]; then
  mkdir /home/pi/RetroPie/roms/daphne >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/daphne/mixart
  echo mixart folder for daphne was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/daphne/mixart /home/pi/PieMarquee2/marquee/daphne
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/daphne/mixart /home/pi/PieMarquee2/marquee/daphne
fi

if [ ! -d /home/pi/RetroPie/roms/dragon32/mixart ]; then
  mkdir /home/pi/RetroPie/roms/dragon32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dragon32/mixart
  echo mixart folder for dragon32 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dragon32/mixart /home/pi/PieMarquee2/marquee/dragon32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dragon32/mixart /home/pi/PieMarquee2/marquee/dragon32
fi

if [ ! -d /home/pi/RetroPie/roms/dreamcast/mixart ]; then
  mkdir /home/pi/RetroPie/roms/dreamcast >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dreamcast/mixart
  echo mixart folder for dreamcast was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dreamcast/mixart /home/pi/PieMarquee2/marquee/dreamcast
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dreamcast/mixart /home/pi/PieMarquee2/marquee/dreamcast
fi

if [ ! -d /home/pi/RetroPie/roms/gameandwatch/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gameandwatch >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gameandwatch/mixart
  echo mixart folder for gameandwatch was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gameandwatch/mixart /home/pi/PieMarquee2/marquee/gameandwatch
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gameandwatch/mixart /home/pi/PieMarquee2/marquee/gameandwatch
fi

if [ ! -d /home/pi/RetroPie/roms/gamegear/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gamegear >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamegear/mixart
  echo mixart folder for gamegear was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamegear/mixart /home/pi/PieMarquee2/marquee/gamegear
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamegear/mixart /home/pi/PieMarquee2/marquee/gamegear
fi

if [ ! -d /home/pi/RetroPie/roms/gb/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gb/mixart
  echo mixart folder for gb was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gb/mixart /home/pi/PieMarquee2/marquee/gb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gb/mixart /home/pi/PieMarquee2/marquee/gb
fi

if [ ! -d /home/pi/RetroPie/roms/gba/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gba/mixart
  echo mixart folder for gba was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gba/mixart /home/pi/PieMarquee2/marquee/gba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gba/mixart /home/pi/PieMarquee2/marquee/gba
fi

if [ ! -d /home/pi/RetroPie/roms/gbc/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gbc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbc/mixart
  echo mixart folder for gbc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbc/mixart /home/pi/PieMarquee2/marquee/gbc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbc/mixart /home/pi/PieMarquee2/marquee/gbc
fi

if [ ! -d /home/pi/RetroPie/roms/intellivision/mixart ]; then
  mkdir /home/pi/RetroPie/roms/intellivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/intellivision/mixart
  echo mixart folder for intellivision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/intellivision/mixart /home/pi/PieMarquee2/marquee/intellivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/intellivision/mixart /home/pi/PieMarquee2/marquee/intellivision
fi

if [ ! -d /home/pi/RetroPie/roms/kodi/mixart ]; then
  mkdir /home/pi/RetroPie/roms/kodi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/kodi/mixart
  echo mixart folder for kodi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/kodi/mixart /home/pi/PieMarquee2/marquee/kodi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/kodi/mixart /home/pi/PieMarquee2/marquee/kodi
fi

if [ ! -d /home/pi/RetroPie/roms/love/mixart ]; then
  mkdir /home/pi/RetroPie/roms/love >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/love/mixart
  echo mixart folder for love was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/love/mixart /home/pi/PieMarquee2/marquee/love
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/love/mixart /home/pi/PieMarquee2/marquee/love
fi

if [ ! -d /home/pi/RetroPie/roms/macintosh/mixart ]; then
  mkdir /home/pi/RetroPie/roms/macintosh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/macintosh/mixart
  echo mixart folder for macintosh was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/macintosh/mixart /home/pi/PieMarquee2/marquee/macintosh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/macintosh/mixart /home/pi/PieMarquee2/marquee/macintosh
fi

if [ ! -d /home/pi/RetroPie/roms/mame-advmame/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mame-advmame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-advmame/mixart
  echo mixart folder for mame-advmame was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-advmame/mixart /home/pi/PieMarquee2/marquee/mame-advmame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-advmame/mixart /home/pi/PieMarquee2/marquee/mame-advmame
fi

if [ ! -d /home/pi/RetroPie/roms/mame-libretro/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mame-libretro >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-libretro/mixart
  echo mixart folder for mame-libretro was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-libretro/mixart /home/pi/PieMarquee2/marquee/mame-libretro
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-libretro/mixart /home/pi/PieMarquee2/marquee/mame-libretro
fi

if [ ! -d /home/pi/RetroPie/roms/mame-mame4all/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mame-mame4all >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-mame4all/mixart
  echo mixart folder for mame-mame4all was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-mame4all/mixart /home/pi/PieMarquee2/marquee/mame-mame4all
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-mame4all/mixart /home/pi/PieMarquee2/marquee/mame-mame4all
fi

if [ ! -d /home/pi/RetroPie/roms/mastersystem/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mastersystem >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mastersystem/mixart
  echo mixart folder for mastersystem was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mastersystem/mixart /home/pi/PieMarquee2/marquee/mastersystem
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mastersystem/mixart /home/pi/PieMarquee2/marquee/mastersystem
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive/mixart ]; then
  mkdir /home/pi/RetroPie/roms/megadrive >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive/mixart
  echo mixart folder for megadrive was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive/mixart /home/pi/PieMarquee2/marquee/megadrive
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive/mixart /home/pi/PieMarquee2/marquee/megadrive
fi

if [ ! -d /home/pi/RetroPie/roms/msx/mixart ]; then
  mkdir /home/pi/RetroPie/roms/msx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx/mixart
  echo mixart folder for msx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx/mixart /home/pi/PieMarquee2/marquee/msx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx/mixart /home/pi/PieMarquee2/marquee/msx
fi

if [ ! -d /home/pi/RetroPie/roms/n64/mixart ]; then
  mkdir /home/pi/RetroPie/roms/n64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64/mixart
  echo mixart folder for n64 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64/mixart /home/pi/PieMarquee2/marquee/n64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64/mixart /home/pi/PieMarquee2/marquee/n64
fi

if [ ! -d /home/pi/RetroPie/roms/naomi/mixart ]; then
  mkdir /home/pi/RetroPie/roms/naomi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/naomi/mixart
  echo mixart folder for naomi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/naomi/mixart /home/pi/PieMarquee2/marquee/naomi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/mixart /home/pi/PieMarquee2/marquee/naomi
fi

if [ ! -d /home/pi/RetroPie/roms/nds/mixart ]; then
  mkdir /home/pi/RetroPie/roms/nds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nds/mixart
  echo mixart folder for nds was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nds/mixart /home/pi/PieMarquee2/marquee/nds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/mixart /home/pi/PieMarquee2/marquee/nds
fi

if [ ! -d /home/pi/RetroPie/roms/neogeo/mixart ]; then
  mkdir /home/pi/RetroPie/roms/neogeo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeo/mixart
  echo mixart folder for neogeo was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeo/mixart /home/pi/PieMarquee2/marquee/neogeo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeo/mixart /home/pi/PieMarquee2/marquee/neogeo
fi

if [ ! -d /home/pi/RetroPie/roms/neogeocd/mixart ]; then
  mkdir /home/pi/RetroPie/roms/neogeocd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeocd/mixart
  echo mixart folder for neogeocd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeocd/mixart /home/pi/PieMarquee2/marquee/neogeocd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeocd/mixart /home/pi/PieMarquee2/marquee/neogeocd
fi

if [ ! -d /home/pi/RetroPie/roms/nes/mixart ]; then
  mkdir /home/pi/RetroPie/roms/nes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nes/mixart
  echo mixart folder for nes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nes/mixart /home/pi/PieMarquee2/marquee/nes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nes/mixart /home/pi/PieMarquee2/marquee/nes
fi

if [ ! -d /home/pi/RetroPie/roms/ngp/mixart ]; then
  mkdir /home/pi/RetroPie/roms/ngp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngp/mixart
  echo mixart folder for ngp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngp/mixart /home/pi/PieMarquee2/marquee/ngp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngp/mixart /home/pi/PieMarquee2/marquee/ngp
fi

if [ ! -d /home/pi/RetroPie/roms/ngpc/mixart ]; then
  mkdir /home/pi/RetroPie/roms/ngpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngpc/mixart
  echo mixart folder for ngpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngpc/mixart /home/pi/PieMarquee2/marquee/ngpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngpc/mixart /home/pi/PieMarquee2/marquee/ngpc
fi

if [ ! -d /home/pi/RetroPie/roms/openbor/mixart ]; then
  mkdir /home/pi/RetroPie/roms/openbor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/openbor/mixart
  echo mixart folder for openbor was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/openbor/mixart /home/pi/PieMarquee2/marquee/openbor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/openbor/mixart /home/pi/PieMarquee2/marquee/openbor
fi

if [ ! -d /home/pi/RetroPie/roms/oric/mixart ]; then
  mkdir /home/pi/RetroPie/roms/oric >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/oric/mixart
  echo mixart folder for oric was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/oric/mixart /home/pi/PieMarquee2/marquee/oric
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/oric/mixart /home/pi/PieMarquee2/marquee/oric
fi

if [ ! -d /home/pi/RetroPie/roms/pc/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc/mixart
  echo mixart folder for pc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc/mixart /home/pi/PieMarquee2/marquee/pc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc/mixart /home/pi/PieMarquee2/marquee/pc
fi

if [ ! -d /home/pi/RetroPie/roms/pc88/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pc88 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc88/mixart
  echo mixart folder for pc88 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc88/mixart /home/pi/PieMarquee2/marquee/pc88
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc88/mixart /home/pi/PieMarquee2/marquee/pc88
fi

if [ ! -d /home/pi/RetroPie/roms/pc98/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pc98 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc98/mixart
  echo mixart folder for pc98 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc98/mixart /home/pi/PieMarquee2/marquee/pc98
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc98/mixart /home/pi/PieMarquee2/marquee/pc98
fi

if [ ! -d /home/pi/RetroPie/roms/pcengine/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pcengine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcengine/mixart
  echo mixart folder for pcengine was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcengine/mixart /home/pi/PieMarquee2/marquee/pcengine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcengine/mixart /home/pi/PieMarquee2/marquee/pcengine
fi

if [ ! -d /home/pi/RetroPie/roms/pcenginecd/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pcenginecd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcenginecd/mixart
  echo mixart folder for pcenginecd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcenginecd/mixart /home/pi/PieMarquee2/marquee/pcenginecd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcenginecd/mixart /home/pi/PieMarquee2/marquee/pcenginecd
fi

if [ ! -d /home/pi/RetroPie/roms/pcfx/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pcfx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcfx/mixart
  echo mixart folder for pcfx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcfx/mixart /home/pi/PieMarquee2/marquee/pcfx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcfx/mixart /home/pi/PieMarquee2/marquee/pcfx
fi

if [ ! -d /home/pi/RetroPie/roms/.supremeteammarquee ]; then
  mkdir /home/pi/RetroPie/roms/.supremeteammarquee >/dev/null 2>&1
  sleep 1
fi

if [ ! -d /home/pi/RetroPie/roms/pixel/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pixel >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pixel/mixart
  echo mixart folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pixel/mixart /home/pi/PieMarquee2/marquee/pixel
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pixel/mixart /home/pi/PieMarquee2/marquee/pixel
fi

if [ ! -d /home/pi/RetroPie/roms/pokemini/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pokemini >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pokemini/mixart
  echo mixart folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pokemini/mixart /home/pi/PieMarquee2/marquee/pokemini
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pokemini/mixart /home/pi/PieMarquee2/marquee/pokemini
fi

if [ ! -d /home/pi/RetroPie/roms/ports/mixart ]; then
  mkdir /home/pi/RetroPie/roms/ports >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ports/mixart
  echo mixart folder for ports was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ports/mixart /home/pi/PieMarquee2/marquee/ports
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ports/mixart /home/pi/PieMarquee2/marquee/ports
fi

if [ ! -d /home/pi/RetroPie/roms/power/mixart ]; then
  mkdir /home/pi/RetroPie/roms/power >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/power/mixart
  echo mixart folder for power was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/power/mixart /home/pi/PieMarquee2/marquee/power
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/power/mixart /home/pi/PieMarquee2/marquee/power
fi

if [ ! -d /home/pi/RetroPie/roms/psp/mixart ]; then
  mkdir /home/pi/RetroPie/roms/psp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp/mixart
  echo mixart folder for psp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp/mixart /home/pi/PieMarquee2/marquee/psp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp/mixart /home/pi/PieMarquee2/marquee/psp
fi

if [ ! -d /home/pi/RetroPie/roms/psx/mixart ]; then
  mkdir /home/pi/RetroPie/roms/psx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psx/mixart
  echo mixart folder for psx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psx/mixart /home/pi/PieMarquee2/marquee/psx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psx/mixart /home/pi/PieMarquee2/marquee/psx
fi

if [ ! -d /home/pi/RetroPie/roms/residualvm/mixart ]; then
  mkdir /home/pi/RetroPie/roms/residualvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/residualvm/mixart
  echo mixart folder for residualvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/residualvm/mixart /home/pi/PieMarquee2/marquee/residualvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/residualvm/mixart /home/pi/PieMarquee2/marquee/residualvm
fi

if [ ! -d /home/pi/RetroPie/roms/samcoupe/mixart ]; then
  mkdir /home/pi/RetroPie/roms/samcoupe >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/samcoupe/mixart
  echo mixart folder for samcoupe was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/samcoupe/mixart /home/pi/PieMarquee2/marquee/samcoupe
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/samcoupe/mixart /home/pi/PieMarquee2/marquee/samcoupe
fi

if [ ! -d /home/pi/RetroPie/roms/saturn/mixart ]; then
  mkdir /home/pi/RetroPie/roms/saturn >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn/mixart
  echo mixart folder for saturn was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn/mixart /home/pi/PieMarquee2/marquee/saturn
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn/mixart /home/pi/PieMarquee2/marquee/saturn
fi

if [ ! -d /home/pi/RetroPie/roms/scummvm/mixart ]; then
  mkdir /home/pi/RetroPie/roms/scummvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scummvm/mixart
  echo mixart folder for scummvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scummvm/mixart /home/pi/PieMarquee2/marquee/scummvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scummvm/mixart /home/pi/PieMarquee2/marquee/scummvm
fi

if [ ! -d /home/pi/RetroPie/roms/sega32x/mixart ]; then
  mkdir /home/pi/RetroPie/roms/sega32x >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sega32x/mixart
  echo mixart folder for sega32x was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sega32x/mixart /home/pi/PieMarquee2/marquee/sega32x
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sega32x/mixart /home/pi/PieMarquee2/marquee/sega32x
fi

if [ ! -d /home/pi/RetroPie/roms/segacd/mixart ]; then
  mkdir /home/pi/RetroPie/roms/segacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/segacd/mixart
  echo mixart folder for segacd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/segacd/mixart /home/pi/PieMarquee2/marquee/segacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/segacd/mixart /home/pi/PieMarquee2/marquee/segacd
fi

if [ ! -d /home/pi/RetroPie/roms/sg-1000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/sg-1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sg-1000/mixart
  echo mixart folder for sg-1000 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sg-1000/mixart /home/pi/PieMarquee2/marquee/sg-1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sg-1000/mixart /home/pi/PieMarquee2/marquee/sg-1000
fi

if [ ! -d /home/pi/RetroPie/roms/snes/mixart ]; then
  mkdir /home/pi/RetroPie/roms/snes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snes/mixart
  echo mixart folder for snes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snes/mixart /home/pi/PieMarquee2/marquee/snes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snes/mixart /home/pi/PieMarquee2/marquee/snes
fi

if [ ! -d /home/pi/RetroPie/roms/snesmsu1/mixart ]; then
  mkdir /home/pi/RetroPie/roms/snesmsu1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesmsu1/mixart
  echo mixart folder for snesmsu1 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesmsu1/mixart /home/pi/PieMarquee2/marquee/snesmsu1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesmsu1/mixart /home/pi/PieMarquee2/marquee/snesmsu1
fi

if [ ! -d /home/pi/RetroPie/roms/solarus/mixart ]; then
  mkdir /home/pi/RetroPie/roms/solarus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/solarus/mixart
  echo mixart folder for solarus was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/solarus/mixart /home/pi/PieMarquee2/marquee/solarus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/solarus/mixart /home/pi/PieMarquee2/marquee/solarus
fi

if [ ! -d /home/pi/RetroPie/roms/steam/mixart ]; then
  mkdir /home/pi/RetroPie/roms/steam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/steam/mixart
  echo mixart folder for steam was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/steam/mixart /home/pi/PieMarquee2/marquee/steam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/steam/mixart /home/pi/PieMarquee2/marquee/steam
fi

if [ ! -d /home/pi/RetroPie/roms/stratagus/mixart ]; then
  mkdir /home/pi/RetroPie/roms/stratagus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/stratagus/mixart
  echo mixart folder for strataguswas not found will now add !
  ln -sfn /home/pi/RetroPie/roms/stratagus/mixart /home/pi/PieMarquee2/marquee/stratagus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/stratagus/mixart /home/pi/PieMarquee2/marquee/stratagus
fi

if [ ! -d /home/pi/RetroPie/roms/tg16/mixart ]; then
  mkdir /home/pi/RetroPie/roms/tg16 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16/mixart
  echo mixart folder for tg16 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16/mixart /home/pi/PieMarquee2/marquee/tg16
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16/mixart /home/pi/PieMarquee2/marquee/tg16
fi

if [ ! -d /home/pi/RetroPie/roms/tg16cd/mixart ]; then
  mkdir /home/pi/RetroPie/roms/tg16cd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16cd/mixart
  echo mixart folder for tg16cd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16cd/mixart /home/pi/PieMarquee2/marquee/tg16cd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16cd/mixart /home/pi/PieMarquee2/marquee/tg16cd
fi

if [ ! -d /home/pi/RetroPie/roms/ti99/mixart ]; then
  mkdir /home/pi/RetroPie/roms/ti99 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ti99/mixart
  echo mixart folder for ti99 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ti99/mixart /home/pi/PieMarquee2/marquee/ti99
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ti99/mixart /home/pi/PieMarquee2/marquee/ti99
fi

if [ ! -d /home/pi/RetroPie/roms/trs-80/mixart ]; then
  mkdir /home/pi/RetroPie/roms/trs-80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/trs-80/mixart
  echo mixart folder for trs-80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/trs-80/mixart /home/pi/PieMarquee2/marquee/trs-80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/trs-80/mixart /home/pi/PieMarquee2/marquee/trs-80
fi

if [ ! -d /home/pi/RetroPie/roms/vectrex/mixart ]; then
  mkdir /home/pi/RetroPie/roms/vectrex >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vectrex/mixart
  echo mixart folder for vectrex not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vectrex/mixart /home/pi/PieMarquee2/marquee/vectrex
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vectrex/mixart /home/pi/PieMarquee2/marquee/vectrex
fi

if [ ! -d /home/pi/RetroPie/roms/videopac/mixart ]; then
  mkdir /home/pi/RetroPie/roms/videopac >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/videopac/mixart
  echo mixart folder for videopac not found will now add !
  ln -sfn /home/pi/RetroPie/roms/videopac/mixart /home/pi/PieMarquee2/marquee/videopac
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/videopac/mixart /home/pi/PieMarquee2/marquee/videopac
fi

if [ ! -d /home/pi/RetroPie/roms/virtualboy/mixart ]; then
  mkdir /home/pi/RetroPie/roms/virtualboy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/virtualboy/mixart
  echo mixart folder for virtualboy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/virtualboy/mixart /home/pi/PieMarquee2/marquee/virtualboy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/virtualboy/mixart /home/pi/PieMarquee2/marquee/virtualboy
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswan/mixart ]; then
  mkdir /home/pi/RetroPie/roms/wonderswan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswan/mixart
  echo mixart folder for wonderswan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswan/mixart /home/pi/PieMarquee2/marquee/wonderswan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswan/mixart /home/pi/PieMarquee2/marquee/wonderswan
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswancolor/mixart ]; then
  mkdir /home/pi/RetroPie/roms/wonderswancolor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswancolor/mixart
  echo mixart folder for wonderswancolor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswancolor/mixart /home/pi/PieMarquee2/marquee/wonderswancolor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswancolor/mixart /home/pi/PieMarquee2/marquee/wonderswancolor
fi

if [ ! -d /home/pi/RetroPie/roms/x1/mixart ]; then
  mkdir /home/pi/RetroPie/roms/x1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x1/mixart
  echo mixart folder for x1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x1/mixart /home/pi/PieMarquee2/marquee/x1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x1/mixart /home/pi/PieMarquee2/marquee/x1
fi

if [ ! -d /home/pi/RetroPie/roms/x68000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/x68000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x68000/mixart
  echo mixart folder for x68000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x68000/mixart /home/pi/PieMarquee2/marquee/x68000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x68000/mixart /home/pi/PieMarquee2/marquee/x68000
fi

if [ ! -d /home/pi/RetroPie/roms/zmachine/mixart ]; then
  mkdir /home/pi/RetroPie/roms/zmachine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zmachine/mixart
  echo mixart folder for zmachine not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zmachine/mixart /home/pi/PieMarquee2/marquee/zmachine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zmachine/mixart /home/pi/PieMarquee2/marquee/zmachine
fi

if [ ! -d /home/pi/RetroPie/roms/zx81/mixart ]; then
  mkdir /home/pi/RetroPie/roms/zx81 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zx81/mixart
  echo mixart folder for zx81 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zx81/mixart /home/pi/PieMarquee2/marquee/zx81
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zx81/mixart /home/pi/PieMarquee2/marquee/zx81
fi

if [ ! -d /home/pi/RetroPie/roms/zxspectrum/mixart ]; then
  mkdir /home/pi/RetroPie/roms/zxspectrum >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zxspectrum/mixart
  echo mixart folder for zxspectrum not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zxspectrum/mixart /home/pi/PieMarquee2/marquee/zxspectrum
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zxspectrum/mixart /home/pi/PieMarquee2/marquee/zxspectrum
fi

if [ ! -d /home/pi/RetroPie/roms/adam/mixart ]; then
  mkdir /home/pi/RetroPie/roms/adam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/adam/mixart
  echo mixart folder for adam not found will now add !
  ln -sfn /home/pi/RetroPie/roms/adam/mixart /home/pi/PieMarquee2/marquee/adam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/adam/mixart /home/pi/PieMarquee2/marquee/adam
fi

if [ ! -d /home/pi/RetroPie/roms/advision/mixart ]; then
  mkdir /home/pi/RetroPie/roms/advision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/advision/mixart
  echo mixart folder for advision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/advision/mixart /home/pi/PieMarquee2/marquee/advision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/advision/mixart /home/pi/PieMarquee2/marquee/advision
fi

if [ ! -d /home/pi/RetroPie/roms/amiga1200/mixart ]; then
  mkdir /home/pi/RetroPie/roms/amiga1200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga1200/mixart
  echo mixart folder for amiga1200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga1200/mixart /home/pi/PieMarquee2/marquee/amiga1200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga1200/mixart /home/pi/PieMarquee2/marquee/amiga1200
fi

if [ ! -d /home/pi/RetroPie/roms/amigacd32/mixart ]; then
  mkdir /home/pi/RetroPie/roms/amigacd32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amigacd32/mixart
  echo mixart folder for amigacd32 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amigacd32/mixart /home/pi/PieMarquee2/marquee/amigacd32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amigacd32/mixart /home/pi/PieMarquee2/marquee/amigacd32
fi

if [ ! -d /home/pi/RetroPie/roms/apfm1000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/apfm1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apfm1000/mixart
  echo mixart folder for apfm1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apfm1000/mixart /home/pi/PieMarquee2/marquee/apfm1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apfm1000/mixart /home/pi/PieMarquee2/marquee/apfm1000
fi

if [ ! -d /home/pi/RetroPie/roms/apple2gs/mixart ]; then
  mkdir /home/pi/RetroPie/roms/apple2gs >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2gs/mixart
  echo mixart folder for apple2gs not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2gs/mixart /home/pi/PieMarquee2/marquee/apple2gs
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2gs/mixart /home/pi/PieMarquee2/marquee/apple2gs
fi

if [ ! -d /home/pi/RetroPie/roms/astrocde/mixart ]; then
  mkdir /home/pi/RetroPie/roms/astrocde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/astrocde/mixart
  echo mixart folder for astrocde not found will now add !
  ln -sfn /home/pi/RetroPie/roms/astrocde/mixart /home/pi/PieMarquee2/marquee/astrocde
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/astrocde/mixart /home/pi/PieMarquee2/marquee/astrocde
fi

if [ ! -d /home/pi/RetroPie/roms/bbcb/mixart ]; then
  mkdir /home/pi/RetroPie/roms/bbcb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/bbcb/mixart
  echo mixart folder for bbcb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/bbcb/mixart /home/pi/PieMarquee2/marquee/bbcb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/bbcb/mixart /home/pi/PieMarquee2/marquee/bbcb
fi

if [ ! -d /home/pi/RetroPie/roms/c64/mixart ]; then
  mkdir /home/pi/RetroPie/roms/c64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c64/mixart
  echo mixart folder for c64 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c64/mixart /home/pi/PieMarquee2/marquee/c64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c64/mixart /home/pi/PieMarquee2/marquee/c64
fi

if [ ! -d /home/pi/RetroPie/roms/c128/mixart ]; then
  mkdir /home/pi/RetroPie/roms/c128 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c128/mixart
  echo mixart folder for c128 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c128/mixart /home/pi/PieMarquee2/marquee/c128
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c128/mixart /home/pi/PieMarquee2/marquee/c128
fi


if [ ! -d /home/pi/RetroPie/roms/cdimono1/mixart ]; then
  mkdir /home/pi/RetroPie/roms/cdimono1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdimono1/mixart
  echo mixart folder for cdimono1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdimono1/mixart /home/pi/PieMarquee2/marquee/cdimono1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdimono1/mixart /home/pi/PieMarquee2/marquee/cdimono1
fi

if [ ! -d /home/pi/RetroPie/roms/cdtv/mixart ]; then
  mkdir /home/pi/RetroPie/roms/cdtv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdtv/mixart
  echo mixart folder for cdtv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdtv/mixart /home/pi/PieMarquee2/marquee/cdtv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdtv/mixart /home/pi/PieMarquee2/marquee/cdtv
fi

if [ ! -d /home/pi/RetroPie/roms/custom ]; then
  mkdir /home/pi/RetroPie/roms/custom >/dev/null 2>&1
  echo custom folder for custom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
fi

if [ ! -d /home/pi/RetroPie/roms/system ]; then
  mkdir /home/pi/RetroPie/roms/system >/dev/null 2>&1
  echo system folder for system not found will now add !
  ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
fi

if [ ! -d /home/pi/RetroPie/roms/dendy/mixart ]; then
  mkdir /home/pi/RetroPie/roms/dendy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dendy/mixart
  echo mixart folder for dendy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dendy/mixart /home/pi/PieMarquee2/marquee/dendy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dendy/mixart /home/pi/PieMarquee2/marquee/dendy
fi

if [ ! -d /home/pi/RetroPie/roms/electron/mixart ]; then
  mkdir /home/pi/RetroPie/roms/electron >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/electron/mixart
  echo mixart folder for electron not found will now add !
  ln -sfn /home/pi/RetroPie/roms/electron/mixart /home/pi/PieMarquee2/marquee/electron
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/electron/mixart /home/pi/PieMarquee2/marquee/electron
fi

if [ ! -d /home/pi/RetroPie/roms/famicom/mixart ]; then
  mkdir /home/pi/RetroPie/roms/famicom >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/famicom/mixart
  echo mixart folder for famicom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/famicom/mixart /home/pi/PieMarquee2/marquee/famicom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/famicom/mixart /home/pi/PieMarquee2/marquee/famicom
fi

if [ ! -d /home/pi/RetroPie/roms/fba/mixart ]; then
  mkdir /home/pi/RetroPie/roms/fba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fba/mixart
  echo mixart folder for fba not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fba/mixart /home/pi/PieMarquee2/marquee/fba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fba/mixart /home/pi/PieMarquee2/marquee/fba
fi

if [ ! -d /home/pi/RetroPie/roms/fbneo/mixart ]; then
  mkdir /home/pi/RetroPie/roms/fbneo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fbneo/mixart
  echo mixart folder for fbneo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fbneo/mixart /home/pi/PieMarquee2/marquee/fbneo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fbneo/mixart /home/pi/PieMarquee2/marquee/fbneo
fi

if [ ! -d /home/pi/RetroPie/roms/fds/mixart ]; then
  mkdir /home/pi/RetroPie/roms/fds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fds/mixart
  echo mixart folder for fds not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fds/mixart /home/pi/PieMarquee2/marquee/fds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fds/mixart /home/pi/PieMarquee2/marquee/fds
fi

if [ ! -d /home/pi/RetroPie/roms/fm7/mixart ]; then
  mkdir /home/pi/RetroPie/roms/fm7 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fm7/mixart
  echo mixart folder for fm7 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fm7/mixart /home/pi/PieMarquee2/marquee/fm7
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fm7/mixart /home/pi/PieMarquee2/marquee/fm7
fi

if [ ! -d /home/pi/RetroPie/roms/gamate/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gamate >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamate/mixart
  echo mixart folder for gamate not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamate/mixart /home/pi/PieMarquee2/marquee/gamate
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamate/mixart /home/pi/PieMarquee2/marquee/gamate
fi

if [ ! -d /home/pi/RetroPie/roms/gamepock/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gamepock >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamepock/mixart
  echo mixart folder for gamepock not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamepock/mixart /home/pi/PieMarquee2/marquee/gamepock
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamepock/mixart /home/pi/PieMarquee2/marquee/gamepock
fi

if [ ! -d /home/pi/RetroPie/roms/gbah/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gbah >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbah/mixart
  echo mixart folder for gbah not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbah/mixart /home/pi/PieMarquee2/marquee/gbah
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbah/mixart /home/pi/PieMarquee2/marquee/gbah
fi

if [ ! -d /home/pi/RetroPie/roms/gbh/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gbh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbh/mixart
  echo mixart folder for gbh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbh/mixart /home/pi/PieMarquee2/marquee/gbh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbh/mixart /home/pi/PieMarquee2/marquee/gbh
fi

if [ ! -d /home/pi/RetroPie/roms/gbm/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gbm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbm/mixart
  echo mixart folder for gbm not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbm/mixart /home/pi/PieMarquee2/marquee/gbm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbm/mixart /home/pi/PieMarquee2/marquee/gbm
fi

if [ ! -d /home/pi/RetroPie/roms/genh/mixart ]; then
  mkdir /home/pi/RetroPie/roms/genh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/genh/mixart
  echo mixart folder for genh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/genh/mixart /home/pi/PieMarquee2/marquee/genh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/genh/mixart /home/pi/PieMarquee2/marquee/genh
fi

if [ ! -d /home/pi/RetroPie/roms/ggh/mixart ]; then
  mkdir /home/pi/RetroPie/roms/ggh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ggh/mixart
  echo mixart folder for ggh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ggh/mixart /home/pi/PieMarquee2/marquee/ggh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ggh/mixart /home/pi/PieMarquee2/marquee/ggh
fi
if [ ! -d /home/pi/RetroPie/roms/gx4000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/gx4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gx4000/mixart
  echo mixart folder for gx4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gx4000/mixart /home/pi/PieMarquee2/marquee/gx4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gx4000/mixart /home/pi/PieMarquee2/marquee/gx4000
fi

if [ ! -d /home/pi/RetroPie/roms/instruction ]; then
  mkdir /home/pi/RetroPie/roms/instruction >/dev/null 2>&1
  echo instruction folder for instruction not found will now add !
  ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
fi

if [ ! -d /home/pi/RetroPie/roms/laser200/mixart ]; then
  mkdir /home/pi/RetroPie/roms/laser200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/laser200/mixart
  echo mixart folder for laser200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/laser200/mixart /home/pi/PieMarquee2/marquee/laser200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/laser200/mixart /home/pi/PieMarquee2/marquee/laser200
fi

if [ ! -d /home/pi/RetroPie/roms/m5/mixart ]; then
  mkdir /home/pi/RetroPie/roms/m5 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/m5/mixart
  echo mixart folder for m5 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/m5/mixart /home/pi/PieMarquee2/marquee/m5
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/m5/mixart /home/pi/PieMarquee2/marquee/m5
fi

if [ ! -d /home/pi/RetroPie/roms/mame/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame/mixart
  echo mixart folder for mame not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame/mixart /home/pi/PieMarquee2/marquee/mame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame/mixart /home/pi/PieMarquee2/marquee/mame
fi

if [ ! -d /home/pi/RetroPie/roms/markii/mixart ]; then
  mkdir /home/pi/RetroPie/roms/markii >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/markii/mixart
  echo mixart folder for markii not found will now add !
  ln -sfn /home/pi/RetroPie/roms/markii/mixart /home/pi/PieMarquee2/marquee/markii
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/markii/mixart /home/pi/PieMarquee2/marquee/markii
fi

if [ ! -d /home/pi/RetroPie/roms/megacd/mixart ]; then
  mkdir /home/pi/RetroPie/roms/megacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd/mixart
  echo mixart folder for megacd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd/mixart /home/pi/PieMarquee2/marquee/megacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd/mixart /home/pi/PieMarquee2/marquee/megacd
fi

if [ ! -d /home/pi/RetroPie/roms/megacd-japan/mixart ]; then
  mkdir /home/pi/RetroPie/roms/megacd-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd-japan/mixart
  echo mixart folder for megacd-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd-japan/mixart /home/pi/PieMarquee2/marquee/megacd-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd-japan/mixart /home/pi/PieMarquee2/marquee/megacd-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive-japan/mixart ]; then
  mkdir /home/pi/RetroPie/roms/megadrive-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive-japan/mixart
  echo mixart folder for megadrive-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive-japan/mixart /home/pi/PieMarquee2/marquee/megadrive-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive-japan/mixart /home/pi/PieMarquee2/marquee/megadrive-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megaduck/mixart ]; then
  mkdir /home/pi/RetroPie/roms/megaduck >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megaduck/mixart
  echo mixart folder for megaduck not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megaduck/mixart /home/pi/PieMarquee2/marquee/megaduck
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megaduck/mixart /home/pi/PieMarquee2/marquee/megaduck
fi

if [ ! -d /home/pi/RetroPie/roms/model2/mixart ]; then
  mkdir /home/pi/RetroPie/roms/model2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model2/mixart
  echo mixart folder for model2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model2/mixart /home/pi/PieMarquee2/marquee/model2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model2/mixart /home/pi/PieMarquee2/marquee/model2
fi

if [ ! -d /home/pi/RetroPie/roms/model3/mixart ]; then
  mkdir /home/pi/RetroPie/roms/model3 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model3/mixart
  echo mixart folder for model3 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model3/mixart /home/pi/PieMarquee2/marquee/model3
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model3/mixart /home/pi/PieMarquee2/marquee/model3
fi

if [ ! -d /home/pi/RetroPie/roms/msx2/mixart ]; then
  mkdir /home/pi/RetroPie/roms/msx2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2/mixart
  echo mixart folder for msx2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2/mixart /home/pi/PieMarquee2/marquee/msx2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2/mixart /home/pi/PieMarquee2/marquee/msx2
fi

if [ ! -d /home/pi/RetroPie/roms/msx2plus/mixart ]; then
  mkdir /home/pi/RetroPie/roms/msx2plus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2plus/mixart
  echo mixart folder for msx2plus not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2plus/mixart /home/pi/PieMarquee2/marquee/msx2plus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2plus/mixart /home/pi/PieMarquee2/marquee/msx2plus
fi

if [ ! -d /home/pi/RetroPie/roms/msxturbo/mixart ]; then
  mkdir /home/pi/RetroPie/roms/msxturbo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msxturbo/mixart
  echo mixart folder for msxturbo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msxturbo/mixart /home/pi/PieMarquee2/marquee/msxturbo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msxturbo/mixart /home/pi/PieMarquee2/marquee/msxturbo
fi

if [ ! -d /home/pi/RetroPie/roms/mtx/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mtx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mtx/mixart
  echo mixart folder for mtx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mtx/mixart /home/pi/PieMarquee2/marquee/mtx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mtx/mixart /home/pi/PieMarquee2/marquee/mtx
fi

if [ ! -d /home/pi/RetroPie/roms/multivision/mixart ]; then
  mkdir /home/pi/RetroPie/roms/multivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/multivision/mixart
  echo mixart folder for multivision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/multivision/mixart /home/pi/PieMarquee2/marquee/multivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/multivision/mixart /home/pi/PieMarquee2/marquee/multivision
fi

if [ ! -d /home/pi/RetroPie/roms/mz700/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mz700 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz700/mixart
  echo mixart folder for mz700 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz700/mixart /home/pi/PieMarquee2/marquee/mz700
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz700/mixart /home/pi/PieMarquee2/marquee/mz700
fi

if [ ! -d /home/pi/RetroPie/roms/mz2500/mixart ]; then
  mkdir /home/pi/RetroPie/roms/mz2500 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz2500/mixart
  echo mixart folder for mz2500 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz2500/mixart /home/pi/PieMarquee2/marquee/mz2500
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz2500/mixart /home/pi/PieMarquee2/marquee/mz2500
fi

if [ ! -d /home/pi/RetroPie/roms/n64dd/mixart ]; then
  mkdir /home/pi/RetroPie/roms/n64dd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64dd/mixart
  echo mixart folder for n64dd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64dd/mixart /home/pi/PieMarquee2/marquee/n64dd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64dd/mixart /home/pi/PieMarquee2/marquee/n64dd
fi

if [ ! -d /home/pi/RetroPie/roms/n64-japan/mixart ]; then
  mkdir /home/pi/RetroPie/roms/n64-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64-japan/mixart
  echo mixart folder for n64-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64-japan/mixart /home/pi/PieMarquee2/marquee/n64-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64-japan/mixart /home/pi/PieMarquee2/marquee/n64-japan
fi

if [ ! -d /home/pi/RetroPie/roms/neocdz/mixart ]; then
  mkdir /home/pi/RetroPie/roms/neocdz >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neocdz/mixart
  echo mixart folder for neocdz not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neocdz/mixart /home/pi/PieMarquee2/marquee/neocdz
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neocdz/mixart /home/pi/PieMarquee2/marquee/neocdz
fi

if [ ! -d /home/pi/RetroPie/roms/nesh/mixart ]; then
  mkdir /home/pi/RetroPie/roms/nesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nesh/mixart
  echo mixart folder for nesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nesh/mixart /home/pi/PieMarquee2/marquee/nesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nesh/mixart /home/pi/PieMarquee2/marquee/nesh
fi

if [ ! -d /home/pi/RetroPie/roms/plus4/mixart ]; then
  mkdir /home/pi/RetroPie/roms/plus4 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/plus4/mixart
  echo mixart folder for plus4 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/plus4/mixart /home/pi/PieMarquee2/marquee/plus4
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/plus4/mixart /home/pi/PieMarquee2/marquee/plus4
fi

if [ ! -d /home/pi/RetroPie/roms/psp-japan/mixart ]; then
  mkdir /home/pi/RetroPie/roms/psp-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp-japan/mixart
  echo mixart folder for psp-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp-japan/mixart /home/pi/PieMarquee2/marquee/psp-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp-japan/mixart /home/pi/PieMarquee2/marquee/psp-japan
fi

if [ ! -d /home/pi/RetroPie/roms/pspminis/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pspminis >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pspminis/mixart
  echo mixart folder for pspminis not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pspminis/mixart /home/pi/PieMarquee2/marquee/pspminis
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pspminis/mixart /home/pi/PieMarquee2/marquee/pspminis
fi

if [ ! -d /home/pi/RetroPie/roms/publisher ]; then
  mkdir /home/pi/RetroPie/roms/publisher >/dev/null 2>&1
  echo publisher folder for publisher not found will now add !
  ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
fi

if [ ! -d /home/pi/RetroPie/roms/pv1000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pv1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv1000/mixart
  echo mixart folder for pv1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv1000/mixart /home/pi/PieMarquee2/marquee/pv1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv1000/mixart /home/pi/PieMarquee2/marquee/pv1000
fi

if [ ! -d /home/pi/RetroPie/roms/pv2000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/pv2000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv2000/mixart
  echo mixart folder for pv2000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv2000/mixart /home/pi/PieMarquee2/marquee/pv2000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv2000/mixart /home/pi/PieMarquee2/marquee/pv2000
fi

if [ ! -d /home/pi/RetroPie/roms/satellaview/mixart ]; then
  mkdir /home/pi/RetroPie/roms/satellaview >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/satellaview/mixart
  echo mixart folder for satellaview not found will now add !
  ln -sfn /home/pi/RetroPie/roms/satellaview/mixart /home/pi/PieMarquee2/marquee/satellaview
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/satellaview/mixart /home/pi/PieMarquee2/marquee/satellaview
fi

if [ ! -d /home/pi/RetroPie/roms/saturn-japan/mixart ]; then
  mkdir /home/pi/RetroPie/roms/saturn-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn-japan/mixart
  echo mixart folder for saturn-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn-japan/mixart /home/pi/PieMarquee2/marquee/saturn-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn-japan/mixart /home/pi/PieMarquee2/marquee/saturn-japan
fi

if [ ! -d /home/pi/RetroPie/roms/sc-3000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/sc-3000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sc-3000/mixart
  echo mixart folder for sc-3000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sc-3000/mixart /home/pi/PieMarquee2/marquee/sc-3000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sc-3000/mixart /home/pi/PieMarquee2/marquee/sc-3000
fi

if [ ! -d /home/pi/RetroPie/roms/scv/mixart ]; then
  mkdir /home/pi/RetroPie/roms/scv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scv/mixart
  echo mixart folder for scv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scv/mixart /home/pi/PieMarquee2/marquee/scv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scv/mixart /home/pi/PieMarquee2/marquee/scv
fi

if [ ! -d /home/pi/RetroPie/roms/sfc/mixart ]; then
  mkdir /home/pi/RetroPie/roms/sfc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sfc/mixart
  echo mixart folder for sfc not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sfc/mixart /home/pi/PieMarquee2/marquee/sfc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sfc/mixart /home/pi/PieMarquee2/marquee/sfc
fi

if [ ! -d /home/pi/RetroPie/roms/sgb/mixart ]; then
  mkdir /home/pi/RetroPie/roms/sgb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sgb/mixart
  echo mixart folder for sgb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sgb/mixart /home/pi/PieMarquee2/marquee/sgb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sgb/mixart /home/pi/PieMarquee2/marquee/sgb
fi

if [ ! -d /home/pi/RetroPie/roms/snesh/mixart ]; then
  mkdir /home/pi/RetroPie/roms/snesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesh/mixart
  echo mixart folder for snesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesh/mixart /home/pi/PieMarquee2/marquee/snesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesh/mixart /home/pi/PieMarquee2/marquee/snesh
fi

if [ ! -d /home/pi/RetroPie/roms/sorcerer/mixart ]; then
  mkdir /home/pi/RetroPie/roms/sorcerer >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sorcerer/mixart
  echo mixart folder for sorcerer not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sorcerer/mixart /home/pi/PieMarquee2/marquee/sorcerer
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sorcerer/mixart /home/pi/PieMarquee2/marquee/sorcerer
fi

if [ ! -d /home/pi/RetroPie/roms/sufami/mixart ]; then
  mkdir /home/pi/RetroPie/roms/sufami >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sufami/mixart
  echo mixart folder for sufami not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sufami/mixart /home/pi/PieMarquee2/marquee/sufami
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sufami/mixart /home/pi/PieMarquee2/marquee/sufami
fi

if [ ! -d /home/pi/RetroPie/roms/supergrafx/mixart ]; then
  mkdir /home/pi/RetroPie/roms/supergrafx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/supergrafx/mixart
  echo mixart folder for supergrafx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/supergrafx/mixart /home/pi/PieMarquee2/marquee/supergrafx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/supergrafx/mixart /home/pi/PieMarquee2/marquee/supergrafx
fi

if [ ! -d /home/pi/RetroPie/roms/svi318/mixart ]; then
  mkdir /home/pi/RetroPie/roms/svi318 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svi318/mixart
  echo mixart folder for svi318 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svi318/mixart /home/pi/PieMarquee2/marquee/svi318
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svi318/mixart /home/pi/PieMarquee2/marquee/svi318
fi

if [ ! -d /home/pi/RetroPie/roms/svision/mixart ]; then
  mkdir /home/pi/RetroPie/roms/svision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svision/mixart
  echo mixart folder for svision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svision/mixart /home/pi/PieMarquee2/marquee/svision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svision/mixart /home/pi/PieMarquee2/marquee/svision
fi

if [ ! -d /home/pi/RetroPie/roms/tic80/mixart ]; then
  mkdir /home/pi/RetroPie/roms/tic80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tic80/mixart 
  echo mixart folder for tic80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tic80/mixart /home/pi/PieMarquee2/marquee/tic80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tic80/mixart /home/pi/PieMarquee2/marquee/tic80
fi

if [ ! -d /home/pi/RetroPie/roms/tutor/mixart ]; then
  mkdir /home/pi/RetroPie/roms/tutor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tutor/mixart
  echo mixart folder for tutor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tutor/mixart /home/pi/PieMarquee2/marquee/tutor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tutor/mixart /home/pi/PieMarquee2/marquee/tutor
fi

if [ ! -d /home/pi/RetroPie/roms/vc4000/mixart ]; then
  mkdir /home/pi/RetroPie/roms/vc4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vc4000/mixart
  echo mixart folder for vc4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vc4000/mixart /home/pi/PieMarquee2/marquee/vc4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vc4000/mixart /home/pi/PieMarquee2/marquee/vc4000
fi

if [ ! -d /home/pi/RetroPie/roms/vic20/mixart ]; then
  mkdir /home/pi/RetroPie/roms/vic20 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vic20/mixart
  echo mixart folder for vic20 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vic20/mixart /home/pi/PieMarquee2/marquee/vic20
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vic20/mixart /home/pi/PieMarquee2/marquee/vic20
fi

else
echo "$(tput setaf 6)
Looks like you have the marquee script off please turn it on and try again.
$(tput sgr0)"   
sleep 4
fi
}

# Make folder boxart SUPREME -----------------------------------------------------------------------------------------------------------------------------------
function system-boxart() {
	dialog --infobox "APPLYING CHANGES NOW" 3 25 ; sleep 6
	if [ ! -d /home/pi/PieMarquee3 ]; then
	
if [ ! -d /home/pi/RetroPie/roms/3do/boxart ]; then
  mkdir /home/pi/RetroPie/roms/3do >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/3do/boxart
  echo boxart folder for 3do was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/3do/boxart /home/pi/PieMarquee2/marquee/3do
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/3do/boxart /home/pi/PieMarquee2/marquee/3do
fi

if [ ! -d /home/pi/RetroPie/roms/ags/boxart ]; then
  mkdir /home/pi/RetroPie/roms/ags >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ags/boxart
  echo boxart folder for ags was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ags/boxart /home/pi/PieMarquee2/marquee/ags
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ags/boxart /home/pi/PieMarquee2/marquee/ags
fi

if [ ! -d /home/pi/RetroPie/roms/amiga/boxart ]; then
  mkdir /home/pi/RetroPie/roms/amiga >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga/boxart
  echo boxart folder for amiga was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga/boxart /home/pi/PieMarquee2/marquee/amiga
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga/boxart /home/pi/PieMarquee2/marquee/amiga
fi

if [ ! -d /home/pi/RetroPie/roms/amstradcpc/boxart ]; then
  mkdir /home/pi/RetroPie/roms/amstradcpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amstradcpc/boxart
  echo boxart folder for amstradcpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amstradcpc/boxart /home/pi/PieMarquee2/marquee/amstradcpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amstradcpc/boxart /home/pi/PieMarquee2/marquee/amstradcpc
fi

if [ ! -d /home/pi/RetroPie/roms/apple2/boxart ]; then
  mkdir /home/pi/RetroPie/roms/apple2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2/boxart
  echo boxart folder for apple2 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2/boxart /home/pi/PieMarquee2/marquee/apple2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2/boxart /home/pi/PieMarquee2/marquee/apple2
fi

if [ ! -d /home/pi/RetroPie/roms/arcade/boxart ]; then
  mkdir /home/pi/RetroPie/roms/aracde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcade/boxart
  echo boxart folder for arcade was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcade/boxart /home/pi/PieMarquee2/marquee/arcade
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcade/boxart /home/pi/PieMarquee2/marquee/arcade
fi

if [ ! -d /home/pi/RetroPie/roms/arcadia/boxart ]; then
  mkdir /home/pi/RetroPie/roms/arcadia >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcadia/boxart
  echo boxart folder for arcadia was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcadia/boxart /home/pi/PieMarquee2/marquee/arcadia
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcadia/boxart /home/pi/PieMarquee2/marquee/arcadia
fi

if [ ! -d /home/pi/RetroPie/roms/atari800/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atari800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari800/boxart
  echo boxart folder for atari800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari800/boxart /home/pi/PieMarquee2/marquee/atari800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari800/boxart /home/pi/PieMarquee2/marquee/atari800
fi

if [ ! -d /home/pi/RetroPie/roms/atari2600/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atari2600 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari2600/boxart
  echo boxart folder for atari2600 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari2600/boxart /home/pi/PieMarquee2/marquee/atari2600
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari2600/boxart /home/pi/PieMarquee2/marquee/atari2600
fi

if [ ! -d /home/pi/RetroPie/roms/atari5200/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atari5200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari5200/boxart
  echo boxart folder for atari5200 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari5200/boxart /home/pi/PieMarquee2/marquee/atari5200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari5200/boxart /home/pi/PieMarquee2/marquee/atari5200
fi

if [ ! -d /home/pi/RetroPie/roms/atari7800/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atari7800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari7800/boxart
  echo boxart folder for atari7800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari7800/boxart /home/pi/PieMarquee2/marquee/atari7800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari7800/boxart /home/pi/PieMarquee2/marquee/atari7800
fi

if [ ! -d /home/pi/RetroPie/roms/atarijaguar/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atarijaguar >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarijaguar/boxart
  echo boxart folder for atarijaguar was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarijaguar/boxart /home/pi/PieMarquee2/marquee/atarijaguar
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarijaguar/boxart /home/pi/PieMarquee2/marquee/atarijaguar
fi

if [ ! -d /home/pi/RetroPie/roms/atarilynx/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atarilynx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarilynx/boxart
  echo boxart folder for atarilynx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarilynx/boxart /home/pi/PieMarquee2/marquee/atarilynx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarilynx/boxart /home/pi/PieMarquee2/marquee/atarilynx
fi

if [ ! -d /home/pi/RetroPie/roms/atarist/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atarist >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarist/boxart
  echo boxart folder for atarist was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarist/boxart /home/pi/PieMarquee2/marquee/atarist
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarist/boxart /home/pi/PieMarquee2/marquee/atarist
fi

if [ ! -d /home/pi/RetroPie/roms/atomiswave/boxart ]; then
  mkdir /home/pi/RetroPie/roms/atomiswave >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atomiswave/boxart
  echo boxart folder for atomiswave was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atomiswave/boxart /home/pi/PieMarquee2/marquee/atomiswave
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atomiswave/boxart /home/pi/PieMarquee2/marquee/atomiswave
fi

if [ ! -d /home/pi/RetroPie/roms/channelf/boxart ]; then
  mkdir /home/pi/RetroPie/roms/channelf >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/channelf/boxart
  echo boxart folder for channelf was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/channelf/boxart /home/pi/PieMarquee2/marquee/channelf
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/channelf/boxart /home/pi/PieMarquee2/marquee/channelf
fi

if [ ! -d /home/pi/RetroPie/roms/chromium/boxart ]; then
  mkdir /home/pi/RetroPie/roms/chromium >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/chromium/boxart
  echo boxart folder for chromium was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/chromium/boxart /home/pi/PieMarquee2/marquee/chromium
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/chromium/boxart /home/pi/PieMarquee2/marquee/chromium
fi

if [ ! -d /home/pi/RetroPie/roms/coco/boxart ]; then
  mkdir /home/pi/RetroPie/roms/coco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coco/boxart
  echo boxart folder for coco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coco/boxart /home/pi/PieMarquee2/marquee/coco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coco/boxart /home/pi/PieMarquee2/marquee/coco
fi

if [ ! -d /home/pi/RetroPie/roms/coleco/boxart ]; then
  mkdir /home/pi/RetroPie/roms/coleco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coleco/boxart
  echo boxart folder for coleco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coleco/boxart /home/pi/PieMarquee2/marquee/coleco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coleco/boxart /home/pi/PieMarquee2/marquee/coleco
fi

if [ ! -d /home/pi/RetroPie/roms/crvision/boxart ]; then
  mkdir /home/pi/RetroPie/roms/crvision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/crvision/boxart
  echo boxart folder for crvision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/crvision/boxart /home/pi/PieMarquee2/marquee/crvision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/crvision/boxart /home/pi/PieMarquee2/marquee/crvision
fi

if [ ! -d /home/pi/RetroPie/roms/daphne/boxart ]; then
  mkdir /home/pi/RetroPie/roms/daphne >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/daphne/boxart
  echo boxart folder for daphne was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/daphne/boxart /home/pi/PieMarquee2/marquee/daphne
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/daphne/boxart /home/pi/PieMarquee2/marquee/daphne
fi

if [ ! -d /home/pi/RetroPie/roms/dragon32/boxart ]; then
  mkdir /home/pi/RetroPie/roms/dragon32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dragon32/boxart
  echo boxart folder for dragon32 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dragon32/boxart /home/pi/PieMarquee2/marquee/dragon32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dragon32/boxart /home/pi/PieMarquee2/marquee/dragon32
fi

if [ ! -d /home/pi/RetroPie/roms/dreamcast/boxart ]; then
  mkdir /home/pi/RetroPie/roms/dreamcast >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dreamcast/boxart
  echo boxart folder for dreamcast was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dreamcast/boxart /home/pi/PieMarquee2/marquee/dreamcast
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dreamcast/boxart /home/pi/PieMarquee2/marquee/dreamcast
fi

if [ ! -d /home/pi/RetroPie/roms/gameandwatch/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gameandwatch >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gameandwatch/boxart
  echo boxart folder for gameandwatch was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gameandwatch/boxart /home/pi/PieMarquee2/marquee/gameandwatch
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gameandwatch/boxart /home/pi/PieMarquee2/marquee/gameandwatch
fi

if [ ! -d /home/pi/RetroPie/roms/gamegear/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gamegear >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamegear/boxart
  echo boxart folder for gamegear was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamegear/boxart /home/pi/PieMarquee2/marquee/gamegear
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamegear/boxart /home/pi/PieMarquee2/marquee/gamegear
fi

if [ ! -d /home/pi/RetroPie/roms/gb/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gb/boxart
  echo boxart folder for gb was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gb/boxart /home/pi/PieMarquee2/marquee/gb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gb/boxart /home/pi/PieMarquee2/marquee/gb
fi

if [ ! -d /home/pi/RetroPie/roms/gba/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gba/boxart
  echo boxart folder for gbaa was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gb/boxart /home/pi/PieMarquee2/marquee/gba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gba/boxart /home/pi/PieMarquee2/marquee/gba
fi

if [ ! -d /home/pi/RetroPie/roms/gbc/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gbc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbc/boxart
  echo boxart folder for gbc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbc/boxart /home/pi/PieMarquee2/marquee/gbc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbc/boxart /home/pi/PieMarquee2/marquee/gbc
fi

if [ ! -d /home/pi/RetroPie/roms/intellivision/boxart ]; then
  mkdir /home/pi/RetroPie/roms/intellivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/intellivision/boxart
  echo boxart folder for intellivision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/intellivision/boxart /home/pi/PieMarquee2/marquee/intellivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/intellivision/boxart /home/pi/PieMarquee2/marquee/intellivision
fi

if [ ! -d /home/pi/RetroPie/roms/kodi/boxart ]; then
  mkdir /home/pi/RetroPie/roms/kodi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/kodi/boxart
  echo boxart folder for kodi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/kodi/boxart /home/pi/PieMarquee2/marquee/kodi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/kodi/boxart /home/pi/PieMarquee2/marquee/kodi
fi

if [ ! -d /home/pi/RetroPie/roms/love/boxart ]; then
  mkdir /home/pi/RetroPie/roms/love >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/love/boxart
  echo boxart folder for love was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/love/boxart /home/pi/PieMarquee2/marquee/love
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/love/boxart /home/pi/PieMarquee2/marquee/love
fi

if [ ! -d /home/pi/RetroPie/roms/macintosh/boxart ]; then
  mkdir /home/pi/RetroPie/roms/macintosh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/macintosh/boxart
  echo boxart folder for macintosh was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/macintosh/boxart /home/pi/PieMarquee2/marquee/macintosh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/macintosh/boxart /home/pi/PieMarquee2/marquee/macintosh
fi

if [ ! -d /home/pi/RetroPie/roms/mame-advmame/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mame-advmame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-advmame/boxart
  echo boxart folder for mame-advmame was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-advmame/boxart /home/pi/PieMarquee2/marquee/mame-advmame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-advmame/boxart /home/pi/PieMarquee2/marquee/mame-advmame
fi

if [ ! -d /home/pi/RetroPie/roms/mame-libretro/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mame-libretro >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-libretro/boxart
  echo boxart folder for mame-libretro was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-libretro/boxart /home/pi/PieMarquee2/marquee/mame-libretro
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-libretro/boxart /home/pi/PieMarquee2/marquee/mame-libretro
fi

if [ ! -d /home/pi/RetroPie/roms/mame-mame4all/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mame-mame4all >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-mame4all/boxart
  echo boxart folder for mame-mame4all was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-mame4all/boxart /home/pi/PieMarquee2/marquee/mame-mame4all
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-mame4all/boxart /home/pi/PieMarquee2/marquee/mame-mame4all
fi

if [ ! -d /home/pi/RetroPie/roms/mastersystem/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mastersystem >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mastersystem/boxart
  echo boxart folder for mastersystem was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mastersystem/boxart /home/pi/PieMarquee2/marquee/mastersystem
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mastersystem/boxart /home/pi/PieMarquee2/marquee/mastersystem
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive/boxart ]; then
  mkdir /home/pi/RetroPie/roms/megadrive >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive/boxart
  echo boxart folder for megadrive was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive/boxart /home/pi/PieMarquee2/marquee/megadrive
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive/boxart /home/pi/PieMarquee2/marquee/megadrive
fi

if [ ! -d /home/pi/RetroPie/roms/msx/boxart ]; then
  mkdir /home/pi/RetroPie/roms/msx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx/boxart
  echo boxart folder for msx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx/boxart /home/pi/PieMarquee2/marquee/msx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx/boxart /home/pi/PieMarquee2/marquee/msx
fi

if [ ! -d /home/pi/RetroPie/roms/n64/boxart ]; then
  mkdir /home/pi/RetroPie/roms/n64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64/boxart
  echo boxart folder for n64 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64/boxart /home/pi/PieMarquee2/marquee/n64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64/boxart /home/pi/PieMarquee2/marquee/n64
fi

if [ ! -d /home/pi/RetroPie/roms/naomi/boxart ]; then
  mkdir /home/pi/RetroPie/roms/naomi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/naomi/boxart
  echo boxart folder for naomi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/naomi/boxart /home/pi/PieMarquee2/marquee/naomi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/boxart /home/pi/PieMarquee2/marquee/naomi
fi

if [ ! -d /home/pi/RetroPie/roms/nds/boxart ]; then
  mkdir /home/pi/RetroPie/roms/nds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nds/boxart
  echo boxart folder for nds was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nds/boxart /home/pi/PieMarquee2/marquee/nds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/boxart /home/pi/PieMarquee2/marquee/nds
fi

if [ ! -d /home/pi/RetroPie/roms/neogeo/boxart ]; then
  mkdir /home/pi/RetroPie/roms/neogeo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeo/boxart
  echo boxart folder for neogeo was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeo/boxart /home/pi/PieMarquee2/marquee/neogeo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeo/boxart /home/pi/PieMarquee2/marquee/neogeo
fi

if [ ! -d /home/pi/RetroPie/roms/neogeocd/boxart ]; then
  mkdir /home/pi/RetroPie/roms/neogeocd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeocd/boxart
  echo boxart folder for neogeocd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeocd/boxart /home/pi/PieMarquee2/marquee/neogeocd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeocd/boxart /home/pi/PieMarquee2/marquee/neogeocd
fi

if [ ! -d /home/pi/RetroPie/roms/nes/boxart ]; then
  mkdir /home/pi/RetroPie/roms/nes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nes/boxart
  echo boxart folder for nes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nes/boxart /home/pi/PieMarquee2/marquee/nes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nes/boxart /home/pi/PieMarquee2/marquee/nes
fi

if [ ! -d /home/pi/RetroPie/roms/ngp/boxart ]; then
  mkdir /home/pi/RetroPie/roms/ngp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngp/boxart
  echo boxart folder for ngp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngp/boxart /home/pi/PieMarquee2/marquee/ngp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngp/boxart /home/pi/PieMarquee2/marquee/ngp
fi

if [ ! -d /home/pi/RetroPie/roms/ngpc/boxart ]; then
  mkdir /home/pi/RetroPie/roms/ngpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngpc/boxart
  echo boxart folder for ngpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngpc/boxart /home/pi/PieMarquee2/marquee/ngpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngpc/boxart /home/pi/PieMarquee2/marquee/ngpc
fi

if [ ! -d /home/pi/RetroPie/roms/openbor/boxart ]; then
  mkdir /home/pi/RetroPie/roms/openbor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/openbor/boxart
  echo boxart folder for openbor was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/openbor/boxart /home/pi/PieMarquee2/marquee/openbor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/openbor/boxart /home/pi/PieMarquee2/marquee/openbor
fi

if [ ! -d /home/pi/RetroPie/roms/oric/boxart ]; then
  mkdir /home/pi/RetroPie/roms/oric >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/oric/boxart
  echo boxart folder for oric was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/oric/boxart /home/pi/PieMarquee2/marquee/oric
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/oric/boxart /home/pi/PieMarquee2/marquee/oric
fi

if [ ! -d /home/pi/RetroPie/roms/pc/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc/boxart
  echo boxart folder for pc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc/boxart /home/pi/PieMarquee2/marquee/pc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc/boxart /home/pi/PieMarquee2/marquee/pc
fi

if [ ! -d /home/pi/RetroPie/roms/pc88/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pc88 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc88/boxart
  echo boxart folder for pc88 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc88/boxart /home/pi/PieMarquee2/marquee/pc88
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc88/boxart /home/pi/PieMarquee2/marquee/pc88
fi

if [ ! -d /home/pi/RetroPie/roms/pc98/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pc98 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc98/boxart
  echo boxart folder for pc98 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc98/boxart /home/pi/PieMarquee2/marquee/pc98
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc98/boxart /home/pi/PieMarquee2/marquee/pc98
fi

if [ ! -d /home/pi/RetroPie/roms/pcengine/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pcengine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcengine/boxart
  echo boxart folder for pcengine was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcengine/boxart /home/pi/PieMarquee2/marquee/pcengine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcengine/boxart /home/pi/PieMarquee2/marquee/pcengine
fi

if [ ! -d /home/pi/RetroPie/roms/pcenginecd/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pcenginecd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcenginecd/boxart
  echo boxart folder for pcenginecd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcenginecd/boxart /home/pi/PieMarquee2/marquee/pcenginecd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcenginecd/boxart /home/pi/PieMarquee2/marquee/pcenginecd
fi

if [ ! -d /home/pi/RetroPie/roms/pcfx/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pcfx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcfx/boxart
  echo boxart folder for pcfx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcfx/boxart /home/pi/PieMarquee2/marquee/pcfx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcfx/boxart /home/pi/PieMarquee2/marquee/pcfx
fi

if [ ! -d /home/pi/RetroPie/roms/.supremeteammarquee ]; then
  mkdir /home/pi/RetroPie/roms/.supremeteammarquee >/dev/null 2>&1
  sleep 1
fi

if [ ! -d /home/pi/RetroPie/roms/pixel/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pixel >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pixel/boxart
  echo boxart folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pixel/boxart /home/pi/PieMarquee2/marquee/pixel
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pixel/boxart /home/pi/PieMarquee2/marquee/pixel
fi

if [ ! -d /home/pi/RetroPie/roms/pokemini/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pokemini >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pokemini/boxart
  echo boxart folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pokemini/boxart /home/pi/PieMarquee2/marquee/pokemini
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pokemini/boxart /home/pi/PieMarquee2/marquee/pokemini
fi

if [ ! -d /home/pi/RetroPie/roms/ports/boxart ]; then
  mkdir /home/pi/RetroPie/roms/ports >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ports/boxart
  echo boxart folder for ports was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ports/boxart /home/pi/PieMarquee2/marquee/ports
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ports/boxart /home/pi/PieMarquee2/marquee/ports
fi

if [ ! -d /home/pi/RetroPie/roms/power/boxart ]; then
  mkdir /home/pi/RetroPie/roms/power >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/power/boxart
  echo boxart folder for power was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/power/boxart /home/pi/PieMarquee2/marquee/power
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/power/boxart /home/pi/PieMarquee2/marquee/power
fi

if [ ! -d /home/pi/RetroPie/roms/psp/boxart ]; then
  mkdir /home/pi/RetroPie/roms/psp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp/boxart
  echo boxart folder for psp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp/boxart /home/pi/PieMarquee2/marquee/psp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp/boxart /home/pi/PieMarquee2/marquee/psp
fi

if [ ! -d /home/pi/RetroPie/roms/psx/boxart ]; then
  mkdir /home/pi/RetroPie/roms/psx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psx/boxart
  echo boxart folder for psx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psx/boxart /home/pi/PieMarquee2/marquee/psx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psx/boxart /home/pi/PieMarquee2/marquee/psx
fi

if [ ! -d /home/pi/RetroPie/roms/residualvm/boxart ]; then
  mkdir /home/pi/RetroPie/roms/residualvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/residualvm/boxart
  echo boxart folder for residualvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/residualvm/boxart /home/pi/PieMarquee2/marquee/residualvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/residualvm/boxart /home/pi/PieMarquee2/marquee/residualvm
fi

if [ ! -d /home/pi/RetroPie/roms/samcoupe/boxart ]; then
  mkdir /home/pi/RetroPie/roms/samcoupe >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/samcoupe/boxart
  echo boxart folder for samcoupe was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/samcoupe/boxart /home/pi/PieMarquee2/marquee/samcoupe
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/samcoupe/boxart /home/pi/PieMarquee2/marquee/samcoupe
fi

if [ ! -d /home/pi/RetroPie/roms/saturn/boxart ]; then
  mkdir /home/pi/RetroPie/roms/saturn >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn/boxart
  echo boxart folder for saturn was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn/boxart /home/pi/PieMarquee2/marquee/saturn
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn/boxart /home/pi/PieMarquee2/marquee/saturn
fi

if [ ! -d /home/pi/RetroPie/roms/scummvm/boxart ]; then
  mkdir /home/pi/RetroPie/roms/scummvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scummvm/boxart
  echo boxart folder for scummvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scummvm/boxart /home/pi/PieMarquee2/marquee/scummvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scummvm/boxart /home/pi/PieMarquee2/marquee/scummvm
fi

if [ ! -d /home/pi/RetroPie/roms/sega32x/boxart ]; then
  mkdir /home/pi/RetroPie/roms/sega32x >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sega32x/boxart
  echo boxart folder for sega32x was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sega32x/boxart /home/pi/PieMarquee2/marquee/sega32x
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sega32x/boxart /home/pi/PieMarquee2/marquee/sega32x
fi

if [ ! -d /home/pi/RetroPie/roms/segacd/boxart ]; then
  mkdir /home/pi/RetroPie/roms/segacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/segacd/boxart
  echo boxart folder for segacd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/segacd/boxart /home/pi/PieMarquee2/marquee/segacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/segacd/boxart /home/pi/PieMarquee2/marquee/segacd
fi

if [ ! -d /home/pi/RetroPie/roms/sg-1000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/sg-1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sg-1000/boxart
  echo boxart folder for sg-1000 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sg-1000/boxart /home/pi/PieMarquee2/marquee/sg-1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sg-1000/boxart /home/pi/PieMarquee2/marquee/sg-1000
fi

if [ ! -d /home/pi/RetroPie/roms/snes/boxart ]; then
  mkdir /home/pi/RetroPie/roms/snes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snes/boxart
  echo boxart folder for snes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snes/boxart /home/pi/PieMarquee2/marquee/snes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snes/boxart /home/pi/PieMarquee2/marquee/snes
fi

if [ ! -d /home/pi/RetroPie/roms/snesmsu1/boxart ]; then
  mkdir /home/pi/RetroPie/roms/snesmsu1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesmsu1/boxart
  echo boxart folder for snesmsu1 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesmsu1/boxart /home/pi/PieMarquee2/marquee/snesmsu1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesmsu1/boxart /home/pi/PieMarquee2/marquee/snesmsu1
fi

if [ ! -d /home/pi/RetroPie/roms/solarus/boxart ]; then
  mkdir /home/pi/RetroPie/roms/solarus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/solarus/boxart
  echo boxart folder for solarus was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/solarus/boxart /home/pi/PieMarquee2/marquee/solarus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/solarus/boxart /home/pi/PieMarquee2/marquee/solarus
fi

if [ ! -d /home/pi/RetroPie/roms/steam/boxart ]; then
  mkdir /home/pi/RetroPie/roms/steam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/steam/boxart
  echo boxart folder for steam was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/steam/boxart /home/pi/PieMarquee2/marquee/steam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/steam/boxart /home/pi/PieMarquee2/marquee/steam
fi

if [ ! -d /home/pi/RetroPie/roms/stratagus/boxart ]; then
  mkdir /home/pi/RetroPie/roms/stratagus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/stratagus/boxart
  echo boxart folder for strataguswas not found will now add !
  ln -sfn /home/pi/RetroPie/roms/stratagus/boxart /home/pi/PieMarquee2/marquee/stratagus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/stratagus/boxart /home/pi/PieMarquee2/marquee/stratagus
fi

if [ ! -d /home/pi/RetroPie/roms/tg16/boxart ]; then
  mkdir /home/pi/RetroPie/roms/tg16 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16/boxart
  echo boxart folder for tg16 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16/boxart /home/pi/PieMarquee2/marquee/tg16
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16/boxart /home/pi/PieMarquee2/marquee/tg16
fi

if [ ! -d /home/pi/RetroPie/roms/tg16cd/boxart ]; then
  mkdir /home/pi/RetroPie/roms/tg16cd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16cd/boxart
  echo boxart folder for tg16cd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16cd/boxart /home/pi/PieMarquee2/marquee/tg16cd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16cd/boxart /home/pi/PieMarquee2/marquee/tg16cd
fi

if [ ! -d /home/pi/RetroPie/roms/ti99/boxart ]; then
  mkdir /home/pi/RetroPie/roms/ti99 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ti99/boxart
  echo boxart folder for ti99 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ti99/boxart /home/pi/PieMarquee2/marquee/ti99
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ti99/boxart /home/pi/PieMarquee2/marquee/ti99
fi

if [ ! -d /home/pi/RetroPie/roms/trs-80/boxart ]; then
  mkdir /home/pi/RetroPie/roms/trs-80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/trs-80/boxart
  echo boxart folder for trs-80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/trs-80/boxart /home/pi/PieMarquee2/marquee/trs-80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/trs-80/boxart /home/pi/PieMarquee2/marquee/trs-80
fi

if [ ! -d /home/pi/RetroPie/roms/vectrex/boxart ]; then
  mkdir /home/pi/RetroPie/roms/vectrex >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vectrex/boxart
  echo boxart folder for vectrex not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vectrex/boxart /home/pi/PieMarquee2/marquee/vectrex
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vectrex/boxart /home/pi/PieMarquee2/marquee/vectrex
fi

if [ ! -d /home/pi/RetroPie/roms/videopac/boxart ]; then
  mkdir /home/pi/RetroPie/roms/videopac >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/videopac/boxart
  echo boxart folder for videopac not found will now add !
  ln -sfn /home/pi/RetroPie/roms/videopac/boxart /home/pi/PieMarquee2/marquee/videopac
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/videopac/boxart /home/pi/PieMarquee2/marquee/videopac
fi

if [ ! -d /home/pi/RetroPie/roms/virtualboy/boxart ]; then
  mkdir /home/pi/RetroPie/roms/virtualboy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/virtualboy/boxart
  echo boxart folder for virtualboy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/virtualboy/boxart /home/pi/PieMarquee2/marquee/virtualboy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/virtualboy/boxart /home/pi/PieMarquee2/marquee/virtualboy
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswan/boxart ]; then
  mkdir /home/pi/RetroPie/roms/wonderswan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswan/boxart
  echo boxart folder for wonderswan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswan/boxart /home/pi/PieMarquee2/marquee/wonderswan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswan/boxart /home/pi/PieMarquee2/marquee/wonderswan
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswancolor/boxart ]; then
  mkdir /home/pi/RetroPie/roms/wonderswancolor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswancolor/boxart
  echo boxart folder for wonderswancolor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswancolor/boxart /home/pi/PieMarquee2/marquee/wonderswancolor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswancolor/boxart /home/pi/PieMarquee2/marquee/wonderswancolor
fi

if [ ! -d /home/pi/RetroPie/roms/x1/boxart ]; then
  mkdir /home/pi/RetroPie/roms/x1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x1/boxart
  echo boxart folder for x1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x1/boxart /home/pi/PieMarquee2/marquee/x1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x1/boxart /home/pi/PieMarquee2/marquee/x1
fi

if [ ! -d /home/pi/RetroPie/roms/x68000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/x68000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x68000/boxart
  echo boxart folder for x68000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x68000/boxart /home/pi/PieMarquee2/marquee/x68000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x68000/boxart /home/pi/PieMarquee2/marquee/x68000
fi

if [ ! -d /home/pi/RetroPie/roms/zmachine/boxart ]; then
  mkdir /home/pi/RetroPie/roms/zmachine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zmachine/boxart
  echo boxart folder for zmachine not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zmachine/boxart /home/pi/PieMarquee2/marquee/zmachine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zmachine/boxart /home/pi/PieMarquee2/marquee/zmachine
fi

if [ ! -d /home/pi/RetroPie/roms/zx81/boxart ]; then
  mkdir /home/pi/RetroPie/roms/zx81 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zx81/boxart
  echo boxart folder for zx81 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zx81/boxart /home/pi/PieMarquee2/marquee/zx81
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zx81/boxart /home/pi/PieMarquee2/marquee/zx81
fi

if [ ! -d /home/pi/RetroPie/roms/zxspectrum/boxart ]; then
  mkdir /home/pi/RetroPie/roms/zxspectrum >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zxspectrum/boxart
  echo boxart folder for zxspectrum not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zxspectrum/boxart /home/pi/PieMarquee2/marquee/zxspectrum
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zxspectrum/boxart /home/pi/PieMarquee2/marquee/zxspectrum
fi

if [ ! -d /home/pi/RetroPie/roms/adam/boxart ]; then
  mkdir /home/pi/RetroPie/roms/adam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/adam/boxart
  echo boxart folder for adam not found will now add !
  ln -sfn /home/pi/RetroPie/roms/adam/boxart /home/pi/PieMarquee2/marquee/adam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/adam/boxart /home/pi/PieMarquee2/marquee/adam
fi

if [ ! -d /home/pi/RetroPie/roms/advision/boxart ]; then
  mkdir /home/pi/RetroPie/roms/advision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/advision/boxart
  echo boxart folder for advision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/advision/boxart /home/pi/PieMarquee2/marquee/advision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/advision/boxart /home/pi/PieMarquee2/marquee/advision
fi

if [ ! -d /home/pi/RetroPie/roms/amiga1200/boxart ]; then
  mkdir /home/pi/RetroPie/roms/amiga1200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga1200/boxart
  echo boxart folder for amiga1200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga1200/boxart /home/pi/PieMarquee2/marquee/amiga1200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga1200/boxart /home/pi/PieMarquee2/marquee/amiga1200
fi

if [ ! -d /home/pi/RetroPie/roms/amigacd32/boxart ]; then
  mkdir /home/pi/RetroPie/roms/amigacd32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amigacd32/boxart
  echo boxart folder for amigacd32 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amigacd32/boxart /home/pi/PieMarquee2/marquee/amigacd32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amigacd32/boxart /home/pi/PieMarquee2/marquee/amigacd32
fi

if [ ! -d /home/pi/RetroPie/roms/apfm1000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/apfm1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apfm1000/boxart
  echo boxart folder for apfm1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apfm1000/boxart /home/pi/PieMarquee2/marquee/apfm1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apfm1000/boxart /home/pi/PieMarquee2/marquee/apfm1000
fi

if [ ! -d /home/pi/RetroPie/roms/apple2gs/boxart ]; then
  mkdir /home/pi/RetroPie/roms/apple2gs >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2gs/boxart
  echo boxart folder for apple2gs not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2gs/boxart /home/pi/PieMarquee2/marquee/apple2gs
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2gs/boxart /home/pi/PieMarquee2/marquee/apple2gs
fi

if [ ! -d /home/pi/RetroPie/roms/astrocde/boxart ]; then
  mkdir /home/pi/RetroPie/roms/astrocde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/astrocde/boxart
  echo boxart folder for astrocde not found will now add !
  ln -sfn /home/pi/RetroPie/roms/astrocde/boxart /home/pi/PieMarquee2/marquee/astrocde
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/astrocde/boxart /home/pi/PieMarquee2/marquee/astrocde
fi

if [ ! -d /home/pi/RetroPie/roms/bbcb/boxart ]; then
  mkdir /home/pi/RetroPie/roms/bbcb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/bbcb/boxart
  echo boxart folder for bbcb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/bbcb/boxart /home/pi/PieMarquee2/marquee/bbcb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/bbcb/boxart /home/pi/PieMarquee2/marquee/bbcb
fi

if [ ! -d /home/pi/RetroPie/roms/c64/boxart ]; then
  mkdir /home/pi/RetroPie/roms/c64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c64/boxart
  echo boxart folder for c64 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c64/boxart /home/pi/PieMarquee2/marquee/c64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c64/boxart /home/pi/PieMarquee2/marquee/c64
fi

if [ ! -d /home/pi/RetroPie/roms/c128/boxart ]; then
  mkdir /home/pi/RetroPie/roms/c128 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c128/boxart
  echo boxart folder for c128 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c128/boxart /home/pi/PieMarquee2/marquee/c128
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c128/boxart /home/pi/PieMarquee2/marquee/c128
fi


if [ ! -d /home/pi/RetroPie/roms/cdimono1/boxart ]; then
  mkdir /home/pi/RetroPie/roms/cdimono1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdimono1/boxart
  echo boxart folder for cdimono1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdimono1/boxart /home/pi/PieMarquee2/marquee/cdimono1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdimono1/boxart /home/pi/PieMarquee2/marquee/cdimono1
fi

if [ ! -d /home/pi/RetroPie/roms/cdtv/boxart ]; then
  mkdir /home/pi/RetroPie/roms/cdtv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdtv/boxart
  echo boxart folder for cdtv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdtv/boxart /home/pi/PieMarquee2/marquee/cdtv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdtv/boxart /home/pi/PieMarquee2/marquee/cdtv
fi

if [ ! -d /home/pi/RetroPie/roms/custom ]; then
  mkdir /home/pi/RetroPie/roms/custom >/dev/null 2>&1
  echo custom folder for custom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
fi

if [ ! -d /home/pi/RetroPie/roms/system ]; then
  mkdir /home/pi/RetroPie/roms/system >/dev/null 2>&1
  echo system folder for system not found will now add !
  ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
fi

if [ ! -d /home/pi/RetroPie/roms/dendy/boxart ]; then
  mkdir /home/pi/RetroPie/roms/dendy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dendy/boxart
  echo boxart folder for dendy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dendy/boxart /home/pi/PieMarquee2/marquee/dendy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dendy/boxart /home/pi/PieMarquee2/marquee/dendy
fi

if [ ! -d /home/pi/RetroPie/roms/electron/boxart ]; then
  mkdir /home/pi/RetroPie/roms/electron >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/electron/boxart
  echo boxart folder for electron not found will now add !
  ln -sfn /home/pi/RetroPie/roms/electron/boxart /home/pi/PieMarquee2/marquee/electron
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/electron/boxart /home/pi/PieMarquee2/marquee/electron
fi

if [ ! -d /home/pi/RetroPie/roms/famicom/boxart ]; then
  mkdir /home/pi/RetroPie/roms/famicom >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/famicom/boxart
  echo boxart folder for famicom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/famicom/boxart /home/pi/PieMarquee2/marquee/famicom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/famicom/boxart /home/pi/PieMarquee2/marquee/famicom
fi

if [ ! -d /home/pi/RetroPie/roms/fba/boxart ]; then
  mkdir /home/pi/RetroPie/roms/fba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fba/boxart
  echo boxart folder for fba not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fba/boxart /home/pi/PieMarquee2/marquee/fba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fba/boxart /home/pi/PieMarquee2/marquee/fba
fi

if [ ! -d /home/pi/RetroPie/roms/fbneo/boxart ]; then
  mkdir /home/pi/RetroPie/roms/fbneo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fbneo/boxart
  echo boxart folder for fbneo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fbneo/boxart /home/pi/PieMarquee2/marquee/fbneo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fbneo/boxart /home/pi/PieMarquee2/marquee/fbneo
fi

if [ ! -d /home/pi/RetroPie/roms/fds/boxart ]; then
  mkdir /home/pi/RetroPie/roms/fds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fds/boxart
  echo boxart folder for fds not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fds/boxart /home/pi/PieMarquee2/marquee/fds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fds/boxart /home/pi/PieMarquee2/marquee/fds
fi

if [ ! -d /home/pi/RetroPie/roms/fm7/boxart ]; then
  mkdir /home/pi/RetroPie/roms/fm7 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fm7/boxart
  echo boxart folder for fm7 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fm7/boxart /home/pi/PieMarquee2/marquee/fm7
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fm7/boxart /home/pi/PieMarquee2/marquee/fm7
fi

if [ ! -d /home/pi/RetroPie/roms/gamate/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gamate >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamate/boxart
  echo boxart folder for gamate not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamate/boxart /home/pi/PieMarquee2/marquee/gamate
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamate/boxart /home/pi/PieMarquee2/marquee/gamate
fi

if [ ! -d /home/pi/RetroPie/roms/gamepock/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gamepock >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamepock/boxart
  echo boxart folder for gamepock not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamepock/boxart /home/pi/PieMarquee2/marquee/gamepock
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamepock/boxart /home/pi/PieMarquee2/marquee/gamepock
fi

if [ ! -d /home/pi/RetroPie/roms/gbah/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gbah >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbah/boxart
  echo boxart folder for gbah not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbah/boxart /home/pi/PieMarquee2/marquee/gbah
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbah/boxart /home/pi/PieMarquee2/marquee/gbah
fi

if [ ! -d /home/pi/RetroPie/roms/gbh/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gbh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbh/boxart
  echo boxart folder for gbh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbh/boxart /home/pi/PieMarquee2/marquee/gbh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbh/boxart /home/pi/PieMarquee2/marquee/gbh
fi

if [ ! -d /home/pi/RetroPie/roms/gbm/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gbm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbm/boxart
  echo boxart folder for gbm not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbm/boxart /home/pi/PieMarquee2/marquee/gbm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbm/boxart /home/pi/PieMarquee2/marquee/gbm
fi

if [ ! -d /home/pi/RetroPie/roms/genh/boxart ]; then
  mkdir /home/pi/RetroPie/roms/genh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/genh/boxart
  echo boxart folder for genh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/genh/boxart /home/pi/PieMarquee2/marquee/genh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/genh/boxart /home/pi/PieMarquee2/marquee/genh
fi

if [ ! -d /home/pi/RetroPie/roms/ggh/boxart ]; then
  mkdir /home/pi/RetroPie/roms/ggh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ggh/boxart
  echo boxart folder for ggh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ggh/boxart /home/pi/PieMarquee2/marquee/ggh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ggh/boxart /home/pi/PieMarquee2/marquee/ggh
fi
if [ ! -d /home/pi/RetroPie/roms/gx4000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/gx4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gx4000/boxart
  echo boxart folder for gx4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gx4000/boxart /home/pi/PieMarquee2/marquee/gx4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gx4000/boxart /home/pi/PieMarquee2/marquee/gx4000
fi

if [ ! -d /home/pi/RetroPie/roms/instruction ]; then
  mkdir /home/pi/RetroPie/roms/instruction >/dev/null 2>&1
  echo instruction folder for instruction not found will now add !
  ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
fi

if [ ! -d /home/pi/RetroPie/roms/laser200/boxart ]; then
  mkdir /home/pi/RetroPie/roms/laser200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/laser200/boxart
  echo boxart folder for laser200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/laser200/boxart /home/pi/PieMarquee2/marquee/laser200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/laser200/boxart /home/pi/PieMarquee2/marquee/laser200
fi

if [ ! -d /home/pi/RetroPie/roms/m5/boxart ]; then
  mkdir /home/pi/RetroPie/roms/m5 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/m5/boxart
  echo boxart folder for m5 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/m5/boxart /home/pi/PieMarquee2/marquee/m5
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/m5/boxart /home/pi/PieMarquee2/marquee/m5
fi

if [ ! -d /home/pi/RetroPie/roms/mame/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame/boxart
  echo boxart folder for mame not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame/boxart /home/pi/PieMarquee2/marquee/mame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame/boxart /home/pi/PieMarquee2/marquee/mame
fi

if [ ! -d /home/pi/RetroPie/roms/markii/boxart ]; then
  mkdir /home/pi/RetroPie/roms/markii >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/markii/boxart
  echo boxart folder for markii not found will now add !
  ln -sfn /home/pi/RetroPie/roms/markii/boxart /home/pi/PieMarquee2/marquee/markii
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/markii/boxart /home/pi/PieMarquee2/marquee/markii
fi

if [ ! -d /home/pi/RetroPie/roms/megacd/boxart ]; then
  mkdir /home/pi/RetroPie/roms/megacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd/boxart
  echo boxart folder for megacd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd/boxart /home/pi/PieMarquee2/marquee/megacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd/boxart /home/pi/PieMarquee2/marquee/megacd
fi

if [ ! -d /home/pi/RetroPie/roms/megacd-japan/boxart ]; then
  mkdir /home/pi/RetroPie/roms/megacd-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd-japan/boxart
  echo boxart folder for megacd-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd-japan/boxart /home/pi/PieMarquee2/marquee/megacd-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd-japan/boxart /home/pi/PieMarquee2/marquee/megacd-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive-japan/boxart ]; then
  mkdir /home/pi/RetroPie/roms/megadrive-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive-japan/boxart
  echo boxart folder for megadrive-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive-japan/boxart /home/pi/PieMarquee2/marquee/megadrive-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive-japan/boxart /home/pi/PieMarquee2/marquee/megadrive-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megaduck/boxart ]; then
  mkdir /home/pi/RetroPie/roms/megaduck >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megaduck/boxart
  echo boxart folder for megaduck not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megaduck/boxart /home/pi/PieMarquee2/marquee/megaduck
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megaduck/boxart /home/pi/PieMarquee2/marquee/megaduck
fi

if [ ! -d /home/pi/RetroPie/roms/model2/boxart ]; then
  mkdir /home/pi/RetroPie/roms/model2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model2/boxart
  echo boxart folder for model2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model2/boxart /home/pi/PieMarquee2/marquee/model2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model2/boxart /home/pi/PieMarquee2/marquee/model2
fi

if [ ! -d /home/pi/RetroPie/roms/model3/boxart ]; then
  mkdir /home/pi/RetroPie/roms/model3 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model3/boxart
  echo boxart folder for model3 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model3/boxart /home/pi/PieMarquee2/marquee/model3
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model3/boxart /home/pi/PieMarquee2/marquee/model3
fi

if [ ! -d /home/pi/RetroPie/roms/msx2/boxart ]; then
  mkdir /home/pi/RetroPie/roms/msx2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2/boxart
  echo boxart folder for msx2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2/boxart /home/pi/PieMarquee2/marquee/msx2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2/boxart /home/pi/PieMarquee2/marquee/msx2
fi

if [ ! -d /home/pi/RetroPie/roms/msx2plus/boxart ]; then
  mkdir /home/pi/RetroPie/roms/msx2plus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2plus/boxart
  echo boxart folder for msx2plus not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2plus/boxart /home/pi/PieMarquee2/marquee/msx2plus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2plus/boxart /home/pi/PieMarquee2/marquee/msx2plus
fi

if [ ! -d /home/pi/RetroPie/roms/msxturbo/boxart ]; then
  mkdir /home/pi/RetroPie/roms/msxturbo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msxturbo/boxart
  echo boxart folder for msxturbo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msxturbo/boxart /home/pi/PieMarquee2/marquee/msxturbo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msxturbo/boxart /home/pi/PieMarquee2/marquee/msxturbo
fi

if [ ! -d /home/pi/RetroPie/roms/mtx/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mtx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mtx/boxart
  echo boxart folder for mtx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mtx/boxart /home/pi/PieMarquee2/marquee/mtx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mtx/boxart /home/pi/PieMarquee2/marquee/mtx
fi

if [ ! -d /home/pi/RetroPie/roms/multivision/boxart ]; then
  mkdir /home/pi/RetroPie/roms/multivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/multivision/boxart
  echo boxart folder for multivision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/multivision/boxart /home/pi/PieMarquee2/marquee/multivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/multivision/boxart /home/pi/PieMarquee2/marquee/multivision
fi

if [ ! -d /home/pi/RetroPie/roms/mz700/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mz700 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz700/boxart
  echo boxart folder for mz700 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz700/boxart /home/pi/PieMarquee2/marquee/mz700
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz700/boxart /home/pi/PieMarquee2/marquee/mz700
fi

if [ ! -d /home/pi/RetroPie/roms/mz2500/boxart ]; then
  mkdir /home/pi/RetroPie/roms/mz2500 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz2500/boxart
  echo boxart folder for mz2500 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz2500/boxart /home/pi/PieMarquee2/marquee/mz2500
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz2500/boxart /home/pi/PieMarquee2/marquee/mz2500
fi

if [ ! -d /home/pi/RetroPie/roms/n64dd/boxart ]; then
  mkdir /home/pi/RetroPie/roms/n64dd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64dd/boxart
  echo boxart folder for n64dd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64dd/boxart /home/pi/PieMarquee2/marquee/n64dd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64dd/boxart /home/pi/PieMarquee2/marquee/n64dd
fi

if [ ! -d /home/pi/RetroPie/roms/n64-japan/boxart ]; then
  mkdir /home/pi/RetroPie/roms/n64-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64-japan/boxart
  echo boxart folder for n64-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64-japan/boxart /home/pi/PieMarquee2/marquee/n64-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64-japan/boxart /home/pi/PieMarquee2/marquee/n64-japan
fi

if [ ! -d /home/pi/RetroPie/roms/neocdz/boxart ]; then
  mkdir /home/pi/RetroPie/roms/neocdz >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neocdz/boxart
  echo boxart folder for neocdz not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neocdz/boxart /home/pi/PieMarquee2/marquee/neocdz
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neocdz/boxart /home/pi/PieMarquee2/marquee/neocdz
fi

if [ ! -d /home/pi/RetroPie/roms/nesh/boxart ]; then
  mkdir /home/pi/RetroPie/roms/nesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nesh/boxart
  echo boxart folder for nesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nesh/boxart /home/pi/PieMarquee2/marquee/nesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nesh/boxart /home/pi/PieMarquee2/marquee/nesh
fi

if [ ! -d /home/pi/RetroPie/roms/plus4/boxart ]; then
  mkdir /home/pi/RetroPie/roms/plus4 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/plus4/boxart
  echo boxart folder for plus4 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/plus4/boxart /home/pi/PieMarquee2/marquee/plus4
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/plus4/boxart /home/pi/PieMarquee2/marquee/plus4
fi

if [ ! -d /home/pi/RetroPie/roms/psp-japan/boxart ]; then
  mkdir /home/pi/RetroPie/roms/psp-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp-japan/boxart
  echo boxart folder for psp-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp-japan/boxart /home/pi/PieMarquee2/marquee/psp-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp-japan/boxart /home/pi/PieMarquee2/marquee/psp-japan
fi

if [ ! -d /home/pi/RetroPie/roms/pspminis/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pspminis >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pspminis/boxart
  echo boxart folder for pspminis not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pspminis/boxart /home/pi/PieMarquee2/marquee/pspminis
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pspminis/boxart /home/pi/PieMarquee2/marquee/pspminis
fi

if [ ! -d /home/pi/RetroPie/roms/publisher ]; then
  mkdir /home/pi/RetroPie/roms/publisher >/dev/null 2>&1
  echo publisher folder for publisher not found will now add !
  ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
fi

if [ ! -d /home/pi/RetroPie/roms/pv1000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pv1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv1000/boxart
  echo boxart folder for pv1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv1000/boxart /home/pi/PieMarquee2/marquee/pv1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv1000/boxart /home/pi/PieMarquee2/marquee/pv1000
fi

if [ ! -d /home/pi/RetroPie/roms/pv2000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/pv2000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv2000/boxart
  echo boxart folder for pv2000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv2000/boxart /home/pi/PieMarquee2/marquee/pv2000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv2000/boxart /home/pi/PieMarquee2/marquee/pv2000
fi

if [ ! -d /home/pi/RetroPie/roms/satellaview/boxart ]; then
  mkdir /home/pi/RetroPie/roms/satellaview >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/satellaview/boxart
  echo boxart folder for satellaview not found will now add !
  ln -sfn /home/pi/RetroPie/roms/satellaview/boxart /home/pi/PieMarquee2/marquee/satellaview
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/satellaview/boxart /home/pi/PieMarquee2/marquee/satellaview
fi

if [ ! -d /home/pi/RetroPie/roms/saturn-japan/boxart ]; then
  mkdir /home/pi/RetroPie/roms/saturn-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn-japan/boxart
  echo boxart folder for saturn-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn-japan/boxart /home/pi/PieMarquee2/marquee/saturn-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn-japan/boxart /home/pi/PieMarquee2/marquee/saturn-japan
fi

if [ ! -d /home/pi/RetroPie/roms/sc-3000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/sc-3000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sc-3000/boxart
  echo boxart folder for sc-3000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sc-3000/boxart /home/pi/PieMarquee2/marquee/sc-3000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sc-3000/boxart /home/pi/PieMarquee2/marquee/sc-3000
fi

if [ ! -d /home/pi/RetroPie/roms/scv/boxart ]; then
  mkdir /home/pi/RetroPie/roms/scv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scv/boxart
  echo boxart folder for scv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scv/boxart /home/pi/PieMarquee2/marquee/scv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scv/boxart /home/pi/PieMarquee2/marquee/scv
fi

if [ ! -d /home/pi/RetroPie/roms/sfc/boxart ]; then
  mkdir /home/pi/RetroPie/roms/sfc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sfc/boxart
  echo boxart folder for sfc not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sfc/boxart /home/pi/PieMarquee2/marquee/sfc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sfc/boxart /home/pi/PieMarquee2/marquee/sfc
fi

if [ ! -d /home/pi/RetroPie/roms/sgb/boxart ]; then
  mkdir /home/pi/RetroPie/roms/sgb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sgb/boxart
  echo boxart folder for sgb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sgb/boxart /home/pi/PieMarquee2/marquee/sgb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sgb/boxart /home/pi/PieMarquee2/marquee/sgb
fi

if [ ! -d /home/pi/RetroPie/roms/snesh/boxart ]; then
  mkdir /home/pi/RetroPie/roms/snesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesh/boxart
  echo boxart folder for snesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesh/boxart /home/pi/PieMarquee2/marquee/snesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesh/boxart /home/pi/PieMarquee2/marquee/snesh
fi

if [ ! -d /home/pi/RetroPie/roms/sorcerer/boxart ]; then
  mkdir /home/pi/RetroPie/roms/sorcerer >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sorcerer/boxart
  echo boxart folder for sorcerer not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sorcerer/boxart /home/pi/PieMarquee2/marquee/sorcerer
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sorcerer/boxart /home/pi/PieMarquee2/marquee/sorcerer
fi

if [ ! -d /home/pi/RetroPie/roms/sufami/boxart ]; then
  mkdir /home/pi/RetroPie/roms/sufami >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sufami/boxart
  echo boxart folder for sufami not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sufami/boxart /home/pi/PieMarquee2/marquee/sufami
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sufami/boxart /home/pi/PieMarquee2/marquee/sufami
fi

if [ ! -d /home/pi/RetroPie/roms/supergrafx/boxart ]; then
  mkdir /home/pi/RetroPie/roms/supergrafx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/supergrafx/boxart
  echo boxart folder for supergrafx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/supergrafx/boxart /home/pi/PieMarquee2/marquee/supergrafx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/supergrafx/boxart /home/pi/PieMarquee2/marquee/supergrafx
fi

if [ ! -d /home/pi/RetroPie/roms/svi318/boxart ]; then
  mkdir /home/pi/RetroPie/roms/svi318 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svi318/boxart
  echo boxart folder for svi318 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svi318/boxart /home/pi/PieMarquee2/marquee/svi318
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svi318/boxart /home/pi/PieMarquee2/marquee/svi318
fi

if [ ! -d /home/pi/RetroPie/roms/svision/boxart ]; then
  mkdir /home/pi/RetroPie/roms/svision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svision/boxart
  echo boxart folder for svision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svision/boxart /home/pi/PieMarquee2/marquee/svision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svision/boxart /home/pi/PieMarquee2/marquee/svision
fi

if [ ! -d /home/pi/RetroPie/roms/tic80/boxart ]; then
  mkdir /home/pi/RetroPie/roms/tic80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tic80/boxart 
  echo boxart folder for tic80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tic80/boxart /home/pi/PieMarquee2/marquee/tic80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tic80/boxart /home/pi/PieMarquee2/marquee/tic80
fi

if [ ! -d /home/pi/RetroPie/roms/tutor/boxart ]; then
  mkdir /home/pi/RetroPie/roms/tutor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tutor/boxart
  echo boxart folder for tutor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tutor/boxart /home/pi/PieMarquee2/marquee/tutor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tutor/boxart /home/pi/PieMarquee2/marquee/tutor
fi

if [ ! -d /home/pi/RetroPie/roms/vc4000/boxart ]; then
  mkdir /home/pi/RetroPie/roms/vc4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vc4000/boxart
  echo boxart folder for vc4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vc4000/boxart /home/pi/PieMarquee2/marquee/vc4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vc4000/boxart /home/pi/PieMarquee2/marquee/vc4000
fi

if [ ! -d /home/pi/RetroPie/roms/vic20/boxart ]; then
  mkdir /home/pi/RetroPie/roms/vic20 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vic20/boxart
  echo boxart folder for vic20 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vic20/boxart /home/pi/PieMarquee2/marquee/vic20
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vic20/boxart /home/pi/PieMarquee2/marquee/vic20
fi

else
echo "$(tput setaf 6)
Looks like you have the marquee script off please turn it on and try again.
$(tput sgr0)"   
sleep 4
fi
}

# Make folder wheel SUPREME -----------------------------------------------------------------------------------------------------------------------------------
function system-wheel() {
	dialog --infobox "APPLYING CHANGES NOW" 3 25 ; sleep 6
	if [ ! -d /home/pi/PieMarquee3 ]; then
	
if [ ! -d /home/pi/RetroPie/roms/3do/wheel ]; then
  mkdir /home/pi/RetroPie/roms/3do >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/3do/wheel
  echo wheel folder for 3do was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/3do/wheel /home/pi/PieMarquee2/marquee/3do
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/3do/wheel /home/pi/PieMarquee2/marquee/3do
fi

if [ ! -d /home/pi/RetroPie/roms/ags/wheel ]; then
  mkdir /home/pi/RetroPie/roms/ags >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ags/wheel
  echo wheel folder for ags was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ags/wheel /home/pi/PieMarquee2/marquee/ags
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ags/wheel /home/pi/PieMarquee2/marquee/ags
fi

if [ ! -d /home/pi/RetroPie/roms/amiga/wheel ]; then
  mkdir /home/pi/RetroPie/roms/amiga >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga/wheel
  echo wheel folder for amiga was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga/wheel /home/pi/PieMarquee2/marquee/amiga
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga/wheel /home/pi/PieMarquee2/marquee/amiga
fi

if [ ! -d /home/pi/RetroPie/roms/amstradcpc/wheel ]; then
  mkdir /home/pi/RetroPie/roms/amstradcpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amstradcpc/wheel
  echo wheel folder for amstradcpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amstradcpc/wheel /home/pi/PieMarquee2/marquee/amstradcpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amstradcpc/wheel /home/pi/PieMarquee2/marquee/amstradcpc
fi

if [ ! -d /home/pi/RetroPie/roms/apple2/wheel ]; then
  mkdir /home/pi/RetroPie/roms/apple2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2/wheel
  echo wheel folder for apple2 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2/wheel /home/pi/PieMarquee2/marquee/apple2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2/wheel /home/pi/PieMarquee2/marquee/apple2
fi

if [ ! -d /home/pi/RetroPie/roms/arcade/wheel ]; then
  mkdir /home/pi/RetroPie/roms/aracde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcade/wheel
  echo wheel folder for arcade was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcade/wheel /home/pi/PieMarquee2/marquee/arcade
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcade/wheel /home/pi/PieMarquee2/marquee/arcade
fi

if [ ! -d /home/pi/RetroPie/roms/arcadia/wheel ]; then
  mkdir /home/pi/RetroPie/roms/arcadia >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/arcadia/wheel
  echo wheel folder for arcadia was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/arcadia/wheel /home/pi/PieMarquee2/marquee/arcadia
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/arcadia/wheel /home/pi/PieMarquee2/marquee/arcadia
fi

if [ ! -d /home/pi/RetroPie/roms/atari800/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atari800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari800/wheel
  echo wheel folder for atari800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari800/wheel /home/pi/PieMarquee2/marquee/atari800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari800/wheel /home/pi/PieMarquee2/marquee/atari800
fi

if [ ! -d /home/pi/RetroPie/roms/atari2600/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atari2600 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari2600/wheel
  echo wheel folder for atari2600 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari2600/wheel /home/pi/PieMarquee2/marquee/atari2600
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari2600/wheel /home/pi/PieMarquee2/marquee/atari2600
fi

if [ ! -d /home/pi/RetroPie/roms/atari5200/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atari5200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari5200/wheel
  echo wheel folder for atari5200 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari5200/wheel /home/pi/PieMarquee2/marquee/atari5200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari5200/wheel /home/pi/PieMarquee2/marquee/atari5200
fi

if [ ! -d /home/pi/RetroPie/roms/atari7800/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atari7800 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atari7800/wheel
  echo wheel folder for atari7800 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atari7800/wheel /home/pi/PieMarquee2/marquee/atari7800
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atari7800/wheel /home/pi/PieMarquee2/marquee/atari7800
fi

if [ ! -d /home/pi/RetroPie/roms/atarijaguar/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atarijaguar >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarijaguar/wheel
  echo wheel folder for atarijaguar was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarijaguar/wheel /home/pi/PieMarquee2/marquee/atarijaguar
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarijaguar/wheel /home/pi/PieMarquee2/marquee/atarijaguar
fi

if [ ! -d /home/pi/RetroPie/roms/atarilynx/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atarilynx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarilynx/wheel
  echo wheel folder for atarilynx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarilynx/wheel /home/pi/PieMarquee2/marquee/atarilynx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarilynx/wheel /home/pi/PieMarquee2/marquee/atarilynx
fi

if [ ! -d /home/pi/RetroPie/roms/atarist/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atarist >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atarist/wheel
  echo wheel folder for atarist was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atarist/wheel /home/pi/PieMarquee2/marquee/atarist
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atarist/wheel /home/pi/PieMarquee2/marquee/atarist
fi

if [ ! -d /home/pi/RetroPie/roms/atomiswave/wheel ]; then
  mkdir /home/pi/RetroPie/roms/atomiswave >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/atomiswave/wheel
  echo wheel folder for atomiswave was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/atomiswave/wheel /home/pi/PieMarquee2/marquee/atomiswave
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/atomiswave/wheel /home/pi/PieMarquee2/marquee/atomiswave
fi

if [ ! -d /home/pi/RetroPie/roms/channelf/wheel ]; then
  mkdir /home/pi/RetroPie/roms/channelf >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/channelf/wheel
  echo wheel folder for channelf was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/channelf/wheel /home/pi/PieMarquee2/marquee/channelf
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/channelf/wheel /home/pi/PieMarquee2/marquee/channelf
fi

if [ ! -d /home/pi/RetroPie/roms/chromium/wheel ]; then
  mkdir /home/pi/RetroPie/roms/chromium >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/chromium/wheel
  echo wheel folder for chromium was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/chromium/wheel /home/pi/PieMarquee2/marquee/chromium
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/chromium/wheel /home/pi/PieMarquee2/marquee/chromium
fi

if [ ! -d /home/pi/RetroPie/roms/coco/wheel ]; then
  mkdir /home/pi/RetroPie/roms/coco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coco/wheel
  echo wheel folder for coco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coco/wheel /home/pi/PieMarquee2/marquee/coco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coco/wheel /home/pi/PieMarquee2/marquee/coco
fi

if [ ! -d /home/pi/RetroPie/roms/coleco/wheel ]; then
  mkdir /home/pi/RetroPie/roms/coleco >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/coleco/wheel
  echo wheel folder for coleco was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/coleco/wheel /home/pi/PieMarquee2/marquee/coleco
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/coleco/wheel /home/pi/PieMarquee2/marquee/coleco
fi

if [ ! -d /home/pi/RetroPie/roms/crvision/wheel ]; then
  mkdir /home/pi/RetroPie/roms/crvision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/crvision/wheel
  echo wheel folder for crvision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/crvision/wheel /home/pi/PieMarquee2/marquee/crvision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/crvision/wheel /home/pi/PieMarquee2/marquee/crvision
fi

if [ ! -d /home/pi/RetroPie/roms/daphne/wheel ]; then
  mkdir /home/pi/RetroPie/roms/daphne >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/daphne/wheel
  echo wheel folder for daphne was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/daphne/wheel /home/pi/PieMarquee2/marquee/daphne
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/daphne/wheel /home/pi/PieMarquee2/marquee/daphne
fi

if [ ! -d /home/pi/RetroPie/roms/dragon32/wheel ]; then
  mkdir /home/pi/RetroPie/roms/dragon32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dragon32/wheel
  echo wheel folder for dragon32 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dragon32/wheel /home/pi/PieMarquee2/marquee/dragon32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dragon32/wheel /home/pi/PieMarquee2/marquee/dragon32
fi

if [ ! -d /home/pi/RetroPie/roms/dreamcast/wheel ]; then
  mkdir /home/pi/RetroPie/roms/dreamcast >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dreamcast/wheel
  echo wheel folder for dreamcast was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dreamcast/wheel /home/pi/PieMarquee2/marquee/dreamcast
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dreamcast/wheel /home/pi/PieMarquee2/marquee/dreamcast
fi

if [ ! -d /home/pi/RetroPie/roms/gameandwatch/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gameandwatch >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gameandwatch/wheel
  echo wheel folder for gameandwatch was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gameandwatch/wheel /home/pi/PieMarquee2/marquee/gameandwatch
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gameandwatch/wheel /home/pi/PieMarquee2/marquee/gameandwatch
fi

if [ ! -d /home/pi/RetroPie/roms/gamegear/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gamegear >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamegear/wheel
  echo wheel folder for gamegear was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamegear/wheel /home/pi/PieMarquee2/marquee/gamegear
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamegear/wheel /home/pi/PieMarquee2/marquee/gamegear
fi

if [ ! -d /home/pi/RetroPie/roms/gb/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gb/wheel
  echo wheel folder for gb was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gb/wheel /home/pi/PieMarquee2/marquee/gb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gb/wheel /home/pi/PieMarquee2/marquee/gb
fi

if [ ! -d /home/pi/RetroPie/roms/gba/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gba/wheel
  echo wheel folder for gba was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gba/wheel /home/pi/PieMarquee2/marquee/gba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gba/wheel /home/pi/PieMarquee2/marquee/gba
fi

if [ ! -d /home/pi/RetroPie/roms/gbc/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gbc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbc/wheel
  echo wheel folder for gbc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gb/wheel /home/pi/PieMarquee2/marquee/gbc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gb/wheel /home/pi/PieMarquee2/marquee/gbc
fi

if [ ! -d /home/pi/RetroPie/roms/intellivision/wheel ]; then
  mkdir /home/pi/RetroPie/roms/intellivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/intellivision/wheel
  echo wheel folder for intellivision was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/intellivision/wheel /home/pi/PieMarquee2/marquee/intellivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/intellivision/wheel /home/pi/PieMarquee2/marquee/intellivision
fi

if [ ! -d /home/pi/RetroPie/roms/kodi/wheel ]; then
  mkdir /home/pi/RetroPie/roms/kodi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/kodi/wheel
  echo wheel folder for kodi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/kodi/wheel /home/pi/PieMarquee2/marquee/kodi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/kodi/wheel /home/pi/PieMarquee2/marquee/kodi
fi

if [ ! -d /home/pi/RetroPie/roms/love/wheel ]; then
  mkdir /home/pi/RetroPie/roms/love >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/love/wheel
  echo wheel folder for love was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/love/wheel /home/pi/PieMarquee2/marquee/love
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/love/wheel /home/pi/PieMarquee2/marquee/love
fi

if [ ! -d /home/pi/RetroPie/roms/macintosh/wheel ]; then
  mkdir /home/pi/RetroPie/roms/macintosh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/macintosh/wheel
  echo wheel folder for macintosh was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/macintosh/wheel /home/pi/PieMarquee2/marquee/macintosh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/macintosh/wheel /home/pi/PieMarquee2/marquee/macintosh
fi

if [ ! -d /home/pi/RetroPie/roms/mame-advmame/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mame-advmame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-advmame/wheel
  echo wheel folder for mame-advmame was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-advmame/wheel /home/pi/PieMarquee2/marquee/mame-advmame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-advmame/wheel /home/pi/PieMarquee2/marquee/mame-advmame
fi

if [ ! -d /home/pi/RetroPie/roms/mame-libretro/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mame-libretro >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-libretro/wheel
  echo wheel folder for mame-libretro was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-libretro/wheel /home/pi/PieMarquee2/marquee/mame-libretro
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-libretro/wheel /home/pi/PieMarquee2/marquee/mame-libretro
fi

if [ ! -d /home/pi/RetroPie/roms/mame-mame4all/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mame-mame4all >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame-mame4all/wheel
  echo wheel folder for mame-mame4all was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame-mame4all/wheel /home/pi/PieMarquee2/marquee/mame-mame4all
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame-mame4all/wheel /home/pi/PieMarquee2/marquee/mame-mame4all
fi

if [ ! -d /home/pi/RetroPie/roms/mastersystem/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mastersystem >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mastersystem/wheel
  echo wheel folder for mastersystem was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mastersystem/wheel /home/pi/PieMarquee2/marquee/mastersystem
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mastersystem/wheel /home/pi/PieMarquee2/marquee/mastersystem
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive/wheel ]; then
  mkdir /home/pi/RetroPie/roms/megadrive >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive/wheel
  echo wheel folder for megadrive was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive/wheel /home/pi/PieMarquee2/marquee/megadrive
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive/wheel /home/pi/PieMarquee2/marquee/megadrive
fi

if [ ! -d /home/pi/RetroPie/roms/msx/wheel ]; then
  mkdir /home/pi/RetroPie/roms/msx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx/wheel
  echo wheel folder for msx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx/wheel /home/pi/PieMarquee2/marquee/msx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx/wheel /home/pi/PieMarquee2/marquee/msx
fi

if [ ! -d /home/pi/RetroPie/roms/n64/wheel ]; then
  mkdir /home/pi/RetroPie/roms/n64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64/wheel
  echo wheel folder for n64 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64/wheel /home/pi/PieMarquee2/marquee/n64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64/wheel /home/pi/PieMarquee2/marquee/n64
fi

if [ ! -d /home/pi/RetroPie/roms/naomi/wheel ]; then
  mkdir /home/pi/RetroPie/roms/naomi >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/naomi/wheel
  echo wheel folder for naomi was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/naomi/wheel /home/pi/PieMarquee2/marquee/naomi
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/wheel /home/pi/PieMarquee2/marquee/naomi
fi

if [ ! -d /home/pi/RetroPie/roms/nds/wheel ]; then
  mkdir /home/pi/RetroPie/roms/nds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nds/wheel
  echo wheel folder for nds was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nds/wheel /home/pi/PieMarquee2/marquee/nds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/naomi/wheel /home/pi/PieMarquee2/marquee/nds
fi

if [ ! -d /home/pi/RetroPie/roms/neogeo/wheel ]; then
  mkdir /home/pi/RetroPie/roms/neogeo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeo/wheel
  echo wheel folder for neogeo was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeo/wheel /home/pi/PieMarquee2/marquee/neogeo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeo/wheel /home/pi/PieMarquee2/marquee/neogeo
fi

if [ ! -d /home/pi/RetroPie/roms/neogeocd/wheel ]; then
  mkdir /home/pi/RetroPie/roms/neogeocd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neogeocd/wheel
  echo wheel folder for neogeocd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neogeocd/wheel /home/pi/PieMarquee2/marquee/neogeocd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neogeocd/wheel /home/pi/PieMarquee2/marquee/neogeocd
fi

if [ ! -d /home/pi/RetroPie/roms/nes/wheel ]; then
  mkdir /home/pi/RetroPie/roms/nes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nes/wheel
  echo wheel folder for nes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nes/wheel /home/pi/PieMarquee2/marquee/nes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nes/wheel /home/pi/PieMarquee2/marquee/nes
fi

if [ ! -d /home/pi/RetroPie/roms/ngp/wheel ]; then
  mkdir /home/pi/RetroPie/roms/ngp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngp/wheel
  echo wheel folder for ngp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngp/wheel /home/pi/PieMarquee2/marquee/ngp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngp/wheel /home/pi/PieMarquee2/marquee/ngp
fi

if [ ! -d /home/pi/RetroPie/roms/ngpc/wheel ]; then
  mkdir /home/pi/RetroPie/roms/ngpc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ngpc/wheel
  echo wheel folder for ngpc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ngpc/wheel /home/pi/PieMarquee2/marquee/ngpc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ngpc/wheel /home/pi/PieMarquee2/marquee/ngpc
fi

if [ ! -d /home/pi/RetroPie/roms/openbor/wheel ]; then
  mkdir /home/pi/RetroPie/roms/openbor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/openbor/wheel
  echo wheel folder for openbor was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/openbor/wheel /home/pi/PieMarquee2/marquee/openbor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/openbor/wheel /home/pi/PieMarquee2/marquee/openbor
fi

if [ ! -d /home/pi/RetroPie/roms/oric/wheel ]; then
  mkdir /home/pi/RetroPie/roms/oric >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/oric/wheel
  echo wheel folder for oric was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/oric/wheel /home/pi/PieMarquee2/marquee/oric
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/oric/wheel /home/pi/PieMarquee2/marquee/oric
fi

if [ ! -d /home/pi/RetroPie/roms/pc/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc/wheel
  echo wheel folder for pc was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc/wheel /home/pi/PieMarquee2/marquee/pc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc/wheel /home/pi/PieMarquee2/marquee/pc
fi

if [ ! -d /home/pi/RetroPie/roms/pc88/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pc88 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc88/wheel
  echo wheel folder for pc88 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc88/wheel /home/pi/PieMarquee2/marquee/pc88
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc88/wheel /home/pi/PieMarquee2/marquee/pc88
fi

if [ ! -d /home/pi/RetroPie/roms/pc98/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pc98 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pc98/wheel
  echo wheel folder for pc98 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pc98/wheel /home/pi/PieMarquee2/marquee/pc98
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pc98/wheel /home/pi/PieMarquee2/marquee/pc98
fi

if [ ! -d /home/pi/RetroPie/roms/pcengine/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pcengine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcengine/wheel
  echo wheel folder for pcengine was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcengine/wheel /home/pi/PieMarquee2/marquee/pcengine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcengine/wheel /home/pi/PieMarquee2/marquee/pcengine
fi

if [ ! -d /home/pi/RetroPie/roms/pcenginecd/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pcenginecd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcenginecd/wheel
  echo wheel folder for pcenginecd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcenginecd/wheel /home/pi/PieMarquee2/marquee/pcenginecd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcenginecd/wheel /home/pi/PieMarquee2/marquee/pcenginecd
fi

if [ ! -d /home/pi/RetroPie/roms/pcfx/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pcfx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pcfx/wheel
  echo wheel folder for pcfx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pcfx/wheel /home/pi/PieMarquee2/marquee/pcfx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pcfx/wheel /home/pi/PieMarquee2/marquee/pcfx
fi

if [ ! -d /home/pi/RetroPie/roms/.supremeteammarquee ]; then
  mkdir /home/pi/RetroPie/roms/.supremeteammarquee >/dev/null 2>&1
  sleep 1
fi

if [ ! -d /home/pi/RetroPie/roms/pixel/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pixel >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pixel/wheel
  echo wheel folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pixel/wheel /home/pi/PieMarquee2/marquee/pixel
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pixel/wheel /home/pi/PieMarquee2/marquee/pixel
fi

if [ ! -d /home/pi/RetroPie/roms/pokemini/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pokemini >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pokemini/wheel
  echo wheel folder for pixel was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pokemini/wheel /home/pi/PieMarquee2/marquee/pokemini
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pokemini/wheel /home/pi/PieMarquee2/marquee/pokemini
fi

if [ ! -d /home/pi/RetroPie/roms/ports/wheel ]; then
  mkdir /home/pi/RetroPie/roms/ports >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ports/wheel
  echo wheel folder for ports was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ports/wheel /home/pi/PieMarquee2/marquee/ports
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ports/wheel /home/pi/PieMarquee2/marquee/ports
fi

if [ ! -d /home/pi/RetroPie/roms/power/wheel ]; then
  mkdir /home/pi/RetroPie/roms/power >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/power/wheel
  echo wheel folder for power was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/power/wheel /home/pi/PieMarquee2/marquee/power
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/power/wheel /home/pi/PieMarquee2/marquee/power
fi

if [ ! -d /home/pi/RetroPie/roms/psp/wheel ]; then
  mkdir /home/pi/RetroPie/roms/psp >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp/wheel
  echo wheel folder for psp was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp/wheel /home/pi/PieMarquee2/marquee/psp
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp/wheel /home/pi/PieMarquee2/marquee/psp
fi

if [ ! -d /home/pi/RetroPie/roms/psx/wheel ]; then
  mkdir /home/pi/RetroPie/roms/psx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psx/wheel
  echo wheel folder for psx was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psx/wheel /home/pi/PieMarquee2/marquee/psx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psx/wheel /home/pi/PieMarquee2/marquee/psx
fi

if [ ! -d /home/pi/RetroPie/roms/residualvm/wheel ]; then
  mkdir /home/pi/RetroPie/roms/residualvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/residualvm/wheel
  echo wheel folder for residualvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/residualvm/wheel /home/pi/PieMarquee2/marquee/residualvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/residualvm/wheel /home/pi/PieMarquee2/marquee/residualvm
fi

if [ ! -d /home/pi/RetroPie/roms/samcoupe/wheel ]; then
  mkdir /home/pi/RetroPie/roms/samcoupe >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/samcoupe/wheel
  echo wheel folder for samcoupe was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/samcoupe/wheel /home/pi/PieMarquee2/marquee/samcoupe
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/samcoupe/wheel /home/pi/PieMarquee2/marquee/samcoupe
fi

if [ ! -d /home/pi/RetroPie/roms/saturn/wheel ]; then
  mkdir /home/pi/RetroPie/roms/saturn >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn/wheel
  echo wheel folder for saturn was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn/wheel /home/pi/PieMarquee2/marquee/saturn
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn/wheel /home/pi/PieMarquee2/marquee/saturn
fi

if [ ! -d /home/pi/RetroPie/roms/scummvm/wheel ]; then
  mkdir /home/pi/RetroPie/roms/scummvm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scummvm/wheel
  echo wheel folder for scummvm was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scummvm/wheel /home/pi/PieMarquee2/marquee/scummvm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scummvm/wheel /home/pi/PieMarquee2/marquee/scummvm
fi

if [ ! -d /home/pi/RetroPie/roms/sega32x/wheel ]; then
  mkdir /home/pi/RetroPie/roms/sega32x >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sega32x/wheel
  echo wheel folder for sega32x was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sega32x/wheel /home/pi/PieMarquee2/marquee/sega32x
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sega32x/wheel /home/pi/PieMarquee2/marquee/sega32x
fi

if [ ! -d /home/pi/RetroPie/roms/segacd/wheel ]; then
  mkdir /home/pi/RetroPie/roms/segacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/segacd/wheel
  echo wheel folder for segacd was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/segacd/wheel /home/pi/PieMarquee2/marquee/segacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/segacd/wheel /home/pi/PieMarquee2/marquee/segacd
fi

if [ ! -d /home/pi/RetroPie/roms/sg-1000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/sg-1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sg-1000/wheel
  echo wheel folder for sg-1000 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sg-1000/wheel /home/pi/PieMarquee2/marquee/sg-1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sg-1000/wheel /home/pi/PieMarquee2/marquee/sg-1000
fi

if [ ! -d /home/pi/RetroPie/roms/snes/wheel ]; then
  mkdir /home/pi/RetroPie/roms/snes >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snes/wheel
  echo wheel folder for snes was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snes/wheel /home/pi/PieMarquee2/marquee/snes
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snes/wheel /home/pi/PieMarquee2/marquee/snes
fi

if [ ! -d /home/pi/RetroPie/roms/snesmsu1/wheel ]; then
  mkdir /home/pi/RetroPie/roms/snesmsu1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesmsu1/wheel
  echo wheel folder for snesmsu1 was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesmsu1/wheel /home/pi/PieMarquee2/marquee/snesmsu1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesmsu1/wheel /home/pi/PieMarquee2/marquee/snesmsu1
fi

if [ ! -d /home/pi/RetroPie/roms/solarus/wheel ]; then
  mkdir /home/pi/RetroPie/roms/solarus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/solarus/wheel
  echo wheel folder for solarus was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/solarus/wheel /home/pi/PieMarquee2/marquee/solarus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/solarus/wheel /home/pi/PieMarquee2/marquee/solarus
fi

if [ ! -d /home/pi/RetroPie/roms/steam/wheel ]; then
  mkdir /home/pi/RetroPie/roms/steam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/steam/wheel
  echo wheel folder for steam was not found will now add !
  ln -sfn /home/pi/RetroPie/roms/steam/wheel /home/pi/PieMarquee2/marquee/steam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/steam/wheel /home/pi/PieMarquee2/marquee/steam
fi

if [ ! -d /home/pi/RetroPie/roms/stratagus/wheel ]; then
  mkdir /home/pi/RetroPie/roms/stratagus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/stratagus/wheel
  echo wheel folder for strataguswas not found will now add !
  ln -sfn /home/pi/RetroPie/roms/stratagus/wheel /home/pi/PieMarquee2/marquee/stratagus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/stratagus/wheel /home/pi/PieMarquee2/marquee/stratagus
fi

if [ ! -d /home/pi/RetroPie/roms/tg16/wheel ]; then
  mkdir /home/pi/RetroPie/roms/tg16 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16/wheel
  echo wheel folder for tg16 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16/wheel /home/pi/PieMarquee2/marquee/tg16
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16/wheel /home/pi/PieMarquee2/marquee/tg16
fi

if [ ! -d /home/pi/RetroPie/roms/tg16cd/wheel ]; then
  mkdir /home/pi/RetroPie/roms/tg16cd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tg16cd/wheel
  echo wheel folder for tg16cd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tg16cd/wheel /home/pi/PieMarquee2/marquee/tg16cd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tg16cd/wheel /home/pi/PieMarquee2/marquee/tg16cd
fi

if [ ! -d /home/pi/RetroPie/roms/ti99/wheel ]; then
  mkdir /home/pi/RetroPie/roms/ti99 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ti99/wheel
  echo wheel folder for ti99 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ti99/wheel /home/pi/PieMarquee2/marquee/ti99
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ti99/wheel /home/pi/PieMarquee2/marquee/ti99
fi

if [ ! -d /home/pi/RetroPie/roms/trs-80/wheel ]; then
  mkdir /home/pi/RetroPie/roms/trs-80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/trs-80/wheel
  echo wheel folder for trs-80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/trs-80/wheel /home/pi/PieMarquee2/marquee/trs-80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/trs-80/wheel /home/pi/PieMarquee2/marquee/trs-80
fi

if [ ! -d /home/pi/RetroPie/roms/vectrex/wheel ]; then
  mkdir /home/pi/RetroPie/roms/vectrex >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vectrex/wheel
  echo wheel folder for vectrex not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vectrex/wheel /home/pi/PieMarquee2/marquee/vectrex
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vectrex/wheel /home/pi/PieMarquee2/marquee/vectrex
fi

if [ ! -d /home/pi/RetroPie/roms/videopac/wheel ]; then
  mkdir /home/pi/RetroPie/roms/videopac >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/videopac/wheel
  echo wheel folder for videopac not found will now add !
  ln -sfn /home/pi/RetroPie/roms/videopac/wheel /home/pi/PieMarquee2/marquee/videopac
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/videopac/wheel /home/pi/PieMarquee2/marquee/videopac
fi

if [ ! -d /home/pi/RetroPie/roms/virtualboy/wheel ]; then
  mkdir /home/pi/RetroPie/roms/virtualboy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/virtualboy/wheel
  echo wheel folder for virtualboy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/virtualboy/wheel /home/pi/PieMarquee2/marquee/virtualboy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/virtualboy/wheel /home/pi/PieMarquee2/marquee/virtualboy
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswan/wheel ]; then
  mkdir /home/pi/RetroPie/roms/wonderswan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswan/wheel
  echo wheel folder for wonderswan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswan/wheel /home/pi/PieMarquee2/marquee/wonderswan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswan/wheel /home/pi/PieMarquee2/marquee/wonderswan
fi

if [ ! -d /home/pi/RetroPie/roms/wonderswancolor/wheel ]; then
  mkdir /home/pi/RetroPie/roms/wonderswancolor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/wonderswancolor/wheel
  echo wheel folder for wonderswancolor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/wonderswancolor/wheel /home/pi/PieMarquee2/marquee/wonderswancolor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/wonderswancolor/wheel /home/pi/PieMarquee2/marquee/wonderswancolor
fi

if [ ! -d /home/pi/RetroPie/roms/x1/wheel ]; then
  mkdir /home/pi/RetroPie/roms/x1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x1/wheel
  echo wheel folder for x1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x1/wheel /home/pi/PieMarquee2/marquee/x1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x1/wheel /home/pi/PieMarquee2/marquee/x1
fi

if [ ! -d /home/pi/RetroPie/roms/x68000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/x68000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/x68000/wheel
  echo wheel folder for x68000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/x68000/wheel /home/pi/PieMarquee2/marquee/x68000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/x68000/wheel /home/pi/PieMarquee2/marquee/x68000
fi

if [ ! -d /home/pi/RetroPie/roms/zmachine/wheel ]; then
  mkdir /home/pi/RetroPie/roms/zmachine >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zmachine/wheel
  echo wheel folder for zmachine not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zmachine/wheel /home/pi/PieMarquee2/marquee/zmachine
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zmachine/wheel /home/pi/PieMarquee2/marquee/zmachine
fi

if [ ! -d /home/pi/RetroPie/roms/zx81/wheel ]; then
  mkdir /home/pi/RetroPie/roms/zx81 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zx81/wheel
  echo wheel folder for zx81 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zx81/wheel /home/pi/PieMarquee2/marquee/zx81
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zx81/wheel /home/pi/PieMarquee2/marquee/zx81
fi

if [ ! -d /home/pi/RetroPie/roms/zxspectrum/wheel ]; then
  mkdir /home/pi/RetroPie/roms/zxspectrum >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/zxspectrum/wheel
  echo wheel folder for zxspectrum not found will now add !
  ln -sfn /home/pi/RetroPie/roms/zxspectrum/wheel /home/pi/PieMarquee2/marquee/zxspectrum
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/zxspectrum/wheel /home/pi/PieMarquee2/marquee/zxspectrum
fi

if [ ! -d /home/pi/RetroPie/roms/adam/wheel ]; then
  mkdir /home/pi/RetroPie/roms/adam >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/adam/wheel
  echo wheel folder for adam not found will now add !
  ln -sfn /home/pi/RetroPie/roms/adam/wheel /home/pi/PieMarquee2/marquee/adam
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/adam/wheel /home/pi/PieMarquee2/marquee/adam
fi

if [ ! -d /home/pi/RetroPie/roms/advision/wheel ]; then
  mkdir /home/pi/RetroPie/roms/advision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/advision/wheel
  echo wheel folder for advision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/advision/wheel /home/pi/PieMarquee2/marquee/advision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/advision/wheel /home/pi/PieMarquee2/marquee/advision
fi

if [ ! -d /home/pi/RetroPie/roms/amiga1200/wheel ]; then
  mkdir /home/pi/RetroPie/roms/amiga1200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amiga1200/wheel
  echo wheel folder for amiga1200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amiga1200/wheel /home/pi/PieMarquee2/marquee/amiga1200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amiga1200/wheel /home/pi/PieMarquee2/marquee/amiga1200
fi

if [ ! -d /home/pi/RetroPie/roms/amigacd32/wheel ]; then
  mkdir /home/pi/RetroPie/roms/amigacd32 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/amigacd32/wheel
  echo wheel folder for amigacd32 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/amigacd32/wheel /home/pi/PieMarquee2/marquee/amigacd32
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/amigacd32/wheel /home/pi/PieMarquee2/marquee/amigacd32
fi

if [ ! -d /home/pi/RetroPie/roms/apfm1000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/apfm1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apfm1000/wheel
  echo wheel folder for apfm1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apfm1000/wheel /home/pi/PieMarquee2/marquee/apfm1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apfm1000/wheel /home/pi/PieMarquee2/marquee/apfm1000
fi

if [ ! -d /home/pi/RetroPie/roms/apple2gs/wheel ]; then
  mkdir /home/pi/RetroPie/roms/apple2gs >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/apple2gs/wheel
  echo wheel folder for apple2gs not found will now add !
  ln -sfn /home/pi/RetroPie/roms/apple2gs/wheel /home/pi/PieMarquee2/marquee/apple2gs
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/apple2gs/wheel /home/pi/PieMarquee2/marquee/apple2gs
fi

if [ ! -d /home/pi/RetroPie/roms/astrocde/wheel ]; then
  mkdir /home/pi/RetroPie/roms/astrocde >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/astrocde/wheel
  echo wheel folder for astrocde not found will now add !
  ln -sfn /home/pi/RetroPie/roms/astrocde/wheel /home/pi/PieMarquee2/marquee/astrocde
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/astrocde/wheel /home/pi/PieMarquee2/marquee/astrocde
fi

if [ ! -d /home/pi/RetroPie/roms/bbcb/wheel ]; then
  mkdir /home/pi/RetroPie/roms/bbcb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/bbcb/wheel
  echo wheel folder for bbcb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/bbcb/wheel /home/pi/PieMarquee2/marquee/bbcb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/bbcb/wheel /home/pi/PieMarquee2/marquee/bbcb
fi

if [ ! -d /home/pi/RetroPie/roms/c64/wheel ]; then
  mkdir /home/pi/RetroPie/roms/c64 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c64/wheel
  echo wheel folder for c64 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c64/wheel /home/pi/PieMarquee2/marquee/c64
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c64/wheel /home/pi/PieMarquee2/marquee/c64
fi

if [ ! -d /home/pi/RetroPie/roms/c128/wheel ]; then
  mkdir /home/pi/RetroPie/roms/c128 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/c128/wheel
  echo wheel folder for c128 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/c128/wheel /home/pi/PieMarquee2/marquee/c128
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/c128/wheel /home/pi/PieMarquee2/marquee/c128
fi


if [ ! -d /home/pi/RetroPie/roms/cdimono1/wheel ]; then
  mkdir /home/pi/RetroPie/roms/cdimono1 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdimono1/wheel
  echo wheel folder for cdimono1 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdimono1/wheel /home/pi/PieMarquee2/marquee/cdimono1
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdimono1/wheel /home/pi/PieMarquee2/marquee/cdimono1
fi

if [ ! -d /home/pi/RetroPie/roms/cdtv/wheel ]; then
  mkdir /home/pi/RetroPie/roms/cdtv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/cdtv/wheel
  echo wheel folder for cdtv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/cdtv/wheel /home/pi/PieMarquee2/marquee/cdtv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/cdtv/wheel /home/pi/PieMarquee2/marquee/cdtv
fi

if [ ! -d /home/pi/RetroPie/roms/custom ]; then
  mkdir /home/pi/RetroPie/roms/custom >/dev/null 2>&1
  echo custom folder for custom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/custom /home/pi/PieMarquee2/marquee/custom
fi

if [ ! -d /home/pi/RetroPie/roms/system ]; then
  mkdir /home/pi/RetroPie/roms/system >/dev/null 2>&1
  echo system folder for system not found will now add !
  ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/system /home/pi/PieMarquee2/marquee/system
fi

if [ ! -d /home/pi/RetroPie/roms/dendy/wheel ]; then
  mkdir /home/pi/RetroPie/roms/dendy >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/dendy/wheel
  echo wheel folder for dendy not found will now add !
  ln -sfn /home/pi/RetroPie/roms/dendy/wheel /home/pi/PieMarquee2/marquee/dendy
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/dendy/wheel /home/pi/PieMarquee2/marquee/dendy
fi

if [ ! -d /home/pi/RetroPie/roms/electron/wheel ]; then
  mkdir /home/pi/RetroPie/roms/electron >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/electron/wheel
  echo wheel folder for electron not found will now add !
  ln -sfn /home/pi/RetroPie/roms/electron/wheel /home/pi/PieMarquee2/marquee/electron
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/electron/wheel /home/pi/PieMarquee2/marquee/electron
fi

if [ ! -d /home/pi/RetroPie/roms/famicom/wheel ]; then
  mkdir /home/pi/RetroPie/roms/famicom >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/famicom/wheel
  echo wheel folder for famicom not found will now add !
  ln -sfn /home/pi/RetroPie/roms/famicom/wheel /home/pi/PieMarquee2/marquee/famicom
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/famicom/wheel /home/pi/PieMarquee2/marquee/famicom
fi

if [ ! -d /home/pi/RetroPie/roms/fba/wheel ]; then
  mkdir /home/pi/RetroPie/roms/fba >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fba/wheel
  echo wheel folder for fba not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fba/wheel /home/pi/PieMarquee2/marquee/fba
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fba/wheel /home/pi/PieMarquee2/marquee/fba
fi

if [ ! -d /home/pi/RetroPie/roms/fbneo/wheel ]; then
  mkdir /home/pi/RetroPie/roms/fbneo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fbneo/wheel
  echo wheel folder for fbneo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fbneo/wheel /home/pi/PieMarquee2/marquee/fbneo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fbneo/wheel /home/pi/PieMarquee2/marquee/fbneo
fi

if [ ! -d /home/pi/RetroPie/roms/fds/wheel ]; then
  mkdir /home/pi/RetroPie/roms/fds >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fds/wheel
  echo wheel folder for fds not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fds/wheel /home/pi/PieMarquee2/marquee/fds
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fds/wheel /home/pi/PieMarquee2/marquee/fds
fi

if [ ! -d /home/pi/RetroPie/roms/fm7/wheel ]; then
  mkdir /home/pi/RetroPie/roms/fm7 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/fm7/wheel
  echo wheel folder for fm7 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/fm7/wheel /home/pi/PieMarquee2/marquee/fm7
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/fm7/wheel /home/pi/PieMarquee2/marquee/fm7
fi

if [ ! -d /home/pi/RetroPie/roms/gamate/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gamate >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamate/wheel
  echo wheel folder for gamate not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamate/wheel /home/pi/PieMarquee2/marquee/gamate
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamate/wheel /home/pi/PieMarquee2/marquee/gamate
fi

if [ ! -d /home/pi/RetroPie/roms/gamepock/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gamepock >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gamepock/wheel
  echo wheel folder for gamepock not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gamepock/wheel /home/pi/PieMarquee2/marquee/gamepock
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gamepock/wheel /home/pi/PieMarquee2/marquee/gamepock
fi

if [ ! -d /home/pi/RetroPie/roms/gbah/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gbah >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbah/wheel
  echo wheel folder for gbah not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbah/wheel /home/pi/PieMarquee2/marquee/gbah
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbah/wheel /home/pi/PieMarquee2/marquee/gbah
fi

if [ ! -d /home/pi/RetroPie/roms/gbh/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gbh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbh/wheel
  echo wheel folder for gbh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbh/wheel /home/pi/PieMarquee2/marquee/gbh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbh/wheel /home/pi/PieMarquee2/marquee/gbh
fi

if [ ! -d /home/pi/RetroPie/roms/gbm/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gbm >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gbm/wheel
  echo wheel folder for gbm not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gbm/wheel /home/pi/PieMarquee2/marquee/gbm
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gbm/wheel /home/pi/PieMarquee2/marquee/gbm
fi

if [ ! -d /home/pi/RetroPie/roms/genh/wheel ]; then
  mkdir /home/pi/RetroPie/roms/genh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/genh/wheel
  echo wheel folder for genh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/genh/wheel /home/pi/PieMarquee2/marquee/genh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/genh/wheel /home/pi/PieMarquee2/marquee/genh
fi

if [ ! -d /home/pi/RetroPie/roms/ggh/wheel ]; then
  mkdir /home/pi/RetroPie/roms/ggh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/ggh/wheel
  echo wheel folder for ggh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/ggh/wheel /home/pi/PieMarquee2/marquee/ggh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/ggh/wheel /home/pi/PieMarquee2/marquee/ggh
fi
if [ ! -d /home/pi/RetroPie/roms/gx4000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/gx4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/gx4000/wheel
  echo wheel folder for gx4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/gx4000/wheel /home/pi/PieMarquee2/marquee/gx4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/gx4000/wheel /home/pi/PieMarquee2/marquee/gx4000
fi

if [ ! -d /home/pi/RetroPie/roms/instruction ]; then
  mkdir /home/pi/RetroPie/roms/instruction >/dev/null 2>&1
  echo instruction folder for instruction not found will now add !
  ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/instruction /home/pi/PieMarquee2/marquee/instruction
fi

if [ ! -d /home/pi/RetroPie/roms/laser200/wheel ]; then
  mkdir /home/pi/RetroPie/roms/laser200 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/laser200/wheel
  echo wheel folder for laser200 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/laser200/wheel /home/pi/PieMarquee2/marquee/laser200
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/laser200/wheel /home/pi/PieMarquee2/marquee/laser200
fi

if [ ! -d /home/pi/RetroPie/roms/m5/wheel ]; then
  mkdir /home/pi/RetroPie/roms/m5 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/m5/wheel
  echo wheel folder for m5 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/m5/wheel /home/pi/PieMarquee2/marquee/m5
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/m5/wheel /home/pi/PieMarquee2/marquee/m5
fi

if [ ! -d /home/pi/RetroPie/roms/mame/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mame >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mame/wheel
  echo wheel folder for mame not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mame/wheel /home/pi/PieMarquee2/marquee/mame
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mame/wheel /home/pi/PieMarquee2/marquee/mame
fi

if [ ! -d /home/pi/RetroPie/roms/markii/wheel ]; then
  mkdir /home/pi/RetroPie/roms/markii >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/markii/wheel
  echo wheel folder for markii not found will now add !
  ln -sfn /home/pi/RetroPie/roms/markii/wheel /home/pi/PieMarquee2/marquee/markii
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/markii/wheel /home/pi/PieMarquee2/marquee/markii
fi

if [ ! -d /home/pi/RetroPie/roms/megacd/wheel ]; then
  mkdir /home/pi/RetroPie/roms/megacd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd/wheel
  echo wheel folder for megacd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd/wheel /home/pi/PieMarquee2/marquee/megacd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd/wheel /home/pi/PieMarquee2/marquee/megacd
fi

if [ ! -d /home/pi/RetroPie/roms/megacd-japan/wheel ]; then
  mkdir /home/pi/RetroPie/roms/megacd-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megacd-japan/wheel
  echo wheel folder for megacd-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megacd-japan/wheel /home/pi/PieMarquee2/marquee/megacd-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megacd-japan/wheel /home/pi/PieMarquee2/marquee/megacd-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megadrive-japan/wheel ]; then
  mkdir /home/pi/RetroPie/roms/megadrive-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megadrive-japan/wheel
  echo wheel folder for megadrive-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megadrive-japan/wheel /home/pi/PieMarquee2/marquee/megadrive-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megadrive-japan/wheel /home/pi/PieMarquee2/marquee/megadrive-japan
fi

if [ ! -d /home/pi/RetroPie/roms/megaduck/wheel ]; then
  mkdir /home/pi/RetroPie/roms/megaduck >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/megaduck/wheel
  echo wheel folder for megaduck not found will now add !
  ln -sfn /home/pi/RetroPie/roms/megaduck/wheel /home/pi/PieMarquee2/marquee/megaduck
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/megaduck/wheel /home/pi/PieMarquee2/marquee/megaduck
fi

if [ ! -d /home/pi/RetroPie/roms/model2/wheel ]; then
  mkdir /home/pi/RetroPie/roms/model2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model2/wheel
  echo wheel folder for model2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model2/wheel /home/pi/PieMarquee2/marquee/model2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model2/wheel /home/pi/PieMarquee2/marquee/model2
fi

if [ ! -d /home/pi/RetroPie/roms/model3/wheel ]; then
  mkdir /home/pi/RetroPie/roms/model3 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/model3/wheel
  echo wheel folder for model3 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/model3/wheel /home/pi/PieMarquee2/marquee/model3
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/model3/wheel /home/pi/PieMarquee2/marquee/model3
fi

if [ ! -d /home/pi/RetroPie/roms/msx2/wheel ]; then
  mkdir /home/pi/RetroPie/roms/msx2 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2/wheel
  echo wheel folder for msx2 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2/wheel /home/pi/PieMarquee2/marquee/msx2
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2/wheel /home/pi/PieMarquee2/marquee/msx2
fi

if [ ! -d /home/pi/RetroPie/roms/msx2plus/wheel ]; then
  mkdir /home/pi/RetroPie/roms/msx2plus >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msx2plus/wheel
  echo wheel folder for msx2plus not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msx2plus/wheel /home/pi/PieMarquee2/marquee/msx2plus
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msx2plus/wheel /home/pi/PieMarquee2/marquee/msx2plus
fi

if [ ! -d /home/pi/RetroPie/roms/msxturbo/wheel ]; then
  mkdir /home/pi/RetroPie/roms/msxturbo >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/msxturbo/wheel
  echo wheel folder for msxturbo not found will now add !
  ln -sfn /home/pi/RetroPie/roms/msxturbo/wheel /home/pi/PieMarquee2/marquee/msxturbo
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/msxturbo/wheel /home/pi/PieMarquee2/marquee/msxturbo
fi

if [ ! -d /home/pi/RetroPie/roms/mtx/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mtx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mtx/wheel
  echo wheel folder for mtx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mtx/wheel /home/pi/PieMarquee2/marquee/mtx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mtx/wheel /home/pi/PieMarquee2/marquee/mtx
fi

if [ ! -d /home/pi/RetroPie/roms/multivision/wheel ]; then
  mkdir /home/pi/RetroPie/roms/multivision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/multivision/wheel
  echo wheel folder for multivision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/multivision/wheel /home/pi/PieMarquee2/marquee/multivision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/multivision/wheel /home/pi/PieMarquee2/marquee/multivision
fi

if [ ! -d /home/pi/RetroPie/roms/mz700/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mz700 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz700/wheel
  echo wheel folder for mz700 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz700/wheel /home/pi/PieMarquee2/marquee/mz700
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz700/wheel /home/pi/PieMarquee2/marquee/mz700
fi

if [ ! -d /home/pi/RetroPie/roms/mz2500/wheel ]; then
  mkdir /home/pi/RetroPie/roms/mz2500 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/mz2500/wheel
  echo wheel folder for mz2500 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/mz2500/wheel /home/pi/PieMarquee2/marquee/mz2500
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/mz2500/wheel /home/pi/PieMarquee2/marquee/mz2500
fi

if [ ! -d /home/pi/RetroPie/roms/n64dd/wheel ]; then
  mkdir /home/pi/RetroPie/roms/n64dd >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64dd/wheel
  echo wheel folder for n64dd not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64dd/wheel /home/pi/PieMarquee2/marquee/n64dd
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64dd/wheel /home/pi/PieMarquee2/marquee/n64dd
fi

if [ ! -d /home/pi/RetroPie/roms/n64-japan/wheel ]; then
  mkdir /home/pi/RetroPie/roms/n64-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/n64-japan/wheel
  echo wheel folder for n64-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/n64-japan/wheel /home/pi/PieMarquee2/marquee/n64-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/n64-japan/wheel /home/pi/PieMarquee2/marquee/n64-japan
fi

if [ ! -d /home/pi/RetroPie/roms/neocdz/wheel ]; then
  mkdir /home/pi/RetroPie/roms/neocdz >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/neocdz/wheel
  echo wheel folder for neocdz not found will now add !
  ln -sfn /home/pi/RetroPie/roms/neocdz/wheel /home/pi/PieMarquee2/marquee/neocdz
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/neocdz/wheel /home/pi/PieMarquee2/marquee/neocdz
fi

if [ ! -d /home/pi/RetroPie/roms/nesh/wheel ]; then
  mkdir /home/pi/RetroPie/roms/nesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/nesh/wheel
  echo wheel folder for nesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/nesh/wheel /home/pi/PieMarquee2/marquee/nesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/nesh/wheel /home/pi/PieMarquee2/marquee/nesh
fi

if [ ! -d /home/pi/RetroPie/roms/plus4/wheel ]; then
  mkdir /home/pi/RetroPie/roms/plus4 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/plus4/wheel
  echo wheel folder for plus4 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/plus4/wheel /home/pi/PieMarquee2/marquee/plus4
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/plus4/wheel /home/pi/PieMarquee2/marquee/plus4
fi

if [ ! -d /home/pi/RetroPie/roms/psp-japan/wheel ]; then
  mkdir /home/pi/RetroPie/roms/psp-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/psp-japan/wheel
  echo wheel folder for psp-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/psp-japan/wheel /home/pi/PieMarquee2/marquee/psp-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/psp-japan/wheel /home/pi/PieMarquee2/marquee/psp-japan
fi

if [ ! -d /home/pi/RetroPie/roms/pspminis/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pspminis >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pspminis/wheel
  echo wheel folder for pspminis not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pspminis/wheel /home/pi/PieMarquee2/marquee/pspminis
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pspminis/wheel /home/pi/PieMarquee2/marquee/pspminis
fi

if [ ! -d /home/pi/RetroPie/roms/publisher ]; then
  mkdir /home/pi/RetroPie/roms/publisher >/dev/null 2>&1
  echo publisher folder for publisher not found will now add !
  ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/publisher /home/pi/PieMarquee2/marquee/publisher
fi

if [ ! -d /home/pi/RetroPie/roms/pv1000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pv1000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv1000/wheel
  echo wheel folder for pv1000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv1000/wheel /home/pi/PieMarquee2/marquee/pv1000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv1000/wheel /home/pi/PieMarquee2/marquee/pv1000
fi

if [ ! -d /home/pi/RetroPie/roms/pv2000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/pv2000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/pv2000/wheel
  echo wheel folder for pv2000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/pv2000/wheel /home/pi/PieMarquee2/marquee/pv2000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/pv2000/wheel /home/pi/PieMarquee2/marquee/pv2000
fi

if [ ! -d /home/pi/RetroPie/roms/satellaview/wheel ]; then
  mkdir /home/pi/RetroPie/roms/satellaview >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/satellaview/wheel
  echo wheel folder for satellaview not found will now add !
  ln -sfn /home/pi/RetroPie/roms/satellaview/wheel /home/pi/PieMarquee2/marquee/satellaview
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/satellaview/wheel /home/pi/PieMarquee2/marquee/satellaview
fi

if [ ! -d /home/pi/RetroPie/roms/saturn-japan/wheel ]; then
  mkdir /home/pi/RetroPie/roms/saturn-japan >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/saturn-japan/wheel
  echo wheel folder for saturn-japan not found will now add !
  ln -sfn /home/pi/RetroPie/roms/saturn-japan/wheel /home/pi/PieMarquee2/marquee/saturn-japan
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/saturn-japan/wheel /home/pi/PieMarquee2/marquee/saturn-japan
fi

if [ ! -d /home/pi/RetroPie/roms/sc-3000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/sc-3000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sc-3000/wheel
  echo wheel folder for sc-3000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sc-3000/wheel /home/pi/PieMarquee2/marquee/sc-3000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sc-3000/wheel /home/pi/PieMarquee2/marquee/sc-3000
fi

if [ ! -d /home/pi/RetroPie/roms/scv/wheel ]; then
  mkdir /home/pi/RetroPie/roms/scv >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/scv/wheel
  echo wheel folder for scv not found will now add !
  ln -sfn /home/pi/RetroPie/roms/scv/wheel /home/pi/PieMarquee2/marquee/scv
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/scv/wheel /home/pi/PieMarquee2/marquee/scv
fi

if [ ! -d /home/pi/RetroPie/roms/sfc/wheel ]; then
  mkdir /home/pi/RetroPie/roms/sfc >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sfc/wheel
  echo wheel folder for sfc not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sfc/wheel /home/pi/PieMarquee2/marquee/sfc
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sfc/wheel /home/pi/PieMarquee2/marquee/sfc
fi

if [ ! -d /home/pi/RetroPie/roms/sgb/wheel ]; then
  mkdir /home/pi/RetroPie/roms/sgb >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sgb/wheel
  echo wheel folder for sgb not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sgb/wheel /home/pi/PieMarquee2/marquee/sgb
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sgb/wheel /home/pi/PieMarquee2/marquee/sgb
fi

if [ ! -d /home/pi/RetroPie/roms/snesh/wheel ]; then
  mkdir /home/pi/RetroPie/roms/snesh >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/snesh/wheel
  echo wheel folder for snesh not found will now add !
  ln -sfn /home/pi/RetroPie/roms/snesh/wheel /home/pi/PieMarquee2/marquee/snesh
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/snesh/wheel /home/pi/PieMarquee2/marquee/snesh
fi

if [ ! -d /home/pi/RetroPie/roms/sorcerer/wheel ]; then
  mkdir /home/pi/RetroPie/roms/sorcerer >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sorcerer/wheel
  echo wheel folder for sorcerer not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sorcerer/wheel /home/pi/PieMarquee2/marquee/sorcerer
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sorcerer/wheel /home/pi/PieMarquee2/marquee/sorcerer
fi

if [ ! -d /home/pi/RetroPie/roms/sufami/wheel ]; then
  mkdir /home/pi/RetroPie/roms/sufami >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/sufami/wheel
  echo wheel folder for sufami not found will now add !
  ln -sfn /home/pi/RetroPie/roms/sufami/wheel /home/pi/PieMarquee2/marquee/sufami
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/sufami/wheel /home/pi/PieMarquee2/marquee/sufami
fi

if [ ! -d /home/pi/RetroPie/roms/supergrafx/wheel ]; then
  mkdir /home/pi/RetroPie/roms/supergrafx >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/supergrafx/wheel
  echo wheel folder for supergrafx not found will now add !
  ln -sfn /home/pi/RetroPie/roms/supergrafx/wheel /home/pi/PieMarquee2/marquee/supergrafx
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/supergrafx/wheel /home/pi/PieMarquee2/marquee/supergrafx
fi

if [ ! -d /home/pi/RetroPie/roms/svi318/wheel ]; then
  mkdir /home/pi/RetroPie/roms/svi318 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svi318/wheel
  echo wheel folder for svi318 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svi318/wheel /home/pi/PieMarquee2/marquee/svi318
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svi318/wheel /home/pi/PieMarquee2/marquee/svi318
fi

if [ ! -d /home/pi/RetroPie/roms/svision/wheel ]; then
  mkdir /home/pi/RetroPie/roms/svision >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/svision/wheel
  echo wheel folder for svision not found will now add !
  ln -sfn /home/pi/RetroPie/roms/svision/wheel /home/pi/PieMarquee2/marquee/svision
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/svision/wheel /home/pi/PieMarquee2/marquee/svision
fi

if [ ! -d /home/pi/RetroPie/roms/tic80/wheel ]; then
  mkdir /home/pi/RetroPie/roms/tic80 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tic80/wheel 
  echo wheel folder for tic80 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tic80/wheel /home/pi/PieMarquee2/marquee/tic80
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tic80/wheel /home/pi/PieMarquee2/marquee/tic80
fi

if [ ! -d /home/pi/RetroPie/roms/tutor/wheel ]; then
  mkdir /home/pi/RetroPie/roms/tutor >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/tutor/wheel
  echo wheel folder for tutor not found will now add !
  ln -sfn /home/pi/RetroPie/roms/tutor/wheel /home/pi/PieMarquee2/marquee/tutor
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/tutor/wheel /home/pi/PieMarquee2/marquee/tutor
fi

if [ ! -d /home/pi/RetroPie/roms/vc4000/wheel ]; then
  mkdir /home/pi/RetroPie/roms/vc4000 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vc4000/wheel
  echo wheel folder for vc4000 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vc4000/wheel /home/pi/PieMarquee2/marquee/vc4000
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vc4000/wheel /home/pi/PieMarquee2/marquee/vc4000
fi

if [ ! -d /home/pi/RetroPie/roms/vic20/wheel ]; then
  mkdir /home/pi/RetroPie/roms/vic20 >/dev/null 2>&1
  mkdir /home/pi/RetroPie/roms/vic20/wheel
  echo wheel folder for vic20 not found will now add !
  ln -sfn /home/pi/RetroPie/roms/vic20/wheel /home/pi/PieMarquee2/marquee/vic20
  sleep 1
else
ln -sfn /home/pi/RetroPie/roms/vic20/wheel /home/pi/PieMarquee2/marquee/vic20
fi

else
echo "$(tput setaf 6)
Looks like you have the marquee script off please turn it on and try again.
$(tput sgr0)"   
sleep 4
fi
}

function fix-framebuffer-resolution() {
	dialog --infobox "...Applying..." 3 20 ; sleep 2
    fbset -fb /dev/fb0 -g 1920 1080 1920 1080 16
    echo Now rebooting to save changes.
	sleep 4
	sudo reboot
}

function marquee-on-off() {
	dialog --infobox "...Applying..." 3 20 ; sleep 2
    if [ ! -d /home/pi/PieMarquee3 ]; then
    sudo mv /home/pi/PieMarquee2 /home/pi/PieMarquee3
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/autostart.sh
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/ES-start.sh
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/AM-start.sh
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/Pegasus-start.sh
    echo Marquee script is now off and now rebooting to save changes
	sleep 4
	sudo reboot
    else
    sudo mv /home/pi/PieMarquee3 /home/pi/PieMarquee2
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/autostart.sh
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/ES-start.sh
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/AM-start.sh
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/Pegasus-start.sh    
    echo Marquee script is now on and now rebooting to save changes
    sleep 4
	sudo reboot
fi
}

function marquee-on-off-alt() {
	dialog --infobox "...Applying..." 3 20 ; sleep 2
    if [ ! -d /home/pi/PieMarquee3 ]; then
    sudo mv /home/pi/PieMarquee2 /home/pi/PieMarquee3
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/autostart.sh
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/ES-start.sh
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/AM-start.sh
    sed -i '/isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\#isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/Pegasus-start.sh
    echo The marquee script is now off 
	echo Now all supported systems will dispaly. 
	echo Now rebooting to save changes.
	sudo cp /home/pi/RetroPie/scripts/.sb-unified/es_cfg/es_supreme.cfg /etc/emulationstation/es_systems.cfg
    sudo cp /home/pi/RetroPie/scripts/.sb-unified/es_cfg/es_supreme.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg
	sleep 4
	sudo reboot
    else
    sudo mv /home/pi/PieMarquee3 /home/pi/PieMarquee2
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/autostart.sh
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/ES-start.sh
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/AM-start.sh
    sed -i '/#isdual=`tvservice -l |grep "2 attached device" |wc -l`/c\isdual=`tvservice -l |grep "2 attached device" |wc -l`' /opt/retropie/configs/all/Pegasus-start.sh    
    echo The marquee script is now on 
	echo Not supported systems will not dispaly 
	echo Now rebooting to save changes.
	sudo cp /home/pi/RetroPie/scripts/.sb-unified/es_cfg/es_retropie.cfg /etc/emulationstation/es_systems.cfg
    sudo cp /home/pi/RetroPie/scripts/.sb-unified/es_cfg/es_retropie.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg
    sleep 4
	sudo reboot
fi
}

main_menu
