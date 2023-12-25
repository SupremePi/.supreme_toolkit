#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

IFS=';'

# Welcome
 dialog --backtitle "System Bezel Utility" --title "Unified System Bezel Utility Menu" \
    --yesno "\nUnified System Bezel Utility menu.\n\nThis utility will provide a quick way to hide or show a unified set of system bezels within Retroarch emulators.\n\nThese system bezels are designed to reflect the same look and feel of the various system launching videos.\n\nThis utility only provides support for 1080p and 720p TV/Monitor resolutions.  There are too many variances to program for, so these are the only ones supported.\n\n***NOTE***\n\nIf you find that a bezel doesn't work right and your game video is not aligned properly, you will need to adjust the settings manually.\n\nDo not perform a \"save core override\" from within Retroarch as that will make other systems use the same bezel that shares that emulator core.\n\nLook at the Retroarch Bezel PDF for further information.\n\nThis script updates the retroarch.cfg files located in\n\n /opt/retropie/configs/xxx directories.\n\nThese are the same files you will need to manually update for other resolutions (based on each system - not per emulator/core).\n\n\nDo you want to proceed?" \
    35 95 2>&1 > /dev/tty \
    || exit


function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Hide a system bezel overlay" \
            2 "Show a system bezel overlay" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) disable_bezel  ;;
            2) enable_bezel  ;;
            *)  break ;;
        esac
    done
}


function disable_bezel() {

clear
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Which system would you like to disable bezels for?" 25 75 20 \
            1 "3do" \
            2 "amiga" \
            3 "amstradcpc" \
            4 "apple2" \
            5 "arcade" \
            6 "atari2600" \
            7 "atari5200" \
            8 "atari7800" \
            9 "atari800" \
            10 "atarijaguar" \
            11 "atarilynx" \
            12 "atarist" \
            13 "c64" \
            14 "coco" \
            15 "coleco" \
            16 "daphne" \
            17 "dragon32" \
            18 "dreamcast" \
            19 "famicom" \
            20 "fba" \
            21 "fds" \
            22 "gameandwatch" \
            23 "gamegear" \
            24 "gb" \
            25 "gba" \
            26 "gbah" \
            27 "gbc" \
            28 "gbh" \
            29 "genesis" \
            30 "genh" \
            31 "ggh" \
            32 "intellivision" \
            33 "mame-advmame" \
            34 "mame-libretro" \
            35 "mame-mame4all" \
            36 "markiii" \
            37 "mastersystem" \
            38 "megadrive" \
            39 "megadrive-japan" \
            40 "mess" \
            41 "msx" \
            42 "msx2" \
            43 "n64" \
            44 "nds" \
            45 "neogeo" \
            46 "nes" \
            47 "nesh" \
            48 "ngp" \
            49 "ngpc" \
            50 "oric" \
            51 "pc" \
            52 "pc88" \
            53 "pc98" \
            54 "pce-cd" \
            55 "pcengine" \
            56 "pcfx" \
            57 "psp" \
            58 "pspminis" \
            59 "psx" \
            60 "residualvm" \
            61 "satellaview" \
            62 "saturn" \
            63 "sc-3000" \
            64 "scummvm" \
            65 "sega32x" \
            66 "segacd" \
            67 "sfc" \
            68 "sg-1000" \
            69 "sgb" \
            70 "snes" \
            71 "snesh" \
            72 "snesmsu1" \
            73 "sufami" \
            74 "supergrafx" \
            75 "tg16" \
            76 "tg-cd" \
            77 "ti99" \
            78 "trs-80" \
            79 "vectrex" \
            80 "vic20" \
            81 "videopac" \
            82 "virtualboy" \
            83 "wonderswan" \
            84 "wonderswancolor" \
            85 "x1" \
            86 "x68000" \
            87 "zmachine" \
            88 "zx81" \
            89 "zxspectrum" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) hide_bezel 3do ;;
            2) hide_bezel amiga ;;
            3) hide_bezel amstradcpc ;;
            4) hide_bezel apple2 ;;
            5) hide_bezel arcade ;;
            6) hide_bezel atari2600 ;;
            7) hide_bezel atari5200 ;;
            8) hide_bezel atari7800 ;;
            9) hide_bezel atari800 ;;
            10) hide_bezel atarijaguar ;;
            11) hide_bezel atarilynx ;;
            12) hide_bezel atarist ;;
            13) hide_bezel c64 ;;
            14) hide_bezel coco ;;
            15) hide_bezel coleco ;;
            16) hide_bezel daphne ;;
            17) hide_bezel dragon32 ;;
            18) hide_bezel dreamcast ;;
            19) hide_bezel famicom ;;
            20) hide_bezel fba ;;
            21) hide_bezel fds ;;
            22) hide_bezel gameandwatch ;;
            23) hide_bezel gamegear ;;
            24) hide_bezel gb ;;
            25) hide_bezel gba ;;
            26) hide_bezel gbah ;;
            27) hide_bezel gbc ;;
            28) hide_bezel gbh ;;
            29) hide_bezel genesis ;;
            30) hide_bezel genh ;;
            31) hide_bezel ggh ;;
            32) hide_bezel intellivision ;;
            33) hide_bezel mame-advmame ;;
            34) hide_bezel mame-libretro ;;
            35) hide_bezel mame-mame4all ;;
            36) hide_bezel markiii ;;
            37) hide_bezel mastersystem ;;
            38) hide_bezel megadrive ;;
            39) hide_bezel megadrive-japan ;;
            40) hide_bezel mess ;;
            41) hide_bezel msx ;;
            42) hide_bezel msx2 ;;
            43) hide_bezel n64 ;;
            44) hide_bezel nds ;;
            45) hide_bezel neogeo ;;
            46) hide_bezel nes ;;
            47) hide_bezel nesh ;;
            48) hide_bezel ngp ;;
            49) hide_bezel ngpc ;;
            50) hide_bezel oric ;;
            51) hide_bezel pc ;;
            52) hide_bezel pc88 ;;
            53) hide_bezel pc98 ;;
            54) hide_bezel pce-cd ;;
            55) hide_bezel pcengine ;;
            56) hide_bezel pcfx ;;
            57) hide_bezel psp ;;
            58) hide_bezel pspminis ;;
            59) hide_bezel psx ;;
            60) hide_bezel residualvm ;;
            61) hide_bezel satellaview ;;
            62) hide_bezel saturn ;;
            63) hide_bezel sc-3000 ;;
            64) hide_bezel scummvm ;;
            65) hide_bezel sega32x ;;
            66) hide_bezel segacd ;;
            67) hide_bezel sfc ;;
            68) hide_bezel sg-1000 ;;
            69) hide_bezel sgb ;;
            70) hide_bezel snes ;;
            71) hide_bezel snesh ;;
            72) hide_bezel snesmsu1 ;;
            73) hide_bezel sufami ;;
            74) hide_bezel supergrafx ;;
            75) hide_bezel tg16 ;;
            76) hide_bezel tg-cd ;;
            77) hide_bezel ti99 ;;
            78) hide_bezel trs-80 ;;
            79) hide_bezel vectrex ;;
            80) hide_bezel vic20 ;;
            81) hide_bezel videopac ;;
            82) hide_bezel virtualboy ;;
            83) hide_bezel wonderswan ;;
            84) hide_bezel wonderswancolor ;;
            85) hide_bezel x1 ;;
            86) hide_bezel x68000 ;;
            87) hide_bezel zmachine ;;
            88) hide_bezel zx81 ;;
            89) hide_bezel zxspectrum ;;
            *)  break ;;
        esac
    done

}

