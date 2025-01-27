#!/bin/bash
# https://github.com/RapidEdwin08
# https://github.com/SupremePi
# No PS2 Emulator cacheDIR

ps2EMU=???
cacheDIR='NO PS2 Cache Found!'

# Detect AetherSX2 or PCSX2 cache locations
if [ -d ~/.config/aethersx2/cache ]; then cacheDIR=~/.config/aethersx2/cache; ps2EMU=AetherSX2; fi
if [ -d /opt/retropie/configs/ps2/Config/cache ]; then cacheDIR=/opt/retropie/configs/ps2/Config/cache; ps2EMU=AetherSX2; fi
if [ -d ~/.config/PCSX2/cache ]; then cacheDIR=~/.config/PCSX2/cache; ps2EMU=PCSX2; fi

bootLOGO=$(
echo '


           ##############         #######  ###############  
                        #         #                      #  
           ##############         #        ###############  
           #                      #        ##               

           #               ########        ################ 
                                                                             

  # vulkan_pipelines.bin # vulkan_shaders.bin # vulkan_shaders.idx #
')

mainMENU()
{
    # Check if Auto-Clean is enabled or disabled
    CLEAN_SCRIPT_START="# Auto-Clean PS2 Cache START"
    CLEAN_SCRIPT_END="# Auto-Clean PS2 Cache END"

    if grep -q "$CLEAN_SCRIPT_START" /opt/retropie/configs/all/runcommand-onstart.sh 2>/dev/null; then
        AUTO_CLEAN_STATUS="Enabled"
    else
        AUTO_CLEAN_STATUS="Disabled"
    fi

    # Check if Mc Manager is enabled or disabled
    MC_MANAGER_START="# MC MANAGER START"
    MC_MANAGER_END="# MC MMANAGER END"	
    
    if grep -q "$MC_MANAGER_START" /opt/retropie/configs/all/runcommand-onstart.sh 2>/dev/null; then
        MC_MANAGER_STATUS="Enabled"
    else
        MC_MANAGER_STATUS="Disabled"
    fi


    # Menu Clean
    ps2CACHE=$(dialog --no-collapse --title "   CURRENT $ps2EMU Cache: [$cacheDIR]   " \
        --ok-label OK --cancel-label EXIT \
        --menu "            #  $ps2EMU Cache Cleaner & MC Manager  # $bootLOGO" 25 75 20 \
        1 "VIEW  $ps2EMU Cache " \
        2 "CLEAN $ps2EMU Vulkan Cache " \
        3 "INSTALL $ps2EMU Cache Cleaner to [runcommand-menu]" \
        4 "ENABLE/DISABLE Auto-Clean Script (Currently: $AUTO_CLEAN_STATUS)" \
        5 "ENABLE/DISABLE mcmanager Integration (Currently: $MC_MANAGER_STATUS)" \
        X "EXIT" 2>&1>/dev/tty)

    if [ ! "$ps2CACHE" == '' ]; then
        # View PS2 Cache
        if [ "$ps2CACHE" == '1' ]; then
            if [ "$cacheDIR" == 'NO $ps2EMU Cache Found!' ]; then
                dialog --no-collapse --title "   $cacheDIR   " --ok-label Back --msgbox "*NO $ps2EMU Cache Found in either of these Locations:\n$HOME/.config/aethersx2/cache \n/opt/retropie/configs/ps2/Config/cache "  25 75
                mainMENU
            fi
            dialog --no-collapse --title "   CURRENT $ps2EMU Cache: [$cacheDIR]   " --ok-label Back --msgbox "$(ls -l --block-size=MB $cacheDIR | awk '{print $5,$9}')"  25 75
            mainMENU
        fi
        # Clean PS2 Cache
        if [ "$ps2CACHE" == '2' ]; then
            if [ "$cacheDIR" == 'NO $ps2EMU Cache Found!' ]; then
                dialog --no-collapse --title "   $cacheDIR   " --ok-label Back --msgbox "*NO $ps2EMU Cache Found in either of these Locations:\n$HOME/.config/aethersx2/cache \n/opt/retropie/configs/ps2/Config/cache "  25 75
                mainMENU
            fi
            confCLEANps2=$(dialog --no-collapse --title "   CURRENT $ps2EMU Cache: [$cacheDIR]   " \
            --ok-label OK --cancel-label BACK \
            --menu "                          ? ARE YOU SURE ?                            \n DELETE: vulkan_pipelines.bin vulkan_shaders.bin vulkan_shaders.idx" 25 75 20 \
            Y " YES CLEAN $ps2EMU Vulkan Cache " \
            N " NO" 2>&1>/dev/tty)
            if [ "$confCLEANps2" == 'Y' ] && [ ! "$cacheDIR" == 'NO $ps2EMU Cache Found!' ]; then
                rm $cacheDIR/vulkan_pipelines.bin > /dev/null 2>&1
                rm $cacheDIR/vulkan_shaders.bin > /dev/null 2>&1
                rm $cacheDIR/vulkan_shaders.idx > /dev/null 2>&1
                dialog --no-collapse --title "   CLEAN [$cacheDIR] COMPLETE   " --ok-label Back --msgbox "$(ls -l --block-size=MB $cacheDIR | awk '{print $5,$9}')"  25 75
            fi
        fi
        # INSTALL PS2 Cache Cleaner to [runcommand-menu] 
        if [ "$ps2CACHE" == '3' ]; then
            if [ "$0" == '/opt/retropie/configs/all/runcommand-menu/CacheSX2Cleaner.sh' ]; then
                dialog --no-collapse --title "   ALREADY INSTALLED!   " --ok-label Back --msgbox " *You are RUNNING $ps2EMU Cache Cleaner from [runcommand-menu] NOW* $(ls /opt/retropie/configs/all/runcommand-menu)"  25 75
                mainMENU
            fi
            confRUNcmd=$(dialog --no-collapse --title "   INSTALL $ps2EMU Cache Cleaner to [runcommand-menu]   " \
            --ok-label OK --cancel-label BACK \
            --menu "                          ? ARE YOU SURE ?                            \n /opt/retropie/configs/all/runcommand-menu/CacheSX2Cleaner.sh" 25 75 20 \
            1 " INSTALL $ps2EMU Cache Cleaner  to  [runcommand-menu] " \
            2 " REMOVE  $ps2EMU Cache Cleaner from [runcommand-menu] " \
            B " BACK" 2>&1>/dev/tty)
            if [ "$confRUNcmd" == '1' ]; then
                cp "$0" /dev/shm/CacheSX2Cleaner.sh
                if [[ ! -d /opt/retropie/configs/all/runcommand-menu ]]; then mkdir /opt/retropie/configs/all/runcommand-menu; fi                
                mv /dev/shm/CacheSX2Cleaner.sh /opt/retropie/configs/all/runcommand-menu/CacheSX2Cleaner.sh
                chmod 755 /opt/retropie/configs/all/runcommand-menu/CacheSX2Cleaner.sh
                dialog --no-collapse --title "   INSTALL $ps2EMU Cache Cleaner to [runcommand-menu] COMPLETE   " --ok-label Back --msgbox "$(ls /opt/retropie/configs/all/runcommand-menu)"  25 75
            fi
            if [ "$confRUNcmd" == '2' ]; then
                rm /opt/retropie/configs/all/runcommand-menu/CacheSX2Cleaner.sh
                dialog --no-collapse --title "   REMOVE $ps2EMU Cache Cleaner from [runcommand-menu] COMPLETE   " --ok-label Back --msgbox "$(ls /opt/retropie/configs/all/runcommand-menu)"  25 75
            fi
        fi

        # ENABLE/DISABLE Auto-Clean Script
        if [ "$ps2CACHE" == '4' ]; then
            CLEAN_SCRIPT_START="# Auto-Clean PS2 Cache START"
            CLEAN_SCRIPT_END="# Auto-Clean PS2 Cache END"
            CLEAN_SCRIPT_CONTENT=$(cat <<EOF2
$CLEAN_SCRIPT_START
ps2EMU=???
cacheDIR='NO PS2 Cache Found!'
if [ -d ~/.config/aethersx2/cache ]; then cacheDIR=~/.config/aethersx2/cache; ps2EMU=AetherSX2; fi
if [ -d /opt/retropie/configs/ps2/Config/cache ]; then cacheDIR=/opt/retropie/configs/ps2/Config/cache; ps2EMU=AetherSX2; fi
if [ -d ~/.config/PCSX2/cache ]; then cacheDIR=~/.config/PCSX2/cache; ps2EMU=PCSX2; fi
if [ ! "\\\$cacheDIR" == 'NO PS2 Cache Found!' ]; then
    rm "\\\$cacheDIR/vulkan_pipelines.bin" > /dev/null 2>&1
    rm "\\\$cacheDIR/vulkan_shaders.bin" > /dev/null 2>&1
    rm "\\\$cacheDIR/vulkan_shaders.idx" > /dev/null 2>&1
fi
$CLEAN_SCRIPT_END
EOF2
)

            # Disable: Remove the script from the file
            if grep -q "$CLEAN_SCRIPT_START" /opt/retropie/configs/all/runcommand-onstart.sh 2>/dev/null; then
                sed -i "/$CLEAN_SCRIPT_START/,/$CLEAN_SCRIPT_END/d" /opt/retropie/configs/all/runcommand-onstart.sh
                dialog --no-collapse --title "   Auto-Clean Script Disabled   " --ok-label Back --msgbox "Auto-Clean PS2 Cache has been removed from runcommand-onstart.sh." 25 75
            else
                # Enable: Add the script to the file
                echo "$CLEAN_SCRIPT_CONTENT" >> /opt/retropie/configs/all/runcommand-onstart.sh
                dialog --no-collapse --title "   Auto-Clean Script Enabled   " --ok-label Back --msgbox "Auto-Clean PS2 Cache has been added to runcommand-onstart.sh." 25 75
            fi
        fi

        # ENABLE/DISABLE Mc Manager Integration
        if [ "$ps2CACHE" == '5' ]; then
        MC_MANAGER_START="# MC MANAGER START"
        MC_MANAGER_END="# MC MMANAGER END"
        MC_MANAGER_ONSTART=$(cat <<EOF3		
$MC_MANAGER_START
if [[ "\$1" == "ps2" ]]; then bash /opt/retropie/configs/ps2/mcmanager.sh onstart; fi #For Use With [mcmanager]
$MC_MANAGER_END
EOF3
)

        MC_MANAGER_ONEND=$(cat <<EOF4		
$MC_MANAGER_START
if [ "\$(head -1 /dev/shm/runcommand.info)" == "ps2" ]; then bash /opt/retropie/configs/ps2/mcmanager.sh onend; fi #For Use With [mcmanager]
$MC_MANAGER_END
EOF4
)

            # Check if the onstart integration is already in the file
            if grep -q "$MC_MANAGER_START" /opt/retropie/configs/all/runcommand-onstart.sh 2>/dev/null; then
                sed -i "/$MC_MANAGER_START/,/$MC_MANAGER_START/d" /opt/retropie/configs/all/runcommand-onstart.sh
                dialog --no-collapse --title "   Mc Manager Onstart Disabled   " --ok-label Back --msgbox "Mc Manager Onstart integration has been removed from runcommand-onstart.sh" 25 75
            else
                # Enable: Add the script to the file
                echo "$MC_MANAGER_ONSTART" >> /opt/retropie/configs/all/runcommand-onstart.sh
                dialog --no-collapse --title "   Mc Manager Onstart Enabled   " --ok-label Back --msgbox "Mc Manager Onstart integration has been added to runcommand-onstart.sh" 25 75
            fi
			
            # Check if the onend integration is already in the file
            if grep -q "$MC_MANAGER_START" /opt/retropie/configs/all/runcommand-onend.sh 2>/dev/null; then
                sed -i "/$MC_MANAGER_START/,/$MC_MANAGER_START/d" /opt/retropie/configs/all/runcommand-onend.sh
                dialog --no-collapse --title "   Mc Manager Onend Disabled   " --ok-label Back --msgbox "Mc Manager Onend integration has been removed from runcommand-onend.sh" 25 75
            else
                # Enable: Add the script to the file
                echo "$MC_MANAGER_ONEND" >> /opt/retropie/configs/all/runcommand-onend.sh
                dialog --no-collapse --title "   Mc Manager Onend Enabled   " --ok-label Back --msgbox "Mc Manager Onend integration has been added to runcommand-onend.sh" 25 75
            fi										
    fi
	fi
}

mainMENU
tput reset
exit 0
