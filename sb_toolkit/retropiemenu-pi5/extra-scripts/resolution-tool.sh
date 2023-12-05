#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/
#IFS=';'

function main_menu() {
# check for ratio settings
if grep -q 'video=HDMI-A-1:3840x2160@60D' "/boot/firmware/cmdline.txt"; then myinfo1="Enabled"; else myinfo1="Disabled"; fi
if grep -q 'video=HDMI-A-1:1920x1080@60D' "/boot/firmware/cmdline.txt"; then myinfo2="Enabled"; else  myinfo2="Disabled"; fi
if grep -q 'video=HDMI-A-1:1280x720@60D' "//boot/firmware/cmdline.txt"; then myinfo3="Enabled"; else myinfo3="Disabled"; fi
if grep -q 'video=HDMI-A-1:720x480@60D' "/boot/firmware/cmdline.txt"; then myinfo4="Enabled"; else myinfo4="Disabled"; fi
if grep -q 'video=' "/boot/firmware/cmdline.txt"; then myratio="On"; else myratio="Off"; fi

# check for other overscan settings
if grep -q '#disable_overscan=0' "/boot/firmware/config.txt"; then sudo perl -p -i -e 's/#disable_overscan=0/#disable_overscan=1/g' /boot/firmware/config.txt; fi
if grep -q 'disable_overscan=0' "/boot/firmware/config.txt"; then sudo perl -p -i -e 's/disable_overscan=0/#disable_overscan=1/g' /boot/firmware/config.txt; fi
if grep -q '#overscan_scale=0' "/boot/firmware/config.txt"; then sudo perl -p -i -e 's/#overscan_scale=0/#overscan_scale=1/g' /boot/firmware/config.txt; fi
if grep -q 'overscan_scale=0' "/boot/firmware/config.txt"; then sudo perl -p -i -e 's/overscan_scale=0/#overscan_scale=1/g' /boot/firmware/config.txt; fi
if grep -q '#disable_overscan=1' "/boot/firmware/config.txt"; then ovscn="Enabled"; else ovscn="Disabled"; fi

    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose your Custom System Ratio Resolution:" 25 75 20 \
            1 "Set Video Ratio to 4K ( $myinfo1 )" \
			2 "Set Video Ratio to 1080P ( $myinfo2 )"\
			3 "Set Video Ratio to 720P ( $myinfo3)"\
			4 "Set Video Ratio to 480P ( $myinfo4 )"\
			5 "Turn Off All Ratio and use Auto ( $myratio )"\
			6 "Overscan ( $ovscn )"\
			7 "Open Raspi-Config ( Software Configuration Tool  )"\
            2>&1 > /dev/tty)

        case "$choice" in
            1) swap_ratio1;;
            2) swap_ratio2 ;;
            3) swap_ratio3 ;;
            4) swap_ratio4 ;;
            5) ratio_off ;;
            6) overscan_toggle ;;			
            7) sudo raspi-config ;;
            *) break ;;
        esac
    done
}

overscan_toggle() {
# check for normal overscan settings
dialog --infobox "Now Applying Your Overscan Settings!" 3 40; sleep 2;

if grep -q '#disable_overscan=1' "/boot/firmware/config.txt"; then 
sudo perl -p -i -e 's/#disable_overscan=1/disable_overscan=1/g' /boot/firmware/config.txt
sudo perl -p -i -e 's/overscan_scale=1/#overscan_scale=1/g' /boot/firmware/config.txt
dialog --infobox "Will Now Disable Overscan!" 3 30; sleep 2;
else
sudo perl -p -i -e 's/disable_overscan=1/#disable_overscan=1/g' /boot/firmware/config.txt
sudo perl -p -i -e 's/#overscan_scale=1/overscan_scale=1/g' /boot/firmware/config.txt
dialog --infobox "Will Now Enable Overscan!" 3 29; sleep 2;
fi

if (dialog --title "REBOOT?" --yesno "FINNISHED!!! Would You Like To Reboot To Save Changes? If (No) Script will Close." 0 0 )
then
sudo reboot
fi
exit
}