function enable_bezel() {

clear
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Which system would you like to enable bezels for?" 25 75 20 \
            1 "3do" \
            2 "amiga" \
            3 "amstradcpc" \
            4 "apple2" \
            5 "arcade" \
            6 "atari2600" \
            7 "atari5200" \
            8 "atari7800" \
            9 "atari800" \
            10 "atarijaguar" \
            11 "atarilynx_1080" \
            12 "atarilynx_720" \
            13 "atarist" \
            14 "c64" \
            15 "coco" \
            16 "coleco" \
            17 "daphne" \
            18 "dragon32" \
            19 "dreamcast" \
            20 "famicom" \
            21 "fba" \
            22 "fds" \
            23 "gameandwatch" \
            24 "gamegear_1080" \
            25 "gamegear_720" \
            26 "gb_1080" \
            27 "gb_720" \
            28 "gba_1080" \
            29 "gba_720" \
            30 "gbah_1080" \
            31 "gbah_720" \
            32 "gbc_1080" \
            33 "gbc_720" \
            34 "gbh_1080" \
            35 "gbh_720" \
            36 "genesis" \
            37 "genh" \
            38 "ggh" \
            39 "intellivision" \
            40 "mame-advmame" \
            41 "mame-libretro" \
            42 "mame-mame4all" \
            43 "markiii" \
            44 "mastersystem" \
            45 "megadrive" \
            46 "megadrive-japan" \
            47 "mess" \
            48 "msx" \
            49 "msx2" \
            50 "n64" \
            51 "nds" \
            52 "neogeo" \
            53 "nes" \
            54 "nesh" \
            55 "ngp_1080" \
            56 "ngp_720" \
            57 "ngpc_1080" \
            58 "ngpc_720" \
            59 "oric" \
            60 "pc" \
            61 "pc88" \
            62 "pc98" \
            63 "pce-cd" \
            64 "pcengine" \
            65 "pcfx" \
            66 "psp_1080" \
            67 "psp_720" \
            68 "pspminis_1080" \
            69 "pspminis_720" \
            70 "psx" \
            71 "residualvm" \
            72 "satellaview" \
            73 "saturn" \
            74 "sc-3000" \
            75 "scummvm" \
            76 "sega32x" \
            77 "segacd" \
            78 "sfc" \
            79 "sg-1000" \
            80 "sgb" \
            81 "snes" \
            82 "snesh" \
            83 "snesmsu1" \
            84 "sufami" \
            85 "supergrafx" \
            86 "tg16" \
            87 "tg-cd" \
            88 "ti99" \
            89 "trs-80" \
            90 "vectrex" \
            91 "vic20" \
            92 "videopac" \
            93 "virtualboy_1080" \
            94 "virtualboy_720" \
            95 "wonderswan_1080" \
            96 "wonderswan_720" \
            97 "wonderswancolor_1080" \
            98 "wonderswancolor_720" \
            99 "x1" \
            100 "x68000" \
            101 "zmachine" \
            102 "zx81" \
            103 "zxspectrum" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) show_bezel 3do ;;
            2) show_bezel amiga ;;
            3) show_bezel amstradcpc ;;
            4) show_bezel apple2 ;;
            5) show_bezel arcade ;;
            6) show_bezel atari2600 ;;
            7) show_bezel atari5200 ;;
            8) show_bezel atari7800 ;;
            9) show_bezel atari800 ;;
            10) show_bezel atarijaguar ;;
            11) show_bezel atarilynx_1080 ;;
            12) show_bezel atarilynx_720 ;;
            13) show_bezel atarist ;;
            14) show_bezel c64 ;;
            15) show_bezel coco ;;
            16) show_bezel coleco ;;
            17) show_bezel daphne ;;
            18) show_bezel dragon32 ;;
            19) show_bezel dreamcast ;;
            20) show_bezel famicom ;;
            21) show_bezel fba ;;
            22) show_bezel fds ;;
            23) show_bezel gameandwatch ;;
            24) show_bezel gamegear_1080 ;;
            25) show_bezel gamegear_720 ;;
            26) show_bezel gb_1080 ;;
            27) show_bezel gb_720 ;;
            28) show_bezel gba_1080 ;;
            29) show_bezel gba_720 ;;
            30) show_bezel gbah_1080 ;;
            31) show_bezel gbah_720 ;;
            32) show_bezel gbc_1080 ;;
            33) show_bezel gbc_720 ;;
            34) show_bezel gbh_1080 ;;
            35) show_bezel gbh_720 ;;
            36) show_bezel genesis ;;
            37) show_bezel genh ;;
            38) show_bezel ggh ;;
            39) show_bezel intellivision ;;
            40) show_bezel mame-advmame ;;
            41) show_bezel mame-libretro ;;
            42) show_bezel mame-mame4all ;;
            43) show_bezel markiii ;;
            44) show_bezel mastersystem ;;
            45) show_bezel megadrive ;;
            46) show_bezel megadrive-japan ;;
            47) show_bezel mess ;;
            48) show_bezel msx ;;
            49) show_bezel msx2 ;;
            50) show_bezel n64 ;;
            51) show_bezel nds ;;
            52) show_bezel neogeo ;;
            53) show_bezel nes ;;
            54) show_bezel nesh ;;
            55) show_bezel ngp_1080 ;;
            56) show_bezel ngp_720 ;;
            57) show_bezel ngpc_1080 ;;
            58) show_bezel ngpc_720 ;;
            59) show_bezel oric ;;
            60) show_bezel pc ;;
            61) show_bezel pc88 ;;
            62) show_bezel pc98 ;;
            63) show_bezel pce-cd ;;
            64) show_bezel pcengine ;;
            65) show_bezel pcfx ;;
            66) show_bezel psp_1080 ;;
            67) show_bezel psp_720 ;;
            68) show_bezel pspminis_1080 ;;
            69) show_bezel pspminis_720 ;;
            70) show_bezel psx ;;
            71) show_bezel residualvm ;;
            72) show_bezel satellaview ;;
            73) show_bezel saturn ;;
            74) show_bezel sc-3000 ;;
            75) show_bezel scummvm ;;
            76) show_bezel sega32x ;;
            77) show_bezel segacd ;;
            78) show_bezel sfc ;;
            79) show_bezel sg-1000 ;;
            80) show_bezel sgb ;;
            81) show_bezel snes ;;
            82) show_bezel snesh ;;
            83) show_bezel snesmsu1 ;;
            84) show_bezel sufami ;;
            85) show_bezel supergrafx ;;
            86) show_bezel tg16 ;;
            87) show_bezel tg-cd ;;
            88) show_bezel ti99 ;;
            89) show_bezel trs-80 ;;
            90) show_bezel vectrex ;;
            91) show_bezel vic20 ;;
            92) show_bezel videopac ;;
            93) show_bezel virtualboy_1080 ;;
            94) show_bezel virtualboy_720 ;;
            95) show_bezel wonderswan_1080 ;;
            96) show_bezel wonderswan_720 ;;
            97) show_bezel wonderswancolor_1080 ;;
            98) show_bezel wonderswancolor_720 ;;
            99) show_bezel x1 ;;
            100) show_bezel x68000 ;;
            101) show_bezel zmachine ;;
            102) show_bezel zx81 ;;
            103) show_bezel zxspectrum ;;
            *)  break ;;
        esac
    done

}

function hide_bezel() {
dialog --infobox "...processing..." 3 20 ; sleep 2
emulator=$1
file="/opt/retropie/configs/${emulator}/retroarch.cfg"

case ${emulator} in
arcade)
  cp /opt/retropie/configs/${emulator}/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg.bkp
  cat /opt/retropie/configs/${emulator}/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg
  rm "/opt/retropie/configs/all/retroarch/config/FB Alpha/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2003/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2010/*.cfg"
  ;;
fba)
  cp /opt/retropie/configs/${emulator}/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg.bkp
  cat /opt/retropie/configs/${emulator}/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg
  rm "/opt/retropie/configs/all/retroarch/config/FB Alpha/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2003/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2010/*.cfg"
  ;;
mame-advmame)
  cp /opt/retropie/configs/${emulator}/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg.bkp
  cat /opt/retropie/configs/${emulator}/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg
  rm "/opt/retropie/configs/all/retroarch/config/FB Alpha/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2003/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2010/*.cfg"
  ;;
mame-libretro)
  cp /opt/retropie/configs/${emulator}/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg.bkp
  cat /opt/retropie/configs/${emulator}/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg
  rm "/opt/retropie/configs/all/retroarch/config/FB Alpha/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2003/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2010/*.cfg"
  ;;
mame-mame4all)
  cp /opt/retropie/configs/${emulator}/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg.bkp
  cat /opt/retropie/configs/${emulator}/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg
  rm "/opt/retropie/configs/all/retroarch/config/FB Alpha/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2003/*.cfg"
  rm "/opt/retropie/configs/all/retroarch/config/MAME 2010/*.cfg"
  ;;
genesis)
  cp /opt/retropie/configs/megadrive/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg.bkp
  cat /opt/retropie/configs/megadrive/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg
  ;;
*)
  cp /opt/retropie/configs/${emulator}/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg.bkp
  cat /opt/retropie/configs/${emulator}/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/${emulator}/retroarch.cfg
  ;;
esac
}

function show_bezel() {
dialog --infobox "...processing..." 3 20 ; sleep 2
emulator=$1
file="/opt/retropie/configs/${emulator}/retroarch.cfg"

case ${emulator} in
3do)
 ifexist=`cat /opt/retropie/configs/3do/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/3do/retroarch.cfg /opt/retropie/configs/3do/retroarch.cfg.bkp
  cat /opt/retropie/configs/3do/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/3do/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/3do.cfg" #bezelscript' /opt/retropie/configs/3do/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/3do/retroarch.cfg
 else
  cp /opt/retropie/configs/3do/retroarch.cfg /opt/retropie/configs/3do/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/3do.cfg" #bezelscript' /opt/retropie/configs/3do/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/3do/retroarch.cfg
 fi
 ;;
amiga)
 ifexist=`cat /opt/retropie/configs/amiga/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/amiga/retroarch.cfg /opt/retropie/configs/amiga/retroarch.cfg.bkp
  cat /opt/retropie/configs/amiga/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/amiga/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/amiga.cfg" #bezelscript' /opt/retropie/configs/amiga/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/amiga/retroarch.cfg
 else
  cp /opt/retropie/configs/amiga/retroarch.cfg /opt/retropie/configs/amiga/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/amiga.cfg" #bezelscript' /opt/retropie/configs/amiga/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/amiga/retroarch.cfg
 fi
 ;;
amstradcpc)
 ifexist=`cat /opt/retropie/configs/amstradcpc/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/amstradcpc/retroarch.cfg /opt/retropie/configs/amstradcpc/retroarch.cfg.bkp
  cat /opt/retropie/configs/amstradcpc/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/amstradcpc/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/amstradcpc.cfg" #bezelscript' /opt/retropie/configs/amstradcpc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/amstradcpc/retroarch.cfg
 else
  cp /opt/retropie/configs/amstradcpc/retroarch.cfg /opt/retropie/configs/amstradcpc/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/amstradcpc.cfg" #bezelscript' /opt/retropie/configs/amstradcpc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/amstradcpc/retroarch.cfg
 fi
 ;;
apple2)
 ifexist=`cat /opt/retropie/configs/apple2/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/apple2/retroarch.cfg /opt/retropie/configs/apple2/retroarch.cfg.bkp
  cat /opt/retropie/configs/apple2/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/apple2/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/apple2.cfg" #bezelscript' /opt/retropie/configs/apple2/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/apple2/retroarch.cfg
 else
  cp /opt/retropie/configs/apple2/retroarch.cfg /opt/retropie/configs/apple2/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/apple2.cfg" #bezelscript' /opt/retropie/configs/apple2/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/apple2/retroarch.cfg
 fi
 ;;
arcade)
 ifexist=`cat /opt/retropie/configs/arcade/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/arcade/retroarch.cfg /opt/retropie/configs/arcade/retroarch.cfg.bkp
  cat /opt/retropie/configs/arcade/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/arcade/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/arcade_horizontal.cfg" #bezelscript' /opt/retropie/configs/arcade/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/arcade/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/arcade/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/arcade/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/arcade/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 else
  cp /opt/retropie/configs/arcade/retroarch.cfg /opt/retropie/configs/arcade/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/arcade_horizontal.cfg" #bezelscript' /opt/retropie/configs/arcade/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/arcade/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/arcade/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/arcade/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/arcade/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 fi
 ;;
atari2600)
 ifexist=`cat /opt/retropie/configs/atari2600/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atari2600/retroarch.cfg /opt/retropie/configs/atari2600/retroarch.cfg.bkp
  cat /opt/retropie/configs/atari2600/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atari2600/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari2600.cfg" #bezelscript' /opt/retropie/configs/atari2600/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari2600/retroarch.cfg
 else
  cp /opt/retropie/configs/atari2600/retroarch.cfg /opt/retropie/configs/atari2600/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari2600.cfg" #bezelscript' /opt/retropie/configs/atari2600/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari2600/retroarch.cfg
 fi
 ;;
