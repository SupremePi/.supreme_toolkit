#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

################
#SUPREME ONLINE#
################

INTERNET_STATUS="UNKNOWN"
TIMESTAMP=`date +%s`

    ping -c 1 -W 0.7 8.8.4.4 > /dev/null 2>&1
    if [ $? -eq 0 ] ; then
        if [ "$INTERNET_STATUS" != "UP" ]; then

    if [ ! -d /home/pi/.supreme_toolkit ]; then
        echo "OH NO THE TOOLKIT IS MISSING!!! WE WILL TRY AND DOWNLOAD NEW ONE NOW"
        sleep 3
	cd /home/pi/
        git clone https://github.com/SupremePi/.supreme_toolkit.git
	clear
	cd $HOME/.supreme_toolkit
	chmod 755 ./
	echo "Will Now Reboot To Save Changes"
	sleep 3 
	sudo reboot
        fi
            curl -sSL https://raw.githubusercontent.com/SupremePi/.supreme_online/main/supreme_online_menu.sh | bash;
            INTERNET_STATUS="UP"
            sleep 5
            clear
        fi
    else
        #if [ "$INTERNET_STATUS" = "UP" ]; then
            echo "THE SUPREME ONLINE TOOLKIT REQUIRES A INTERNET CONECTION!"
            echo ""
            echo "NO INTERNET CONECTION FOUND AS OF: `date +%Y-%m-%dT%H:%M:%S%Z` $((`date +%s`-$TIMESTAMP))";
            sleep 5
            INTERNET_STATUS="DOWN"
            clear
        #fi
    fi

sleep 1
