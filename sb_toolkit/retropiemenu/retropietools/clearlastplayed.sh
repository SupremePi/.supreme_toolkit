#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

dialog --backtitle "Clean the lastplayed section and counter" --title " !!!!Information!!!! " \
--infobox "
 
 
                Now Loading!!
In the following Menu you can Delete the list of:
Last played games (lastplayed) and the counter" 17 55
sleep 5
INPUT=/tmp/played.sh.$$
dialog --backtitle "Last played" \
--title "Cleaning last played and counter" \
--default-item 3 \
--ok-label Apply \
--cancel-label Exit \
--menu " Select the path where you have your gamelist.xml files (up / down) press A to accept: " 17 55 4 \
   1 "Location home/pi/RetroPie/roms"\
   2 "Location opt/retropie/configs"\
   3 "Execute both 1 and 2"\
   4 "Clear and exit" 2>"${INPUT}"
menuitem=$(<"${INPUT}")
case $menuitem in
  1) #roms
sudo killall emulationstatio
for f in /home/pi/RetroPie/roms/**/gamelist.xml
do
echo "file: $f"
grep -e lastplayed -e playcount -v $f > "$f.tmp"
mv -f "$f.tmp" $f
done
echo "Made changes in roms**"
for f in /home/pi/RetroPie/roms/ports/**/gamelist.xml
do
echo "file: $f"
grep -e lastplayed -e playcount -v $f > "$f.tmp"
mv -f "$f.tmp" $f
done
echo "Made changes in ports"
sleep 2 ;
    dialog --infobox "
 
 
 
                Accomplished!!!!
    
 
 
  This message will be closed in 3 seconds 
                    and
          Then system will restart" 17 55 ;
sleep 3 ;
sudo reboot ;
exit;;
  2) #opt
sudo killall emulationstatio
for f in /opt/retropie/configs/all/emulationstation/gamelists/**/gamelist.xml
do
echo "file: $f"
grep -e lastplayed -e playcount -v $f > "$f.tmp"
mv -f "$f.tmp" $f
done
sleep 2;
    dialog --infobox "
 
 
 
               Accomplished!!!!
 
 
  This message will be closed in 3 seconds
                    and
          Then system will restart" 17 55 ;
sleep 3 ;
sudo reboot ;
exit;;
  3) #1y2
sudo killall emulationstatio
for f in /home/pi/RetroPie/roms/**/gamelist.xml
do
echo "file: $f"
grep -e lastplayed -e playcount -v $f > "$f.tmp"
mv -f "$f.tmp" $f
done
echo "Accomplished en home /home/pi/RetroPie/roms/**/gamelist.xml"
sleep 2
for f in /opt/retropie/configs/all/emulationstation/gamelists/**/gamelist.xml
do
echo "file: $f"
grep -e lastplayed -e playcount -v $f > "$f.tmp"
mv -f "$f.tmp" $f
done
echo "Accomplished in opt /opt/retropie/configs/all/emulationstation/gamelists/**/gamelist.xml"
sleep 2
for f in /home/pi/RetroPie/roms/ports/**/gamelist.xml
do
echo "file: $f"
grep -e lastplayed -e playcount -v $f > "$f.tmp"
mv -f "$f.tmp" $f
done
echo "Accomplished in ports"
sleep 2;
    dialog --infobox "
 
 
 
               Accomplished!!!!
 
 
  This message will be closed in 3 seconds
                    and
          Then system will restart" 17 55 ;
sleep 3 ;
sudo reboot ;
exit;;
  4) clear; exit 0;;
esac