atari5200)
 ifexist=`cat /opt/retropie/configs/atari5200/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atari5200/retroarch.cfg /opt/retropie/configs/atari5200/retroarch.cfg.bkp
  cat /opt/retropie/configs/atari5200/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atari5200/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari5200.cfg" #bezelscript' /opt/retropie/configs/atari5200/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari5200/retroarch.cfg
 else
  cp /opt/retropie/configs/atari5200/retroarch.cfg /opt/retropie/configs/atari5200/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari5200.cfg" #bezelscript' /opt/retropie/configs/atari5200/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari5200/retroarch.cfg
 fi
 ;;
atari7800)
 ifexist=`cat /opt/retropie/configs/atari7800/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atari7800/retroarch.cfg /opt/retropie/configs/atari7800/retroarch.cfg.bkp
  cat /opt/retropie/configs/atari7800/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atari7800/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari7800.cfg" #bezelscript' /opt/retropie/configs/atari7800/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari7800/retroarch.cfg
 else
  cp /opt/retropie/configs/atari7800/retroarch.cfg /opt/retropie/configs/atari7800/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari7800.cfg" #bezelscript' /opt/retropie/configs/atari7800/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari7800/retroarch.cfg
 fi
 ;;
atari800)
 ifexist=`cat /opt/retropie/configs/atari800/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atari800/retroarch.cfg /opt/retropie/configs/atari800/retroarch.cfg.bkp
  cat /opt/retropie/configs/atari800/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atari800/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari800.cfg" #bezelscript' /opt/retropie/configs/atari800/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari800/retroarch.cfg
 else
  cp /opt/retropie/configs/atari800/retroarch.cfg /opt/retropie/configs/atari800/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atari800.cfg" #bezelscript' /opt/retropie/configs/atari800/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atari800/retroarch.cfg
 fi
 ;;
atarijaguar)
 ifexist=`cat /opt/retropie/configs/atarijaguar/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atarijaguar/retroarch.cfg /opt/retropie/configs/atarijaguar/retroarch.cfg.bkp
  cat /opt/retropie/configs/atarijaguar/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atarijaguar/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarijaguar.cfg" #bezelscript' /opt/retropie/configs/atarijaguar/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarijaguar/retroarch.cfg
 else
  cp /opt/retropie/configs/atarijaguar/retroarch.cfg /opt/retropie/configs/atarijaguar/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarijaguar.cfg" #bezelscript' /opt/retropie/configs/atarijaguar/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarijaguar/retroarch.cfg
 fi
 ;;
atarist)
 ifexist=`cat /opt/retropie/configs/atarist/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atarist/retroarch.cfg /opt/retropie/configs/atarist/retroarch.cfg.bkp
  cat /opt/retropie/configs/atarist/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atarist/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarist.cfg" #bezelscript' /opt/retropie/configs/atarist/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarist/retroarch.cfg
 else
  cp /opt/retropie/configs/atarist/retroarch.cfg /opt/retropie/configs/atarist/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarist.cfg" #bezelscript' /opt/retropie/configs/atarist/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarist/retroarch.cfg
 fi
 ;;
c64)
 ifexist=`cat /opt/retropie/configs/c64/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/c64/retroarch.cfg /opt/retropie/configs/c64/retroarch.cfg.bkp
  cat /opt/retropie/configs/c64/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/c64/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/c64.cfg" #bezelscript' /opt/retropie/configs/c64/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/c64/retroarch.cfg
 else
  cp /opt/retropie/configs/c64/retroarch.cfg /opt/retropie/configs/c64/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/c64.cfg" #bezelscript' /opt/retropie/configs/c64/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/c64/retroarch.cfg
 fi
 ;;
coco)
 ifexist=`cat /opt/retropie/configs/coco/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/coco/retroarch.cfg /opt/retropie/configs/coco/retroarch.cfg.bkp
  cat /opt/retropie/configs/coco/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/coco/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/coco.cfg" #bezelscript' /opt/retropie/configs/coco/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/coco/retroarch.cfg
 else
  cp /opt/retropie/configs/coco/retroarch.cfg /opt/retropie/configs/coco/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/coco.cfg" #bezelscript' /opt/retropie/configs/coco/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/coco/retroarch.cfg
 fi
 ;;
coleco)
 ifexist=`cat /opt/retropie/configs/coleco/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/coleco/retroarch.cfg /opt/retropie/configs/coleco/retroarch.cfg.bkp
  cat /opt/retropie/configs/coleco/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/coleco/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/coleco.cfg" #bezelscript' /opt/retropie/configs/coleco/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/coleco/retroarch.cfg
 else
  cp /opt/retropie/configs/coleco/retroarch.cfg /opt/retropie/configs/coleco/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/coleco.cfg" #bezelscript' /opt/retropie/configs/coleco/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/coleco/retroarch.cfg
 fi
 ;;
daphne)
 ifexist=`cat /opt/retropie/configs/daphne/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/daphne/retroarch.cfg /opt/retropie/configs/daphne/retroarch.cfg.bkp
  cat /opt/retropie/configs/daphne/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/daphne/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/daphne.cfg" #bezelscript' /opt/retropie/configs/daphne/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/daphne/retroarch.cfg
 else
  cp /opt/retropie/configs/daphne/retroarch.cfg /opt/retropie/configs/daphne/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/daphne.cfg" #bezelscript' /opt/retropie/configs/daphne/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/daphne/retroarch.cfg
 fi
 ;;
dragon32)
 ifexist=`cat /opt/retropie/configs/dragon32/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/dragon32/retroarch.cfg /opt/retropie/configs/dragon32/retroarch.cfg.bkp
  cat /opt/retropie/configs/dragon32/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/dragon32/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/dragon32.cfg" #bezelscript' /opt/retropie/configs/dragon32/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/dragon32/retroarch.cfg
 else
  cp /opt/retropie/configs/dragon32/retroarch.cfg /opt/retropie/configs/dragon32/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/dragon32.cfg" #bezelscript' /opt/retropie/configs/dragon32/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/dragon32/retroarch.cfg
 fi
 ;;
dreamcast)
 ifexist=`cat /opt/retropie/configs/dreamcast/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/dreamcast/retroarch.cfg /opt/retropie/configs/dreamcast/retroarch.cfg.bkp
  cat /opt/retropie/configs/dreamcast/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/dreamcast/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/dreamcast.cfg" #bezelscript' /opt/retropie/configs/dreamcast/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/dreamcast/retroarch.cfg
 else
  cp /opt/retropie/configs/dreamcast/retroarch.cfg /opt/retropie/configs/dreamcast/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/dreamcast.cfg" #bezelscript' /opt/retropie/configs/dreamcast/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/dreamcast/retroarch.cfg
 fi
 ;;
famicom)
 ifexist=`cat /opt/retropie/configs/famicom/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/famicom/retroarch.cfg /opt/retropie/configs/famicom/retroarch.cfg.bkp
  cat /opt/retropie/configs/famicom/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/famicom/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/famicom.cfg" #bezelscript' /opt/retropie/configs/famicom/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/famicom/retroarch.cfg
 else
  cp /opt/retropie/configs/famicom/retroarch.cfg /opt/retropie/configs/famicom/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/famicom.cfg" #bezelscript' /opt/retropie/configs/famicom/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/famicom/retroarch.cfg
 fi
 ;;
fba)
 ifexist=`cat /opt/retropie/configs/fba/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/fba/retroarch.cfg /opt/retropie/configs/fba/retroarch.cfg.bkp
  cat /opt/retropie/configs/fba/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/fba/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/fba_horizontal.cfg" #bezelscript' /opt/retropie/configs/fba/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/fba/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/fba/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/fba/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/fba/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 else
  cp /opt/retropie/configs/fba/retroarch.cfg /opt/retropie/configs/fba/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/fba_horizontal.cfg" #bezelscript' /opt/retropie/configs/fba/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/fba/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/fba/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/fba/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/fba/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 fi
 ;;
fds)
 ifexist=`cat /opt/retropie/configs/fds/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/fds/retroarch.cfg /opt/retropie/configs/fds/retroarch.cfg.bkp
  cat /opt/retropie/configs/fds/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/fds/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/fds.cfg" #bezelscript' /opt/retropie/configs/fds/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/fds/retroarch.cfg
 else
  cp /opt/retropie/configs/fds/retroarch.cfg /opt/retropie/configs/fds/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/fds.cfg" #bezelscript' /opt/retropie/configs/fds/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/fds/retroarch.cfg
 fi
 ;;
gameandwatch)
 ifexist=`cat /opt/retropie/configs/gameandwatch/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gameandwatch/retroarch.cfg /opt/retropie/configs/gameandwatch/retroarch.cfg.bkp
  cat /opt/retropie/configs/gameandwatch/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gameandwatch/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gameandwatch.cfg" #bezelscript' /opt/retropie/configs/gameandwatch/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gameandwatch/retroarch.cfg
 else
  cp /opt/retropie/configs/gameandwatch/retroarch.cfg /opt/retropie/configs/gameandwatch/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gameandwatch.cfg" #bezelscript' /opt/retropie/configs/gameandwatch/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gameandwatch/retroarch.cfg
 fi
 ;;
genesis)
 ifexist=`cat /opt/retropie/configs/megadrive/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/megadrive/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg.bkp
  cat /opt/retropie/configs/megadrive/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/genesis.cfg" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
 else
  cp /opt/retropie/configs/megadrive/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/genesis.cfg" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
 fi
 ;;
genh)
 ifexist=`cat /opt/retropie/configs/genh/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/genh/retroarch.cfg /opt/retropie/configs/genh/retroarch.cfg.bkp
  cat /opt/retropie/configs/genh/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/genh/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/genh.cfg" #bezelscript' /opt/retropie/configs/genh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/genh/retroarch.cfg
 else
  cp /opt/retropie/configs/genh/retroarch.cfg /opt/retropie/configs/genh/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/genh.cfg" #bezelscript' /opt/retropie/configs/genh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/genh/retroarch.cfg
 fi
 ;;
intellivision)
 ifexist=`cat /opt/retropie/configs/intellivision/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/intellivision/retroarch.cfg /opt/retropie/configs/intellivision/retroarch.cfg.bkp
  cat /opt/retropie/configs/intellivision/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/intellivision/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/intellivision.cfg" #bezelscript' /opt/retropie/configs/intellivision/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/intellivision/retroarch.cfg
 else
  cp /opt/retropie/configs/intellivision/retroarch.cfg /opt/retropie/configs/intellivision/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/intellivision.cfg" #bezelscript' /opt/retropie/configs/intellivision/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/intellivision/retroarch.cfg
 fi
 ;;
