#!/bin/bash
    if [ ! -d /home/pi/PieMarquee3 ]; then
    echo "$(tput setaf 6)
    The marquee script is on and this application cant run with it on please turn it off and try again.
    $(tput sgr0)"
    sleep 5
    clear
    else
    /opt/retropie/supplementary/runcommand/runcommand.sh 0 _PORT_ lxde 
fi
