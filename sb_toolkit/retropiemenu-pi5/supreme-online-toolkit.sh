#!/bin/bash
# The Supreme Team https://github.com/SupremePi/

################
#SUPREME ONLINE#
################

INTERNET_STATUS="UNKNOWN"
TIMESTAMP=`date +%s`

    ping -c 1 -W 0.7 8.8.4.4 > /dev/null 2>&1
    if [ $? -eq 0 ] ; then
        if [ "$INTERNET_STATUS" != "UP" ]; then
            curl -sSL https://raw.githubusercontent.com/SupremePi/.supreme_online/main/supreme_online_menu.sh | bash;
            INTERNET_STATUS="UP"
            sleep 5
            clear
	    fi	
    else
            sleep 5
            echo -e "$(tput setaf 2)Your Device Is Not Connected to the Internet? $(tput sgr0)"
            sleep 3
            INTERNET_STATUS="DOWN"
	    clear
    fi