mame-advmame)
 ifexist=`cat /opt/retropie/configs/mame-advmame/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/mame-advmame/retroarch.cfg /opt/retropie/configs/mame-advmame/retroarch.cfg.bkp
  cat /opt/retropie/configs/mame-advmame/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/mame-advmame/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mame_horizontal.cfg" #bezelscript' /opt/retropie/configs/mame-advmame/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mame-advmame/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 else
  cp /opt/retropie/configs/mame-advmame/retroarch.cfg /opt/retropie/configs/mame-advmame/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mame_horizontal.cfg" #bezelscript' /opt/retropie/configs/mame-advmame/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mame-advmame/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 fi
 ;;
mame-libretro)
 ifexist=`cat /opt/retropie/configs/mame-libretro/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/mame-libretro/retroarch.cfg /opt/retropie/configs/mame-libretro/retroarch.cfg.bkp
  cat /opt/retropie/configs/mame-libretro/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/mame-libretro/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mame_horizontal.cfg" #bezelscript' /opt/retropie/configs/mame-libretro/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mame-libretro/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 else
  cp /opt/retropie/configs/mame-libretro/retroarch.cfg /opt/retropie/configs/mame-libretro/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mame_horizontal.cfg" #bezelscript' /opt/retropie/configs/mame-libretro/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mame-libretro/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 fi
 ;;
mame-mame4all)
 ifexist=`cat /opt/retropie/configs/mame-mame4all/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/mame-mame4all/retroarch.cfg /opt/retropie/configs/mame-mame4all/retroarch.cfg.bkp
  cat /opt/retropie/configs/mame-mame4all/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/mame-mame4all/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mame_horizontal.cfg" #bezelscript' /opt/retropie/configs/mame-mame4all/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mame-mame4all/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 else
  cp /opt/retropie/configs/mame-mame4all/retroarch.cfg /opt/retropie/configs/mame-mame4all/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mame_horizontal.cfg" #bezelscript' /opt/retropie/configs/mame-mame4all/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mame-mame4all/retroarch.cfg
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/FB Alpha"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2003"
  cp /home/pi/RetroPie/retropiemenu/systembezels/mame/* "/opt/retropie/configs/all/retroarch/config/MAME 2010"
 fi
 ;;
markiii)
 ifexist=`cat /opt/retropie/configs/markiii/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/markiii/retroarch.cfg /opt/retropie/configs/markiii/retroarch.cfg.bkp
  cat /opt/retropie/configs/markiii/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/markiii/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/markiii.cfg" #bezelscript' /opt/retropie/configs/markiii/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/markiii/retroarch.cfg
 else
  cp /opt/retropie/configs/markiii/retroarch.cfg /opt/retropie/configs/markiii/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/markiii.cfg" #bezelscript' /opt/retropie/configs/markiii/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/markiii/retroarch.cfg
 fi
 ;;
mastersystem)
 ifexist=`cat /opt/retropie/configs/mastersystem/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/mastersystem/retroarch.cfg /opt/retropie/configs/mastersystem/retroarch.cfg.bkp
  cat /opt/retropie/configs/mastersystem/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/mastersystem/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mastersystem.cfg" #bezelscript' /opt/retropie/configs/mastersystem/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mastersystem/retroarch.cfg
 else
  cp /opt/retropie/configs/mastersystem/retroarch.cfg /opt/retropie/configs/mastersystem/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mastersystem.cfg" #bezelscript' /opt/retropie/configs/mastersystem/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mastersystem/retroarch.cfg
 fi
 ;;
megadrive)
 ifexist=`cat /opt/retropie/configs/megadrive/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/megadrive/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg.bkp
  cat /opt/retropie/configs/megadrive/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/megadrive.cfg" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
 else
  cp /opt/retropie/configs/megadrive/retroarch.cfg /opt/retropie/configs/megadrive/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/megadrive.cfg" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/megadrive/retroarch.cfg
 fi
 ;;
megadrive-japan)
 ifexist=`cat /opt/retropie/configs/megadrive-japan/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/megadrive-japan/retroarch.cfg /opt/retropie/configs/megadrive-japan/retroarch.cfg.bkp
  cat /opt/retropie/configs/megadrive-japan/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/megadrive-japan/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/megadrive-japan.cfg" #bezelscript' /opt/retropie/configs/megadrive-japan/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/megadrive-japan/retroarch.cfg
 else
  cp /opt/retropie/configs/megadrive-japan/retroarch.cfg /opt/retropie/configs/megadrive-japan/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/megadrive-japan.cfg" #bezelscript' /opt/retropie/configs/megadrive-japan/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/megadrive-japan/retroarch.cfg
 fi
 ;;
mess)
 ifexist=`cat /opt/retropie/configs/mess/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/mess/retroarch.cfg /opt/retropie/configs/mess/retroarch.cfg.bkp
  cat /opt/retropie/configs/mess/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/mess/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mess.cfg" #bezelscript' /opt/retropie/configs/mess/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mess/retroarch.cfg
 else
  cp /opt/retropie/configs/mess/retroarch.cfg /opt/retropie/configs/mess/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/mess.cfg" #bezelscript' /opt/retropie/configs/mess/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/mess/retroarch.cfg
 fi
 ;;
msx)
 ifexist=`cat /opt/retropie/configs/msx/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/msx/retroarch.cfg /opt/retropie/configs/msx/retroarch.cfg.bkp
  cat /opt/retropie/configs/msx/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/msx/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/msx.cfg" #bezelscript' /opt/retropie/configs/msx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/msx/retroarch.cfg
 else
  cp /opt/retropie/configs/msx/retroarch.cfg /opt/retropie/configs/msx/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/msx.cfg" #bezelscript' /opt/retropie/configs/msx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/msx/retroarch.cfg
 fi
 ;;
msx2)
 ifexist=`cat /opt/retropie/configs/msx2/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/msx2/retroarch.cfg /opt/retropie/configs/msx2/retroarch.cfg.bkp
  cat /opt/retropie/configs/msx2/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/msx2/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/msx2.cfg" #bezelscript' /opt/retropie/configs/msx2/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/msx2/retroarch.cfg
 else
  cp /opt/retropie/configs/msx2/retroarch.cfg /opt/retropie/configs/msx2/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/msx2.cfg" #bezelscript' /opt/retropie/configs/msx2/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/msx2/retroarch.cfg
 fi
 ;;
n64)
 ifexist=`cat /opt/retropie/configs/n64/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/n64/retroarch.cfg /opt/retropie/configs/n64/retroarch.cfg.bkp
  cat /opt/retropie/configs/n64/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/n64/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/n64.cfg" #bezelscript' /opt/retropie/configs/n64/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/n64/retroarch.cfg
 else
  cp /opt/retropie/configs/n64/retroarch.cfg /opt/retropie/configs/n64/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/n64.cfg" #bezelscript' /opt/retropie/configs/n64/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/n64/retroarch.cfg
 fi
 ;;
nds)
 ifexist=`cat /opt/retropie/configs/nds/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/nds/retroarch.cfg /opt/retropie/configs/nds/retroarch.cfg.bkp
  cat /opt/retropie/configs/nds/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/nds/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/nds.cfg" #bezelscript' /opt/retropie/configs/nds/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/nds/retroarch.cfg
 else
  cp /opt/retropie/configs/nds/retroarch.cfg /opt/retropie/configs/nds/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/nds.cfg" #bezelscript' /opt/retropie/configs/nds/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/nds/retroarch.cfg
 fi
 ;;
neogeo)
 ifexist=`cat /opt/retropie/configs/neogeo/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/neogeo/retroarch.cfg /opt/retropie/configs/neogeo/retroarch.cfg.bkp
  cat /opt/retropie/configs/neogeo/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/neogeo/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/neogeo.cfg" #bezelscript' /opt/retropie/configs/neogeo/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/neogeo/retroarch.cfg
 else
  cp /opt/retropie/configs/neogeo/retroarch.cfg /opt/retropie/configs/neogeo/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/neogeo.cfg" #bezelscript' /opt/retropie/configs/neogeo/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/neogeo/retroarch.cfg
 fi
 ;;
nes)
 ifexist=`cat /opt/retropie/configs/nes/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/nes/retroarch.cfg /opt/retropie/configs/nes/retroarch.cfg.bkp
  cat /opt/retropie/configs/nes/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/nes/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/nes.cfg" #bezelscript' /opt/retropie/configs/nes/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/nes/retroarch.cfg
 else
  cp /opt/retropie/configs/nes/retroarch.cfg /opt/retropie/configs/nes/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/nes.cfg" #bezelscript' /opt/retropie/configs/nes/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/nes/retroarch.cfg
 fi
 ;;
nesh)
 ifexist=`cat /opt/retropie/configs/nesh/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/nesh/retroarch.cfg /opt/retropie/configs/nesh/retroarch.cfg.bkp
  cat /opt/retropie/configs/nesh/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/nesh/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/nesh.cfg" #bezelscript' /opt/retropie/configs/nesh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/nesh/retroarch.cfg
 else
  cp /opt/retropie/configs/nesh/retroarch.cfg /opt/retropie/configs/nesh/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/nesh.cfg" #bezelscript' /opt/retropie/configs/nesh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/nesh/retroarch.cfg
 fi
 ;;
oric)
 ifexist=`cat /opt/retropie/configs/oric/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/oric/retroarch.cfg /opt/retropie/configs/oric/retroarch.cfg.bkp
  cat /opt/retropie/configs/oric/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/oric/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/oric.cfg" #bezelscript' /opt/retropie/configs/oric/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/oric/retroarch.cfg
 else
  cp /opt/retropie/configs/oric/retroarch.cfg /opt/retropie/configs/oric/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/oric.cfg" #bezelscript' /opt/retropie/configs/oric/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/oric/retroarch.cfg
 fi
 ;;
pc)
 ifexist=`cat /opt/retropie/configs/pc/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pc/retroarch.cfg /opt/retropie/configs/pc/retroarch.cfg.bkp
  cat /opt/retropie/configs/pc/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pc/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pc.cfg" #bezelscript' /opt/retropie/configs/pc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pc/retroarch.cfg
 else
  cp /opt/retropie/configs/pc/retroarch.cfg /opt/retropie/configs/pc/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pc.cfg" #bezelscript' /opt/retropie/configs/pc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pc/retroarch.cfg
 fi
 ;;
pc88)
 ifexist=`cat /opt/retropie/configs/pc88/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pc88/retroarch.cfg /opt/retropie/configs/pc88/retroarch.cfg.bkp
  cat /opt/retropie/configs/pc88/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pc88/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pc88.cfg" #bezelscript' /opt/retropie/configs/pc88/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pc88/retroarch.cfg
 else
  cp /opt/retropie/configs/pc88/retroarch.cfg /opt/retropie/configs/pc88/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pc88.cfg" #bezelscript' /opt/retropie/configs/pc88/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pc88/retroarch.cfg
 fi
 ;;
