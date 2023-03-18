#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

rpi_model=$(tr -d '\0' 2>/dev/null < /proc/device-tree/model) 
joy2key=/opt/retropie/admin/joy2key/joy2key

# Applies to PieMarquee Script - PieMarquee2 = ON PieMarquee3 = OFF
if [[ ! -d /home/pi/PieMarquee3 ]] && [[ -d /home/pi/PieMarquee2 ]]; then
    $joy2key start
    dialog --title "NOTICE" --msgbox "The marquee script is ON\n\nThis application can NOT run with it on!\n\nPlease turn the marquee script OFF and try again." 10 50
	$joy2key stop
    clear
    exit 0
fi

# Only applies to RPI Zero2
if [[ "$rpi_model" == "Raspberry Pi Zero 2"* ]]; then
        $joy2key start
	if (dialog --title "WARNING" --yesno "Looks like your on the PI ZERO!\n\nChromium is unstable and freezes.\n\nWould you like to hide chromium from the menus?" 10 50 ); then
		sleep 4
		mv '/home/pi/RetroPie/roms/ports/Chromium - Open Source Web Browser.sh' '/home/pi/RetroPie/roms/ports/Chromium - Open Source Web Browser.sh.bk' 2>/dev/null
		mv /home/pi/RetroPie/roms/chromium/Chromium.sh /home/pi/RetroPie/roms/chromium/Chromium.sh.bk 2>/dev/null
		dialog --msgbox "Finished!\n\nChromium will now not show in the menus.\n\nPlease note:\nTo bring them back if you swap to a diffrent pi use the fix my build script.\n\nRESTART Emulationstation to APPLY Changes... " 15 50		
		$joy2key stop
		#sudo shutdown -r now
		clear
		exit 0
	else
		if (dialog --title "Are you SURE?" --yesno "NO? OK...\n\nContinue to load chromium?\n\nIf chromium freezes please reboot your pi!" 10 50); then
		$joy2key stop
		clear
		else
		$joy2key stop
		clear
		exit 0
		fi
	fi 
fi

"/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _PORT_ "chromium" ""
	