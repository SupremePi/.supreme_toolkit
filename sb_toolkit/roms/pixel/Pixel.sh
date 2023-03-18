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
    if (dialog --title "WARNING" --yesno "Looks like your on the PI ZERO!\n\nThe Pixel Desktop is unstable on this pi and is known to run very slow.\n\nPlease Note:\nUsing the browser on the deskop is known to crash the desktop and a reboot will be needed.\n\nWould you like to continue anyway?" 15 50 )                 
       then
       $joy2key stop
       clear	   
	   "/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _PORT_ "lxde" ""
	else
       $joy2key stop 
       clear
	   exit 0
	fi 
fi

"/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _PORT_ "lxde" ""	