pc98)
 ifexist=`cat /opt/retropie/configs/pc98/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pc98/retroarch.cfg /opt/retropie/configs/pc98/retroarch.cfg.bkp
  cat /opt/retropie/configs/pc98/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pc98/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pc98.cfg" #bezelscript' /opt/retropie/configs/pc98/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pc98/retroarch.cfg
 else
  cp /opt/retropie/configs/pc98/retroarch.cfg /opt/retropie/configs/pc98/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pc98.cfg" #bezelscript' /opt/retropie/configs/pc98/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pc98/retroarch.cfg
 fi
 ;;
pce-cd)
 ifexist=`cat /opt/retropie/configs/pce-cd/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pce-cd/retroarch.cfg /opt/retropie/configs/pce-cd/retroarch.cfg.bkp
  cat /opt/retropie/configs/pce-cd/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pce-cd/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pce-cd.cfg" #bezelscript' /opt/retropie/configs/pce-cd/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pce-cd/retroarch.cfg
 else
  cp /opt/retropie/configs/pce-cd/retroarch.cfg /opt/retropie/configs/pce-cd/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pce-cd.cfg" #bezelscript' /opt/retropie/configs/pce-cd/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pce-cd/retroarch.cfg
 fi
 ;;
pcengine)
 ifexist=`cat /opt/retropie/configs/pcengine/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pcengine/retroarch.cfg /opt/retropie/configs/pcengine/retroarch.cfg.bkp
  cat /opt/retropie/configs/pcengine/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pcengine/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pcengine.cfg" #bezelscript' /opt/retropie/configs/pcengine/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pcengine/retroarch.cfg
 else
  cp /opt/retropie/configs/pcengine/retroarch.cfg /opt/retropie/configs/pcengine/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pcengine.cfg" #bezelscript' /opt/retropie/configs/pcengine/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pcengine/retroarch.cfg
 fi
 ;;
pcfx)
 ifexist=`cat /opt/retropie/configs/pcfx/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pcfx/retroarch.cfg /opt/retropie/configs/pcfx/retroarch.cfg.bkp
  cat /opt/retropie/configs/pcfx/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pcfx/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pcfx.cfg" #bezelscript' /opt/retropie/configs/pcfx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pcfx/retroarch.cfg
 else
  cp /opt/retropie/configs/pcfx/retroarch.cfg /opt/retropie/configs/pcfx/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pcfx.cfg" #bezelscript' /opt/retropie/configs/pcfx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pcfx/retroarch.cfg
 fi
 ;;
psp)
 ifexist=`cat /opt/retropie/configs/psp/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/psp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg.bkp
  cat /opt/retropie/configs/psp/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psp.cfg" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
 else
  cp /opt/retropie/configs/psp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psp.cfg" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
 fi
 ;;
pspminis)
 ifexist=`cat /opt/retropie/configs/pspminis/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pspminis/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg.bkp
  cat /opt/retropie/configs/pspminis/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pspminis.cfg" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
 else
  cp /opt/retropie/configs/pspminis/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pspminis.cfg" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
 fi
 ;;
psx)
 ifexist=`cat /opt/retropie/configs/psx/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/psx/retroarch.cfg /opt/retropie/configs/psx/retroarch.cfg.bkp
  cat /opt/retropie/configs/psx/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/psx/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psx.cfg" #bezelscript' /opt/retropie/configs/psx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psx/retroarch.cfg
 else
  cp /opt/retropie/configs/psx/retroarch.cfg /opt/retropie/configs/psx/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psx.cfg" #bezelscript' /opt/retropie/configs/psx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psx/retroarch.cfg
 fi
 ;;
residualvm)
 ifexist=`cat /opt/retropie/configs/residualvm/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/residualvm/retroarch.cfg /opt/retropie/configs/residualvm/retroarch.cfg.bkp
  cat /opt/retropie/configs/residualvm/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/residualvm/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/residualvm.cfg" #bezelscript' /opt/retropie/configs/residualvm/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/residualvm/retroarch.cfg
 else
  cp /opt/retropie/configs/residualvm/retroarch.cfg /opt/retropie/configs/residualvm/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/residualvm.cfg" #bezelscript' /opt/retropie/configs/residualvm/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/residualvm/retroarch.cfg
 fi
 ;;
satellaview)
 ifexist=`cat /opt/retropie/configs/satellaview/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/satellaview/retroarch.cfg /opt/retropie/configs/satellaview/retroarch.cfg.bkp
  cat /opt/retropie/configs/satellaview/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/satellaview/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/satellaview.cfg" #bezelscript' /opt/retropie/configs/satellaview/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/satellaview/retroarch.cfg
 else
  cp /opt/retropie/configs/satellaview/retroarch.cfg /opt/retropie/configs/satellaview/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/satellaview.cfg" #bezelscript' /opt/retropie/configs/satellaview/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/satellaview/retroarch.cfg
 fi
 ;;
saturn)
 ifexist=`cat /opt/retropie/configs/saturn/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/saturn/retroarch.cfg /opt/retropie/configs/saturn/retroarch.cfg.bkp
  cat /opt/retropie/configs/saturn/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/saturn/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/saturn.cfg" #bezelscript' /opt/retropie/configs/saturn/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/saturn/retroarch.cfg
 else
  cp /opt/retropie/configs/saturn/retroarch.cfg /opt/retropie/configs/saturn/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/saturn.cfg" #bezelscript' /opt/retropie/configs/saturn/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/saturn/retroarch.cfg
 fi
 ;;
sc-3000)
 ifexist=`cat /opt/retropie/configs/sc-3000/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/sc-3000/retroarch.cfg /opt/retropie/configs/sc-3000/retroarch.cfg.bkp
  cat /opt/retropie/configs/sc-3000/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/sc-3000/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sc-3000.cfg" #bezelscript' /opt/retropie/configs/sc-3000/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sc-3000/retroarch.cfg
 else
  cp /opt/retropie/configs/sc-3000/retroarch.cfg /opt/retropie/configs/sc-3000/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sc-3000.cfg" #bezelscript' /opt/retropie/configs/sc-3000/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sc-3000/retroarch.cfg
 fi
 ;;
scummvm)
 ifexist=`cat /opt/retropie/configs/scummvm/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/scummvm/retroarch.cfg /opt/retropie/configs/scummvm/retroarch.cfg.bkp
  cat /opt/retropie/configs/scummvm/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/scummvm/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/scummvm.cfg" #bezelscript' /opt/retropie/configs/scummvm/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/scummvm/retroarch.cfg
 else
  cp /opt/retropie/configs/scummvm/retroarch.cfg /opt/retropie/configs/scummvm/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/scummvm.cfg" #bezelscript' /opt/retropie/configs/scummvm/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/scummvm/retroarch.cfg
 fi
 ;;
sega32x)
 ifexist=`cat /opt/retropie/configs/sega32x/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/sega32x/retroarch.cfg /opt/retropie/configs/sega32x/retroarch.cfg.bkp
  cat /opt/retropie/configs/sega32x/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/sega32x/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sega32x.cfg" #bezelscript' /opt/retropie/configs/sega32x/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sega32x/retroarch.cfg
 else
  cp /opt/retropie/configs/sega32x/retroarch.cfg /opt/retropie/configs/sega32x/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sega32x.cfg" #bezelscript' /opt/retropie/configs/sega32x/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sega32x/retroarch.cfg
 fi
 ;;
segacd)
 ifexist=`cat /opt/retropie/configs/segacd/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/segacd/retroarch.cfg /opt/retropie/configs/segacd/retroarch.cfg.bkp
  cat /opt/retropie/configs/segacd/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/segacd/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/segacd.cfg" #bezelscript' /opt/retropie/configs/segacd/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/segacd/retroarch.cfg
 else
  cp /opt/retropie/configs/segacd/retroarch.cfg /opt/retropie/configs/segacd/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/segacd.cfg" #bezelscript' /opt/retropie/configs/segacd/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/segacd/retroarch.cfg
 fi
 ;;
sfc)
 ifexist=`cat /opt/retropie/configs/sfc/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/sfc/retroarch.cfg /opt/retropie/configs/sfc/retroarch.cfg.bkp
  cat /opt/retropie/configs/sfc/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/sfc/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sfc.cfg" #bezelscript' /opt/retropie/configs/sfc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sfc/retroarch.cfg
 else
  cp /opt/retropie/configs/sfc/retroarch.cfg /opt/retropie/configs/sfc/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sfc.cfg" #bezelscript' /opt/retropie/configs/sfc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sfc/retroarch.cfg
 fi
 ;;
sg-1000)
 ifexist=`cat /opt/retropie/configs/sg-1000/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/sg-1000/retroarch.cfg /opt/retropie/configs/sg-1000/retroarch.cfg.bkp
  cat /opt/retropie/configs/sg-1000/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/sg-1000/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sg-1000.cfg" #bezelscript' /opt/retropie/configs/sg-1000/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sg-1000/retroarch.cfg
 else
  cp /opt/retropie/configs/sg-1000/retroarch.cfg /opt/retropie/configs/sg-1000/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sg-1000.cfg" #bezelscript' /opt/retropie/configs/sg-1000/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sg-1000/retroarch.cfg
 fi
 ;;
sgb)
 ifexist=`cat /opt/retropie/configs/sgb/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/sgb/retroarch.cfg /opt/retropie/configs/sgb/retroarch.cfg.bkp
  cat /opt/retropie/configs/sgb/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/sgb/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sgb.cfg" #bezelscript' /opt/retropie/configs/sgb/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sgb/retroarch.cfg
 else
  cp /opt/retropie/configs/sgb/retroarch.cfg /opt/retropie/configs/sgb/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sgb.cfg" #bezelscript' /opt/retropie/configs/sgb/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sgb/retroarch.cfg
 fi
 ;;
snes)
 ifexist=`cat /opt/retropie/configs/snes/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/snes/retroarch.cfg /opt/retropie/configs/snes/retroarch.cfg.bkp
  cat /opt/retropie/configs/snes/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/snes/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/snes.cfg" #bezelscript' /opt/retropie/configs/snes/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/snes/retroarch.cfg
 else
  cp /opt/retropie/configs/snes/retroarch.cfg /opt/retropie/configs/snes/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/snes.cfg" #bezelscript' /opt/retropie/configs/snes/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/snes/retroarch.cfg
 fi
 ;;