swap_ratio1() {
if grep -q 'video=HDMI-A-1:3840x2160@60D' "/boot/firmware/cmdline.txt"; then
dialog --infobox "4K Already Added!" 3 21; sleep 2;
else
dialog --infobox "Now Changing Your Ratio!" 3 28; sleep 2;
#Removes all video entrys if found
sudo sed -i 's/video=HDMI-A-1:3840x2160@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1920x1080@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1280x720@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:720x480@60D //' /boot/firmware/cmdline.txt
#Adds New Entry
sudo sed -i '1s/^/video=HDMI-A-1:3840x2160@60D /' /boot/firmware/cmdline.txt
sudo cp /boot/firmware/cmdline.txt /boot/cmdline.txt > /dev/null 2>&1
if (dialog --title "REBOOT?" --yesno "FINNISHED!!! Would You Like To Reboot To Save Changes?" 0 0 )
then
sudo reboot
fi
exit
fi
}

swap_ratio2() {
if grep -q 'video=HDMI-A-1:1920x1080@60D' "/boot/firmware/cmdline.txt"; then
dialog --infobox "1080P Already Added!" 3 24; sleep 2;
else
dialog --infobox "Now Changing Your Ratio!" 3 28; sleep 2;
#Removes all video entrys if found
sudo sed -i 's/video=HDMI-A-1:3840x2160@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1920x1080@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1280x720@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:720x480@60D //' /boot/firmware/cmdline.txt
#Adds New Entry
sudo sed -i '1s/^/video=HDMI-A-1:1920x1080@60D /' /boot/firmware/cmdline.txt
sudo cp /boot/firmware/cmdline.txt /boot/cmdline.txt > /dev/null 2>&1
if (dialog --title "REBOOT?" --yesno "FINNISHED!!! Would You Like To Reboot To Save Changes? If (No) Script will Close." 0 0 )
then
sudo reboot
fi
exit
fi
}

swap_ratio3() {
if grep -q 'video=HDMI-A-1:1280x720@60D' "/boot/firmware/cmdline.txt"; then
dialog --infobox "720P Already Added!" 3 23; sleep 2;
else
dialog --infobox "Now Changing Your Ratio!" 3 28; sleep 2;
#Removes all video entrys if found
sudo sed -i 's/video=HDMI-A-1:3840x2160@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1920x1080@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1280x720@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:720x480@60D //' /boot/firmware/cmdline.txt
#Adds New Entry
sudo sed -i '1s/^/video=HDMI-A-1:1280x720@60D /' /boot/firmware/cmdline.txt
sudo cp /boot/firmware/cmdline.txt /boot/cmdline.txt > /dev/null 2>&1
if (dialog --title "REBOOT?" --yesno "FINNISHED!!! Would You Like To Reboot To Save Changes? If (No) Script will Close." 0 0 )
then
sudo reboot
fi
exit
fi
}

swap_ratio4() {
if grep -q 'video=HDMI-A-1:720x480@60D' "/boot/firmware/cmdline.txt"; then
dialog --infobox "480P Already Added!" 3 23; sleep 2;
else
dialog --infobox "Now Changing Your Ratio!" 3 28; sleep 2;
#Removes All Entrys
sudo sed -i 's/video=HDMI-A-1:3840x2160@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1920x1080@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1280x720@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:720x480@60D //' /boot/firmware/cmdline.txt
#Adds New Entry
sudo sed -i '1s/^/video=HDMI-A-1:720x480@60D /' /boot/firmware/cmdline.txt
sudo cp /boot/firmware/cmdline.txt /boot/cmdline.txt > /dev/null 2>&1
if (dialog --title "REBOOT?" --yesno "FINNISHED!!! Would You Like To Reboot To Save Changes? If (No) Script will Close." 0 0 )
then
sudo reboot
fi
exit
fi
}

ratio_off() {
if grep -q 'video=' "/boot/firmware/cmdline.txt"; then
dialog --infobox "Now Changing Your Ratio!" 3 28; sleep 2;
#Removes All Entrys
sudo sed -i 's/video=HDMI-A-1:3840x2160@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1920x1080@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:1280x720@60D //' /boot/firmware/cmdline.txt
sudo sed -i 's/video=HDMI-A-1:720x480@60D //' /boot/firmware/cmdline.txt
sudo cp /boot/firmware/cmdline.txt /boot/cmdline.txt > /dev/null 2>&1
if (dialog --title "REBOOT?" --yesno "FINNISHED!!! Would You Like To Reboot To Save Changes? If (No) Script will Close." 0 0 )
then
sudo reboot
fi
exit
else
dialog --infobox "No User Ratio Set!" 3 22; sleep 2;
fi
}

main_menu
