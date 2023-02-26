#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

quick_audio_fixes() {
stats_check
    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " AUDIO FIX MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Choose An Option Below" 25 85 20 \
            1 "No Audio Fix  (Try this First)" \
            2 "No Audio Force 720p" \
            3 "No Audio Force 1080p" \
           2>&1 > /dev/tty)
        case "$choice" in
            1) no_audio_fix  ;;
            2) no_audio_force_720p  ;;
            3) no_audio_force_1080p  ;;
            *) break  ;;
        esac
    done
}

no_audio_fix() {
sudo grep hdmi_force_edid_audio /boot/config.txt > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "The Audio changes have already been made. If you are still not getting audio then there must be another issue."
sleep 4
echo "For now I will reverse the changes since they did not help you."
sleep 5
sudo perl -p -i -e 's/hdmi_force_edid_audio=1/#dtoverlay=lirc-rpi/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_force_hotplug=1/#hdmi_force_hotplug=1/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_drive=2/#hdmi_drive=2/g' /boot/config.txt
else
echo "I have scanned the config file and see that the audio fix is NOT in place."
sleep 4
echo "If this fix does not work please run the script again to roll the changes back."
sleep 10
echo "I will make the necessary config changes and reboot your Pi"
sleep 5
sudo perl -p -i -e 's/#dtoverlay=lirc-rpi/hdmi_force_edid_audio=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_force_hotplug=1/hdmi_force_hotplug=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_drive=2/hdmi_drive=2/g' /boot/config.txt
sudo reboot
fi
}

no_audio_force_720p() {
sudo grep hdmi_mode=16 /boot/config.txt > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "It looks like you have tried the Force 1080p script. Please run it again to roll the changes back before running this script."
sleep 10
exit
fi
sudo grep hdmi_mode=4 /boot/config.txt > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "The Audio changes have already been made. If you are still not getting audio then there must be another issue."
sleep 4
echo "For now I will reverse the changes since they did not help you."
sleep 5
sudo perl -p -i -e 's/hdmi_group=1/#hdmi_group=1/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_mode=4/#hdmi_mode=1/g' /boot/config.txt
else
echo "I have scanned the config file and see that Force 720p is not cofigured."
sleep 4
echo "I will make the necessary config changes and reboot your Pi. If this does not fix your issue please run this script again to reverse the changes."
sleep 5
sudo perl -p -i -e 's/#hdmi_group=1/hdmi_group=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_mode=1/hdmi_mode=4/g' /boot/config.txt
sudo reboot
fi
}

no_audio_force_1080p() {
sudo grep hdmi_mode=4 /boot/config.txt > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "It looks like you have tried the Force 720p script. Please run it again to roll the changes back before running this script."
sleep 10
exit
fi
sudo grep hdmi_mode=16 /boot/config.txt > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "Looks like we have already tried to force 1080p output. If you are still not getting audio then there must be another issue."
sleep 4
echo "For now I will reverse the changes since they did not help you. They will take effect after the next reboot"
sleep 5
sudo perl -p -i -e 's/hdmi_group=1/#hdmi_group=1/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_mode=16/#hdmi_mode=1/g' /boot/config.txt
else
echo "I have scanned the config file and see that 1080p is not being forced."
sleep 4
echo "I will make the necessary config changes and reboot your Pi"
sleep 5
sudo perl -p -i -e 's/#hdmi_group=1/hdmi_group=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_mode=1/hdmi_mode=16/g' /boot/config.txt
sudo reboot
fi
}

quick_audio_fixes