snesh)
 ifexist=`cat /opt/retropie/configs/snesh/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/snesh/retroarch.cfg /opt/retropie/configs/snesh/retroarch.cfg.bkp
  cat /opt/retropie/configs/snesh/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/snesh/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/snesh.cfg" #bezelscript' /opt/retropie/configs/snesh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/snesh/retroarch.cfg
 else
  cp /opt/retropie/configs/snesh/retroarch.cfg /opt/retropie/configs/snesh/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/snesh.cfg" #bezelscript' /opt/retropie/configs/snesh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/snesh/retroarch.cfg
 fi
 ;;
snesmsu1)
 ifexist=`cat /opt/retropie/configs/snesmsu1/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/snesmsu1/retroarch.cfg /opt/retropie/configs/snesmsu1/retroarch.cfg.bkp
  cat /opt/retropie/configs/snesmsu1/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/snesmsu1/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/snesmsu1.cfg" #bezelscript' /opt/retropie/configs/snesmsu1/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/snesmsu1/retroarch.cfg
 else
  cp /opt/retropie/configs/snesmsu1/retroarch.cfg /opt/retropie/configs/snesmsu1/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/snesmsu1.cfg" #bezelscript' /opt/retropie/configs/snesmsu1/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/snesmsu1/retroarch.cfg
 fi
 ;;
sufami)
 ifexist=`cat /opt/retropie/configs/sufami/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/sufami/retroarch.cfg /opt/retropie/configs/sufami/retroarch.cfg.bkp
  cat /opt/retropie/configs/sufami/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/sufami/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sufami.cfg" #bezelscript' /opt/retropie/configs/sufami/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sufami/retroarch.cfg
 else
  cp /opt/retropie/configs/sufami/retroarch.cfg /opt/retropie/configs/sufami/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/sufami.cfg" #bezelscript' /opt/retropie/configs/sufami/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/sufami/retroarch.cfg
 fi
 ;;
supergrafx)
 ifexist=`cat /opt/retropie/configs/supergrafx/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/supergrafx/retroarch.cfg /opt/retropie/configs/supergrafx/retroarch.cfg.bkp
  cat /opt/retropie/configs/supergrafx/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/supergrafx/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/supergrafx.cfg" #bezelscript' /opt/retropie/configs/supergrafx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/supergrafx/retroarch.cfg
 else
  cp /opt/retropie/configs/supergrafx/retroarch.cfg /opt/retropie/configs/supergrafx/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/supergrafx.cfg" #bezelscript' /opt/retropie/configs/supergrafx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/supergrafx/retroarch.cfg
 fi
 ;;
tg16)
 ifexist=`cat /opt/retropie/configs/tg16/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/tg16/retroarch.cfg /opt/retropie/configs/tg16/retroarch.cfg.bkp
  cat /opt/retropie/configs/tg16/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/tg16/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/tg16.cfg" #bezelscript' /opt/retropie/configs/tg16/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/tg16/retroarch.cfg
 else
  cp /opt/retropie/configs/tg16/retroarch.cfg /opt/retropie/configs/tg16/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/tg16.cfg" #bezelscript' /opt/retropie/configs/tg16/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/tg16/retroarch.cfg
 fi
 ;;
tg-cd)
 ifexist=`cat /opt/retropie/configs/tg-cd/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/tg-cd/retroarch.cfg /opt/retropie/configs/tg-cd/retroarch.cfg.bkp
  cat /opt/retropie/configs/tg-cd/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/tg-cd/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/tg-cd.cfg" #bezelscript' /opt/retropie/configs/tg-cd/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/tg-cd/retroarch.cfg
 else
  cp /opt/retropie/configs/tg-cd/retroarch.cfg /opt/retropie/configs/tg-cd/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/tg-cd.cfg" #bezelscript' /opt/retropie/configs/tg-cd/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/tg-cd/retroarch.cfg
 fi
 ;;
ti99)
 ifexist=`cat /opt/retropie/configs/ti99/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/ti99/retroarch.cfg /opt/retropie/configs/ti99/retroarch.cfg.bkp
  cat /opt/retropie/configs/ti99/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/ti99/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ti99.cfg" #bezelscript' /opt/retropie/configs/ti99/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ti99/retroarch.cfg
 else
  cp /opt/retropie/configs/ti99/retroarch.cfg /opt/retropie/configs/ti99/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ti99.cfg" #bezelscript' /opt/retropie/configs/ti99/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ti99/retroarch.cfg
 fi
 ;;
trs-80)
 ifexist=`cat /opt/retropie/configs/trs-80/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/trs-80/retroarch.cfg /opt/retropie/configs/trs-80/retroarch.cfg.bkp
  cat /opt/retropie/configs/trs-80/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/trs-80/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/trs-80.cfg" #bezelscript' /opt/retropie/configs/trs-80/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/trs-80/retroarch.cfg
 else
  cp /opt/retropie/configs/trs-80/retroarch.cfg /opt/retropie/configs/trs-80/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/trs-80.cfg" #bezelscript' /opt/retropie/configs/trs-80/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/trs-80/retroarch.cfg
 fi
 ;;
vectrex)
 ifexist=`cat /opt/retropie/configs/vectrex/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/vectrex/retroarch.cfg /opt/retropie/configs/vectrex/retroarch.cfg.bkp
  cat /opt/retropie/configs/vectrex/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/vectrex/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/vectrex.cfg" #bezelscript' /opt/retropie/configs/vectrex/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/vectrex/retroarch.cfg
 else
  cp /opt/retropie/configs/vectrex/retroarch.cfg /opt/retropie/configs/vectrex/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/vectrex.cfg" #bezelscript' /opt/retropie/configs/vectrex/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/vectrex/retroarch.cfg
 fi
 ;;
vic20)
 ifexist=`cat /opt/retropie/configs/vic20/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/vic20/retroarch.cfg /opt/retropie/configs/vic20/retroarch.cfg.bkp
  cat /opt/retropie/configs/vic20/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/vic20/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/vic20.cfg" #bezelscript' /opt/retropie/configs/vic20/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/vic20/retroarch.cfg
 else
  cp /opt/retropie/configs/vic20/retroarch.cfg /opt/retropie/configs/vic20/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/vic20.cfg" #bezelscript' /opt/retropie/configs/vic20/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/vic20/retroarch.cfg
 fi
 ;;
videopac)
 ifexist=`cat /opt/retropie/configs/videopac/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/videopac/retroarch.cfg /opt/retropie/configs/videopac/retroarch.cfg.bkp
  cat /opt/retropie/configs/videopac/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/videopac/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/videopac.cfg" #bezelscript' /opt/retropie/configs/videopac/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/videopac/retroarch.cfg
 else
  cp /opt/retropie/configs/videopac/retroarch.cfg /opt/retropie/configs/videopac/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/videopac.cfg" #bezelscript' /opt/retropie/configs/videopac/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/videopac/retroarch.cfg
 fi
 ;;
x1)
 ifexist=`cat /opt/retropie/configs/x1/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/x1/retroarch.cfg /opt/retropie/configs/x1/retroarch.cfg.bkp
  cat /opt/retropie/configs/x1/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/x1/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/x1.cfg" #bezelscript' /opt/retropie/configs/x1/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/x1/retroarch.cfg
 else
  cp /opt/retropie/configs/x1/retroarch.cfg /opt/retropie/configs/x1/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/x1.cfg" #bezelscript' /opt/retropie/configs/x1/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/x1/retroarch.cfg
 fi
 ;;
x68000)
 ifexist=`cat /opt/retropie/configs/x68000/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/x68000/retroarch.cfg /opt/retropie/configs/x68000/retroarch.cfg.bkp
  cat /opt/retropie/configs/x68000/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/x68000/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/x68000.cfg" #bezelscript' /opt/retropie/configs/x68000/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/x68000/retroarch.cfg
 else
  cp /opt/retropie/configs/x68000/retroarch.cfg /opt/retropie/configs/x68000/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/x68000.cfg" #bezelscript' /opt/retropie/configs/x68000/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/x68000/retroarch.cfg
 fi
 ;;
zmachine)
 ifexist=`cat /opt/retropie/configs/zmachine/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/zmachine/retroarch.cfg /opt/retropie/configs/zmachine/retroarch.cfg.bkp
  cat /opt/retropie/configs/zmachine/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/zmachine/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/zmachine.cfg" #bezelscript' /opt/retropie/configs/zmachine/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/zmachine/retroarch.cfg
 else
  cp /opt/retropie/configs/zmachine/retroarch.cfg /opt/retropie/configs/zmachine/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/zmachine.cfg" #bezelscript' /opt/retropie/configs/zmachine/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/zmachine/retroarch.cfg
 fi
 ;;
zx81)
 ifexist=`cat /opt/retropie/configs/zx81/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/zx81/retroarch.cfg /opt/retropie/configs/zx81/retroarch.cfg.bkp
  cat /opt/retropie/configs/zx81/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/zx81/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/zx81.cfg" #bezelscript' /opt/retropie/configs/zx81/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/zx81/retroarch.cfg
 else
  cp /opt/retropie/configs/zx81/retroarch.cfg /opt/retropie/configs/zx81/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/zx81.cfg" #bezelscript' /opt/retropie/configs/zx81/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/zx81/retroarch.cfg
 fi
 ;;
zxspectrum)
 ifexist=`cat /opt/retropie/configs/zxspectrum/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/zxspectrum/retroarch.cfg /opt/retropie/configs/zxspectrum/retroarch.cfg.bkp
  cat /opt/retropie/configs/zxspectrum/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/zxspectrum/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/zxspectrum.cfg" #bezelscript' /opt/retropie/configs/zxspectrum/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/zxspectrum/retroarch.cfg
 else
  cp /opt/retropie/configs/zxspectrum/retroarch.cfg /opt/retropie/configs/zxspectrum/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/zxspectrum.cfg" #bezelscript' /opt/retropie/configs/zxspectrum/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/zxspectrum/retroarch.cfg
 fi
 ;;
