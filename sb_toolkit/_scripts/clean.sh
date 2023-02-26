#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/
# clean up script

rm /opt/retropie/configs/all/emulationstation/es_log.txt
rm /opt/retropie/configs/all/emulationstation/es_log.txt.bak
rm /home/pi/.attract/attract.am
rm /home/pi/RetroPie-Setup/logs/rps*.gz
sudo apt-get clean
history -c
clear
echo done
sleep 2
