#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

joy2key=/opt/retropie/admin/joy2key/joy2key

# Applies to PieMarquee Script - PieMarquee2 = ON PieMarquee3 = OFF
if [[ ! -d /home/pi/PieMarquee3 ]] && [[ -d /home/pi/PieMarquee2 ]]; then
    $joy2key start
    dialog --title "NOTICE" --msgbox "The marquee script is ON\n\nThis application can NOT run with it on!\n\nPlease turn the marquee script OFF and try again." 10 50
	$joy2key stop
    clear
    exit 0
fi

/opt/retropie/supplementary/runcommand/runcommand.sh 0 _PORT_ lutris 