atarilynx_1080)
 ifexist=`cat /opt/retropie/configs/atarilynx/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atarilynx/retroarch.cfg /opt/retropie/configs/atarilynx/retroarch.cfg.bkp
  cat /opt/retropie/configs/atarilynx/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarilynx_horizontal1080.cfg" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '5i custom_viewport_width = "1120" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '6i custom_viewport_height = "714" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '7i custom_viewport_x = "400" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '8i custom_viewport_y = "190" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
 else
  cp /opt/retropie/configs/atarilynx/retroarch.cfg /opt/retropie/configs/atarilynx/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarilynx_horizontal1080.cfg" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '5i custom_viewport_width = "1120" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '6i custom_viewport_height = "714" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '7i custom_viewport_x = "400" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '8i custom_viewport_y = "190" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
 fi
 ;;
atarilynx_720)
 ifexist=`cat /opt/retropie/configs/atarilynx/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/atarilynx/retroarch.cfg /opt/retropie/configs/atarilynx/retroarch.cfg.bkp
  cat /opt/retropie/configs/atarilynx/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarilynx_horizontal720.cfg" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '6i custom_viewport_height = "510" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '7i custom_viewport_x = "238" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '8i custom_viewport_y = "108" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
 else
  cp /opt/retropie/configs/atarilynx/retroarch.cfg /opt/retropie/configs/atarilynx/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/atarilynx_horizontal720.cfg" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '6i custom_viewport_height = "510" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '7i custom_viewport_x = "238" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
  sed -i '8i custom_viewport_y = "108" #bezelscript' /opt/retropie/configs/atarilynx/retroarch.cfg
 fi
 ;;
gamegear_1080)
 ifexist=`cat /opt/retropie/configs/gamegear/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gamegear/retroarch.cfg /opt/retropie/configs/gamegear/retroarch.cfg.bkp
  cat /opt/retropie/configs/gamegear/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gamegear1080.cfg" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '6i custom_viewport_height = "864" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '7i custom_viewport_x = "485" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '8i custom_viewport_y = "110" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
 else
  cp /opt/retropie/configs/gamegear/retroarch.cfg /opt/retropie/configs/gamegear/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gamegear1080.cfg" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '6i custom_viewport_height = "864" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '7i custom_viewport_x = "485" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '8i custom_viewport_y = "110" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
 fi
 ;;
gamegear_720)
 ifexist=`cat /opt/retropie/configs/gamegear/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gamegear/retroarch.cfg /opt/retropie/configs/gamegear/retroarch.cfg.bkp
  cat /opt/retropie/configs/gamegear/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gamegear720.cfg" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '7i custom_viewport_x = "320" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
 else
  cp /opt/retropie/configs/gamegear/retroarch.cfg /opt/retropie/configs/gamegear/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gamegear720.cfg" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '7i custom_viewport_x = "320" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gamegear/retroarch.cfg
 fi
 ;;
gb_1080)
 ifexist=`cat /opt/retropie/configs/gb/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gb/retroarch.cfg /opt/retropie/configs/gb/retroarch.cfg.bkp
  cat /opt/retropie/configs/gb/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gb/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb1080.cfg" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '7i custom_viewport_x = "560" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '8i custom_viewport_y = "180" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
 else
  cp /opt/retropie/configs/gb/retroarch.cfg /opt/retropie/configs/gb/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb1080.cfg" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '7i custom_viewport_x = "560" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '8i custom_viewport_y = "180" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
 fi
 ;;
gb_720)
 ifexist=`cat /opt/retropie/configs/gb/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gb/retroarch.cfg /opt/retropie/configs/gb/retroarch.cfg.bkp
  cat /opt/retropie/configs/gb/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gb/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb720.cfg" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '7i custom_viewport_x = "325" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
 else
  cp /opt/retropie/configs/gb/retroarch.cfg /opt/retropie/configs/gb/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb720.cfg" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '7i custom_viewport_x = "325" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gb/retroarch.cfg
 fi
 ;;
gba_1080)
 ifexist=`cat /opt/retropie/configs/gba/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gba/retroarch.cfg /opt/retropie/configs/gba/retroarch.cfg.bkp
  cat /opt/retropie/configs/gba/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gba/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba1080.cfg" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '6i custom_viewport_height = "640" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '7i custom_viewport_x = "475" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '8i custom_viewport_y = "220" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
 else
  cp /opt/retropie/configs/gba/retroarch.cfg /opt/retropie/configs/gba/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba1080.cfg" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '6i custom_viewport_height = "640" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '7i custom_viewport_x = "475" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '8i custom_viewport_y = "220" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
 fi
 ;;
gba_720)
 ifexist=`cat /opt/retropie/configs/gba/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gba/retroarch.cfg /opt/retropie/configs/gba/retroarch.cfg.bkp
  cat /opt/retropie/configs/gba/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gba/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba720.cfg" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '5i custom_viewport_width = "720" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '6i custom_viewport_height = "480" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '7i custom_viewport_x = "275" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '8i custom_viewport_y = "125" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
 else
  cp /opt/retropie/configs/gba/retroarch.cfg /opt/retropie/configs/gba/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba720.cfg" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '5i custom_viewport_width = "720" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '6i custom_viewport_height = "480" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '7i custom_viewport_x = "275" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
  sed -i '8i custom_viewport_y = "125" #bezelscript' /opt/retropie/configs/gba/retroarch.cfg
 fi
 ;;
gbah_1080)
 ifexist=`cat /opt/retropie/configs/gbah/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gbah/retroarch.cfg /opt/retropie/configs/gbah/retroarch.cfg.bkp
  cat /opt/retropie/configs/gbah/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba1080.cfg" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '6i custom_viewport_height = "640" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '7i custom_viewport_x = "475" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '8i custom_viewport_y = "220" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
 else
  cp /opt/retropie/configs/gbah/retroarch.cfg /opt/retropie/configs/gbah/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba1080.cfg" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '6i custom_viewport_height = "640" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '7i custom_viewport_x = "475" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '8i custom_viewport_y = "220" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
 fi
 ;;
gbah_720)
 ifexist=`cat /opt/retropie/configs/gbah/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gbah/retroarch.cfg /opt/retropie/configs/gbah/retroarch.cfg.bkp
  cat /opt/retropie/configs/gbah/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba720.cfg" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '5i custom_viewport_width = "720" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '6i custom_viewport_height = "480" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '7i custom_viewport_x = "275" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '8i custom_viewport_y = "125" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
 else
  cp /opt/retropie/configs/gbah/retroarch.cfg /opt/retropie/configs/gbah/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gba720.cfg" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '5i custom_viewport_width = "720" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '6i custom_viewport_height = "480" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '7i custom_viewport_x = "275" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
  sed -i '8i custom_viewport_y = "125" #bezelscript' /opt/retropie/configs/gbah/retroarch.cfg
 fi
 ;;
gbc_1080)
 ifexist=`cat /opt/retropie/configs/gbc/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gbc/retroarch.cfg /opt/retropie/configs/gbc/retroarch.cfg.bkp
  cat /opt/retropie/configs/gbc/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gbc1080.cfg" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '7i custom_viewport_x = "560" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '8i custom_viewport_y = "180" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
 else
  cp /opt/retropie/configs/gbc/retroarch.cfg /opt/retropie/configs/gbc/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gbc1080.cfg" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '7i custom_viewport_x = "560" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '8i custom_viewport_y = "180" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
 fi
 ;;
gbc_720)
 ifexist=`cat /opt/retropie/configs/gbc/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gbc/retroarch.cfg /opt/retropie/configs/gbc/retroarch.cfg.bkp
  cat /opt/retropie/configs/gbc/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gbc720.cfg" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '7i custom_viewport_x = "325" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
 else
  cp /opt/retropie/configs/gbc/retroarch.cfg /opt/retropie/configs/gbc/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gbc720.cfg" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '7i custom_viewport_x = "325" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gbc/retroarch.cfg
 fi
 ;;
gbh_1080)
 ifexist=`cat /opt/retropie/configs/gbh/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gbh/retroarch.cfg /opt/retropie/configs/gbh/retroarch.cfg.bkp
  cat /opt/retropie/configs/gbh/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb1080.cfg" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '7i custom_viewport_x = "560" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '8i custom_viewport_y = "180" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
 else
  cp /opt/retropie/configs/gbh/retroarch.cfg /opt/retropie/configs/gbh/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb1080.cfg" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '5i custom_viewport_width = "800" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '7i custom_viewport_x = "560" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '8i custom_viewport_y = "180" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
 fi
 ;;
gbh_720)
 ifexist=`cat /opt/retropie/configs/gbh/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/gbh/retroarch.cfg /opt/retropie/configs/gbh/retroarch.cfg.bkp
  cat /opt/retropie/configs/gbh/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb720.cfg" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '7i custom_viewport_x = "325" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
 else
  cp /opt/retropie/configs/gbh/retroarch.cfg /opt/retropie/configs/gbh/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb720.cfg" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '6i custom_viewport_height = "576" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '7i custom_viewport_x = "325" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
  sed -i '8i custom_viewport_y = "70" #bezelscript' /opt/retropie/configs/gbh/retroarch.cfg
 fi
 ;;
ggh)
 ifexist=`cat /opt/retropie/configs/ggh/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/ggh/retroarch.cfg /opt/retropie/configs/ggh/retroarch.cfg.bkp
  cat /opt/retropie/configs/ggh/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gamegear1080.cfg" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '6i custom_viewport_height = "864" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '7i custom_viewport_x = "485" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '8i custom_viewport_y = "110" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
 else
  cp /opt/retropie/configs/ggh/retroarch.cfg /opt/retropie/configs/ggh/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gamegear1080.cfg" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '6i custom_viewport_height = "864" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '7i custom_viewport_x = "485" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
  sed -i '8i custom_viewport_y = "110" #bezelscript' /opt/retropie/configs/ggh/retroarch.cfg
 fi
 ;;
ngp_1080)
 ifexist=`cat /opt/retropie/configs/ngp/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/ngp/retroarch.cfg /opt/retropie/configs/ngp/retroarch.cfg.bkp
  cat /opt/retropie/configs/ngp/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngp1080.cfg" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '6i custom_viewport_height = "912" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '7i custom_viewport_x = "480" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '8i custom_viewport_y = "85" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
 else
  cp /opt/retropie/configs/ngp/retroarch.cfg /opt/retropie/configs/ngp/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngp1080.cfg" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '6i custom_viewport_height = "912" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '7i custom_viewport_x = "480" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '8i custom_viewport_y = "85" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
 fi
 ;;
ngp_720)
 ifexist=`cat /opt/retropie/configs/ngp/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/ngp/retroarch.cfg /opt/retropie/configs/ngp/retroarch.cfg.bkp
  cat /opt/retropie/configs/ngp/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngp720.cfg" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '6i custom_viewport_height = "608" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '7i custom_viewport_x = "320" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '8i custom_viewport_y = "55" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
 else
  cp /opt/retropie/configs/ngp/retroarch.cfg /opt/retropie/configs/ngp/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngp720.cfg" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '6i custom_viewport_height = "608" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '7i custom_viewport_x = "320" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
  sed -i '8i custom_viewport_y = "55" #bezelscript' /opt/retropie/configs/ngp/retroarch.cfg
 fi
 ;;
ngpc_1080)
 ifexist=`cat /opt/retropie/configs/ngpc/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/ngpc/retroarch.cfg /opt/retropie/configs/ngpc/retroarch.cfg.bkp
  cat /opt/retropie/configs/ngpc/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngpc1080.cfg" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '6i custom_viewport_height = "912" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '7i custom_viewport_x = "480" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '8i custom_viewport_y = "85" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
 else
  cp /opt/retropie/configs/ngpc/retroarch.cfg /opt/retropie/configs/ngpc/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngpc1080.cfg" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '6i custom_viewport_height = "912" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '7i custom_viewport_x = "480" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg 
  sed -i '8i custom_viewport_y = "85" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
 fi
 ;;
ngpc_720)
 ifexist=`cat /opt/retropie/configs/ngpc/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/ngpc/retroarch.cfg /opt/retropie/configs/ngpc/retroarch.cfg.bkp
  cat /opt/retropie/configs/ngpc/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngpc720.cfg" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '6i custom_viewport_height = "608" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '7i custom_viewport_x = "320" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '8i custom_viewport_y = "55" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
 else
  cp /opt/retropie/configs/ngpc/retroarch.cfg /opt/retropie/configs/ngpc/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/ngpc720.cfg" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '5i custom_viewport_width = "640" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '6i custom_viewport_height = "608" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '7i custom_viewport_x = "320" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
  sed -i '8i custom_viewport_y = "55" #bezelscript' /opt/retropie/configs/ngpc/retroarch.cfg
 fi
 ;;
psp_1080)
 ifexist=`cat /opt/retropie/configs/psp/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/psp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg.bkp
  cat /opt/retropie/configs/psp/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psp1080.cfg" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '5i custom_viewport_width = "1440" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '6i custom_viewport_height = "816" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '7i custom_viewport_x = "235" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '8i custom_viewport_y = "137" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
 else
  cp /opt/retropie/configs/psp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psp1080.cfg" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '5i custom_viewport_width = "1440" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '6i custom_viewport_height = "816" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '7i custom_viewport_x = "235" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '8i custom_viewport_y = "137" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
 fi
 ;;
psp_720)
 ifexist=`cat /opt/retropie/configs/psp/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/psp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg.bkp
  cat /opt/retropie/configs/psp/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psp720.cfg" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '6i custom_viewport_height = "544" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '7i custom_viewport_x = "160" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '8i custom_viewport_y = "92" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
 else
  cp /opt/retropie/configs/psp/retroarch.cfg /opt/retropie/configs/psp/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/psp720.cfg" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '6i custom_viewport_height = "544" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '7i custom_viewport_x = "160" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
  sed -i '8i custom_viewport_y = "92" #bezelscript' /opt/retropie/configs/psp/retroarch.cfg
 fi
 ;;
pspminis_1080)
 ifexist=`cat /opt/retropie/configs/pspminis/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pspminis/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg.bkp
  cat /opt/retropie/configs/pspminis/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pspminis1080.cfg" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '5i custom_viewport_width = "1440" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '6i custom_viewport_height = "816" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '7i custom_viewport_x = "235" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '8i custom_viewport_y = "137" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
 else
  cp /opt/retropie/configs/pspminis/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pspminis1080.cfg" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '5i custom_viewport_width = "1440" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '6i custom_viewport_height = "816" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '7i custom_viewport_x = "235" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '8i custom_viewport_y = "137" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
 fi
 ;;
pspminis_720)
 ifexist=`cat /opt/retropie/configs/pspminis/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/pspminis/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg.bkp
  cat /opt/retropie/configs/pspminis/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pspminis720.cfg" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '6i custom_viewport_height = "544" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '7i custom_viewport_x = "160" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '8i custom_viewport_y = "92" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
 else
  cp /opt/retropie/configs/pspminis/retroarch.cfg /opt/retropie/configs/pspminis/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/pspminis720.cfg" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '5i custom_viewport_width = "960" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '6i custom_viewport_height = "544" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '7i custom_viewport_x = "160" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
  sed -i '8i custom_viewport_y = "92" #bezelscript' /opt/retropie/configs/pspminis/retroarch.cfg
 fi
 ;;
virtualboy_1080)
 ifexist=`cat /opt/retropie/configs/virtualboy/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/virtualboy/retroarch.cfg /opt/retropie/configs/virtualboy/retroarch.cfg.bkp
  cat /opt/retropie/configs/virtualboy/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/virtualboy1080.cfg" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '5i custom_viewport_width = "1152" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '6i custom_viewport_height = "672" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '7i custom_viewport_x = "380" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '8i custom_viewport_y = "200" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
 else
  cp /opt/retropie/configs/virtualboy/retroarch.cfg /opt/retropie/configs/virtualboy/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/virtualboy1080.cfg" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '5i custom_viewport_width = "1152" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '6i custom_viewport_height = "672" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '7i custom_viewport_x = "380" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '8i custom_viewport_y = "200" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
 fi
 ;;
virtualboy_720)
 ifexist=`cat /opt/retropie/configs/virtualboy/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/virtualboy/retroarch.cfg /opt/retropie/configs/virtualboy/retroarch.cfg.bkp
  cat /opt/retropie/configs/virtualboy/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/virtualboy720.cfg" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '5i custom_viewport_width = "775" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '6i custom_viewport_height = "460" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '7i custom_viewport_x = "250" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '8i custom_viewport_y = "130" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
 else
  cp /opt/retropie/configs/virtualboy/retroarch.cfg /opt/retropie/configs/virtualboy/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/virtualboy720.cfg" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '5i custom_viewport_width = "775" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '6i custom_viewport_height = "460" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '7i custom_viewport_x = "250" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
  sed -i '8i custom_viewport_y = "130" #bezelscript' /opt/retropie/configs/virtualboy/retroarch.cfg
 fi
 ;;
wonderswan_1080)
 ifexist=`cat /opt/retropie/configs/wonderswan/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/wonderswan/retroarch.cfg /opt/retropie/configs/wonderswan/retroarch.cfg.bkp
  cat /opt/retropie/configs/wonderswan/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswan_horizontal1080.cfg" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '5i custom_viewport_width = "1120" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '7i custom_viewport_x = "400" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '8i custom_viewport_y = "185" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
 else
  cp /opt/retropie/configs/wonderswan/retroarch.cfg /opt/retropie/configs/wonderswan/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswan_horizontal1080.cfg" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '5i custom_viewport_width = "1120" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '7i custom_viewport_x = "400" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '8i custom_viewport_y = "185" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
 fi
 ;;
wonderswan_720)
 ifexist=`cat /opt/retropie/configs/wonderswan/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/wonderswan/retroarch.cfg /opt/retropie/configs/wonderswan/retroarch.cfg.bkp
  cat /opt/retropie/configs/wonderswan/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswan_horizontal720.cfg" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '5i custom_viewport_width = "672" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '6i custom_viewport_height = "432" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '7i custom_viewport_x = "305" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '8i custom_viewport_y = "143" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
 else
  cp /opt/retropie/configs/wonderswan/retroarch.cfg /opt/retropie/configs/wonderswan/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswan_horizontal720.cfg" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '5i custom_viewport_width = "672" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '6i custom_viewport_height = "432" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '7i custom_viewport_x = "305" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
  sed -i '8i custom_viewport_y = "143" #bezelscript' /opt/retropie/configs/wonderswan/retroarch.cfg
 fi
 ;;
wonderswancolor_1080)
 ifexist=`cat /opt/retropie/configs/wonderswancolor/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/wonderswancolor/retroarch.cfg /opt/retropie/configs/wonderswancolor/retroarch.cfg.bkp
  cat /opt/retropie/configs/wonderswancolor/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswancolor_horizontal1080.cfg" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '5i custom_viewport_width = "1120" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '7i custom_viewport_x = "400" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '8i custom_viewport_y = "185" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
 else
  cp /opt/retropie/configs/wonderswancolor/retroarch.cfg /opt/retropie/configs/wonderswancolor/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswancolor_horizontal1080.cfg" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '5i custom_viewport_width = "1120" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '6i custom_viewport_height = "720" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '7i custom_viewport_x = "400" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '8i custom_viewport_y = "185" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
 fi
 ;;
wonderswancolor_720)
 ifexist=`cat /opt/retropie/configs/wonderswancolor/retroarch.cfg |grep "#bezelscript" |wc -l`
 if [[ ${ifexist} > 0 ]]
 then
  cp /opt/retropie/configs/wonderswancolor/retroarch.cfg /opt/retropie/configs/wonderswancolor/retroarch.cfg.bkp
  cat /opt/retropie/configs/wonderswancolor/retroarch.cfg |grep -v "#bezelscript" > /tmp/retroarch.cfg
  cp /tmp/retroarch.cfg /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswancolor_horizontal720.cfg" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '5i custom_viewport_width = "672" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '6i custom_viewport_height = "432" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '7i custom_viewport_x = "305" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '8i custom_viewport_y = "143" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
 else
  cp /opt/retropie/configs/wonderswancolor/retroarch.cfg /opt/retropie/configs/wonderswancolor/retroarch.cfg.bkp
  sed -i '2i input_overlay = "/opt/retropie/configs/all/retroarch/overlay/wonderswancolor_horizontal720.cfg" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '3i input_overlay_opacity = "1.000000" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '4i aspect_ratio_index = "22" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '5i custom_viewport_width = "672" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '6i custom_viewport_height = "432" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '7i custom_viewport_x = "305" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
  sed -i '8i custom_viewport_y = "143" #bezelscript' /opt/retropie/configs/wonderswancolor/retroarch.cfg
 fi
 ;;
esac
}

# Main

main_menu
