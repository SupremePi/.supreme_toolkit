#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Sinden Controller Lightgun Menu" \
            2 "Sinden Configs Settings Menu" \
            3 "Sinden Custom Settings Menu" \
            4 "Sinden Lightgun Auto start" \
            5 "Sinden Basic Border Menu" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) sinden_controller_menu  ;;
            2) settings_menu  ;;
            3) custom_menu ;;
            4) auto_menu ;;
            5) SindenBorder_menu ;;
             *)  break ;;
        esac
    done
}


function sinden_controller_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "SINDEN CONTROLLER MENU" \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Sinden Clasic Lightgun Menu" \
            2 "Sinden Non Recoil Lightgun Menu" \
	    3 "Sinden Recoil Lightgun Menu" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) clean_menu  ;;
            2) non_recoil_menu  ;;
	    3) recoil_menu  ;;
             *)  break ;;
        esac
    done
}

function clean_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "SINDEN BASIC MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Sinden Lightgun Start P1" \
            2 "Sinden Lightgun Start P2" \
	    3 "Sinden Lightgun Test P1" \
            4 "Sinden Lightgun Test P2" \
	    5 "Stop Sinden Lightguns" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) SindenLightgunStartP1  ;;
            2) SindenLightgunStartP2  ;;
	    3) SindenLightgunTestP1  ;;
            4) SindenLightgunTestP1  ;;
            5) SindenLightgunStop  ;;
            *)  break ;;
        esac
    done
}


function SindenLightgunStartP1() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
	cd /home/pi/Lightgun/Player1
    sudo mono-service LightgunMono.exe
}

function SindenLightgunStartP2() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
    cd /home/pi/Lightgun/Player2
    sudo mono-service LightgunMono.exe
}

function SindenLightgunTestP1() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
	cd /home/pi/Lightgun/Player1
    sudo mono LightgunMono.exe sdl 30
}

function SindenLightgunTestP2() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
	cd /home/pi/Lightgun/Player2
    sudo mono-service LightgunMono.exe
}

function SindenLightgunStop() {
	dialog --infobox "...Stoping..." 3 20 ; sleep 2
	sudo pkill "mono"
}


function non_recoil_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " SINDEN NON RECOIL MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Sinden Lightgun Start P1" \
            2 "Sinden Lightgun Start P2" \
	    3 "Sinden Lightgun Start P2 Arcade" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) SindenLightgunStartP1_alt  ;;
            2) SindenLightgunStartP2_alt  ;;
	    3) SindenLightgunTestP2Arcade_alt  ;;
            *)  break ;;
        esac
    done
}


function SindenLightgunStartP1_alt() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player1
        sudo mono-service LightgunMono.exe
}

function SindenLightgunStartP2_alt() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player2
        sudo mono-service LightgunMono2.exee
}

function SindenLightgunTestP2Arcade_alt() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player2A
        sudo mono-service LightgunMono2.exe
}

function recoil_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " SINDEN RECOIL MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Sinden Lightgun Start P1 Auto" \
            2 "Sinden Lightgun Start P1 Single Shot" \
	    3 "Sinden Lightgun Start P2 Auto Arcade" \
            4 "Sinden Lightgun Start P2 Auto" \
            5 "Sinden Lightgun Start P2 Single Shot Arcade" \
            6 "Sinden Lightgun Start P2 Single Shot" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) StartP1Auto_recoil  ;;
            2) StartP1SingleShot_recoil  ;;
	    3) StartP2AutoArcade_recoil  ;;
            1) StartP2Auto_recoil  ;;
            2) StartP2SingleShotArcade_recoil  ;;
	    3) StartP2SingleShot_recoil  ;;
            *)  break ;;
        esac
    done
}


function StartP1Auto_recoil() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player1recoilauto
        sudo mono-service LightgunMono.exe
}

function StartP1SingleShot_recoil() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player1recoil
        sudo mono-service LightgunMono.exe
}

function StartP2AutoArcade_recoil() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player2Arecoilauto
        sudo mono-service LightgunMono2.exe
}

function StartP2Auto_recoil() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player2recoilauto
        sudo mono-service LightgunMono2.exe
}

function StartP2SingleShotArcade_recoil() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
         cd /home/pi/Lightgun/Player2Arecoil
         sudo mono-service LightgunMono2.exe
}

function StartP2SingleShot_recoil() {
	dialog --infobox "...Loading..." 3 20 ; sleep 2
        cd /home/pi/Lightgun/Player2recoil
        sudo mono-service LightgunMono2.exe
}

Player_1_Calibrate_X=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_Calibrate_Y=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Calibrate_X=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Calibrate_Y=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Calibrate_X=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Calibrate_Y=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Calibrate_X=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Calibrate_Y=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Calibrate_X=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Calibrate_Y=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Calibrate_X=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Calibrate_Y=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Calibrate_X=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Calibrate_Y=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Calibrate_X=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Calibrate_Y=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Calibrate_X=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CalibrateX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Calibrate_Y=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CalibrateY\>' |cut -f4 -d '"'` >/dev/null 2>&1

Player_1_Camera_Brightness=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Brightness=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Brightness=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Brightness=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Brightness=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Brightness=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Brightness=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Brightness=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Brightness=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraBrightness\>' |cut -f4 -d '"'` >/dev/null 2>&1

Player_1_Camera_Contrast=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Contrast=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Contrast=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Contrast=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Contrast=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Contrast=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Contrast=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Contrast=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Contrast=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraContrast\>' |cut -f4 -d '"'` >/dev/null 2>&1

Player_1_Camera_Exposure=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Exposure=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Exposure=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Exposure=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Exposure=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Exposure=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Exposure=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Exposure=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Exposure=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraExposure\>' |cut -f4 -d '"'` >/dev/null 2>&1

Player_1_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Exposure_Auto=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraExposureAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1

Player_1_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Enable_Anti_Jitter=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'EnableAntiJitter\>' |cut -f4 -d '"'` >/dev/null 2>&1


#SerialPortWrite
Player_1_Serial_Port_Write=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Serial_Port_Write=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Serial_Port_Write=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Serial_Port_Write=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Serial_Port_Write=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Serial_Port_Write=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Serial_Port_Write=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Serial_Port_Write=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Serial_Port_Write=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'SerialPortWrite\>' |cut -f4 -d '"'` >/dev/null 2>&1

#SerialPortSecondary
Player_1_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Serial_Port_Secondary=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'SerialPortSecondary\>' |cut -f4 -d '"'` >/dev/null 2>&1

#VideoDevice
Player_1_Video_Device=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Video_Device=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Video_Device=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Video_Device=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Video_Device=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Video_Device=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Video_Device=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Video_Device=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Video_Device=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'VideoDevice\>' |cut -f4 -d '"'` >/dev/null 2>&1

#Offset
Player_1_Offset_X=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_Offset_Y=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Offset_X=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Offset_Y=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Offset_X=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Offset_Y=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Offset_X=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Offset_Y=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Offset_X=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Offset_Y=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Offset_X=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Offset_Y=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Offset_X=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Offset_Y=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Offset_X=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Offset_Y=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Offset_X=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'OffsetX\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Offset_Y=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'OffsetY\>' |cut -f4 -d '"'` >/dev/null 2>&1

#OffsetRatio
Player_1_Offset_X_Ratio=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Offset_X_Ratio=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Offset_X_Ratio=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Offset_X_Ratio=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Offset_X_Ratio=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Offset_X_Ratio=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Offset_X_Ratio=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Offset_X_Ratio=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Offset_X_Ratio=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'OffsetXRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Offset_Y_Ratio=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'OffsetYRatio\>' |cut -f4 -d '"'` >/dev/null 2>&1

#OffsetGunsightY
Player_1_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Auto_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Offset_Gunsight_Y=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'OffsetGunsightY\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ColourMatchRGB
Player_1_Colour_Match_RGB=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Colour_Match_RGB=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Colour_Match_RGB=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Colour_Match_RGB=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Colour_Match_RGB=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Colour_Match_RGB=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Colour_Match_RGB=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Colour_Match_RGB=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Colour_Match_RGB=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ColourMatchRGB\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ColourMatchRange
Player_1_Colour_Match_Range=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Colour_Match_Range=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Colour_Match_Range=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Colour_Match_Range=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Colour_Match_Range=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Colour_Match_Range=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Auto_Colour_Match_Range=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Colour_Match_Range=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Colour_Match_Range=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ColourMatchRange\>' |cut -f4 -d '"'` >/dev/null 2>&1

#GangstaSetting
Player_1_Gangsta_Setting=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Gangsta_Setting=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Gangsta_Setting=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Gangsta_Setting=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Gangsta_Setting=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Gangsta_Setting=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Gangsta_Setting=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Gangsta_Setting=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Gangsta_Setting=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'GangstaSetting\>' |cut -f4 -d '"'` >/dev/null 2>&1

#CameraRes
Player_1_Camera_Res=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Res=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Res=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Res=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Res=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Res=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Res=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Res=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Res=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraRes\>' |cut -f4 -d '"'` >/dev/null 2>&1

#SaveEachFrameToFile
Player_1_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Save_Each_Frame_To_File=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'SaveEachFrameToFile\>' |cut -f4 -d '"'` >/dev/null 2>&1

#OffscreenReload
Player_1_Offscreen_Reload=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Offscreen_Reload=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Offscreen_Reload=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Offscreen_Reload=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Offscreen_Reload=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Offscreen_Reload=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Offscreen_Reload=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Offscreen_Reload=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Offscreen_Reload=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'OffscreenReload\>' |cut -f4 -d '"'` >/dev/null 2>&1

#CameraZoom
Player_1_Camera_Zoom=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Zoom=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Zoom=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Zoom=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Zoom=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Zoom=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Zoom=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Zoom=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Zoom=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraZoom\>' |cut -f4 -d '"'` >/dev/null 2>&1

#CameraSaturation
Player_1_Camera_Saturation=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Saturation=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Saturation=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Saturation=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Saturation=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Saturation=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Saturation=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Saturation=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Saturation=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraSaturation\>' |cut -f4 -d '"'` >/dev/null 2>&1

#CameraHue
Player_1_Camera_Hue=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_Hue=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_Hue=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_Hue=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_Hue=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_Hue=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_Hue=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_Hue=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_Hue=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraHue\>' |cut -f4 -d '"'` >/dev/null 2>&1

#CameraWhiteBalanceAuto
Player_1_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_White_Balance_Auto=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraWhiteBalanceAuto\>' |cut -f4 -d '"'` >/dev/null 2>&1

#CameraWhiteBalance
Player_1_Camera_White_Balance=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Camera_White_Balance=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Camera_White_Balance=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Camera_White_Balance=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Camera_White_Balance=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Camera_White_Balance=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Camera_White_Balance=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Camera_White_Balance=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Camera_White_Balance=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'CameraWhiteBalance\>' |cut -f4 -d '"'` >/dev/null 2>&1

#MinimumBlobSize
Player_1_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Minimum_Blob_Size=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'MinimumBlobSize\>' |cut -f4 -d '"'` >/dev/null 2>&1

#AntiJitterPercentage
Player_1Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Anti_Jitter_Percentage=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'AntiJitterPercentage\>' |cut -f4 -d '"'` >/dev/null 2>&1

#MatchOnlyWherePointing
Player_1_Match_Only_Where_Pointinge=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Match_Only_Where_Pointing=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'MatchOnlyWherePointing\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ConsoleOutputVerbose0to2
Player_1_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Console_Output_Verbose_0_to_2=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ConsoleOutputVerbose0to2\>' |cut -f4 -d '"'` >/dev/null 2>&1

#================================================================================================================================================================================================

#ButtonTrigger
Player_1_Button_Trigger=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Trigger=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Trigger=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Trigger=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Trigger=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Trigger=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Trigger=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Trigger=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Trigger=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonPumpAction
Player_1_Button_Pump_Action=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Pump_Action=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Pump_Action=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Pump_Action=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Pump_Action=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Pump_Action=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Pump_Action=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Pump_Action=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Pump_Action=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonPumpAction\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonFrontLeft
Player_1_Button_Front_Left=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Front_Left=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Front_Left=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Front_Left=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Front_Left=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Front_Left=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Front_Left=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Front_Left=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Front_Left=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonRearLeft
Player_1_Button_Rear_Left=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Rear_Left=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Rear_Left=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Rear_Left=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Rear_Left=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Rear_Left=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Rear_Left=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Rear_Left=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Rear_Left=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonFrontLeft
Player_1_Button_Front_Left=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Front_Left=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Front_Left=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Front_Left=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Front_Left=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Front_Left=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Front_Left=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Front_Left=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Front_Left=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonRearLeft
Player_1_Button_Rear_Left=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Rear_Left=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Rear_Left=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Rear_Left=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Rear_Left=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Rear_Left=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Rear_Left=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Rear_Left=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Rear_Left=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonRearLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonFrontRight
Player_1_Button_Front_Right=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Front_Right=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Front_Right=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Front_Right=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Front_Right=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Front_Right=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Front_Right=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Front_Right=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Front_Right=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonRearRight
Player_1_Button_Rear_Right=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Rear_Right=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Rear_Right=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Rear_Right=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Rear_Right=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Rear_Right=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Rear_Right=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Rear_Right=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Rear_Right=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonRearRight\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonUp
Player_1_Button_Up=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Up=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Up=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Up=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Up=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Up=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Up=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Up=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Up=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonUp\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonDown
Player_1_Button_Down=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Down=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Down=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Down=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Down=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Down=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Down=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Down=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Down=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonDown\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonLeft
Player_1_Button_Left=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Left=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Left=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Left=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Left=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Left=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Left=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Left=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Left=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonRight
Player_1_Button_Right=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Right=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Right=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Right=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Right=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Right=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Right=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Right=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Right=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonRight\>' |cut -f4 -d '"'` >/dev/null 2>&1

#=================================================================================================================================================================================

#TriggerMod
Player_1_Trigger_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Trigger_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Trigger_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Trigger_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Trigger_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Trigger_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Trigger_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Trigger_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Trigger_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'TriggerMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#PumpActionMod
Player_1_Pump_Action_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Pump_Action_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Pump_Action_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Pump_Action_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Pump_Action_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Pump_Action_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Pump_Action_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Pump_Action_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Pump_Action_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'PumpActionMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#FrontLeftMod
Player_1_Front_Left_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Front_Left_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Front_Left_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Left_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Left_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Front_Left_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Front_Left_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Left_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Front_Left_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'FrontLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RearLeftMod
Player_1_Rear_Left_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Rear_Left_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Rear_Left_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Rear_Left_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Rear_Left_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Rear_Left_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Rear_Left_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Rear_Left_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Rear_Left_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RearLeftMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#FrontRightMod
Player_1_Front_Right_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Front_Right_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Front_Right_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Right_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Right_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Front_Right_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Front_Right_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Right_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Front_Right_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'FrontRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RearRightMod
Player_1_Rear_Right_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Rear_Right_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Rear_Right_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Rear_Right_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Rear_Right_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Rear_Right_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Rear_Right_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Rear_Right_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Rear_Right_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RearRightMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#UpMod
Player_1_Up_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Up_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Up_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Up_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Up_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Up_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Up_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Up_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Up_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep '"UpMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1

#DownMod
Player_1_Down_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Down_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Down_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Down_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Down_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Down_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Down_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Down_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Down_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep '"DownMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1

#LeftMod
Player_1_Left_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Left_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Left_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Left_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Left_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Left_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Left_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Left_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Left_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep '"LeftMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1

#RightMod
Player_1_Right_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Right_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Right_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Right_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Right_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Right_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Right_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Right_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Right_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep '"RightMod\>"' |cut -f4 -d '"'` >/dev/null 2>&1

#==================================================================================================================================================================

#ButtonTriggerOffscreen
Player_1_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Trigger_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonTriggerOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonPumpActionOffscreen
Player_1_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Pump_Action_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonPumpActionOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonFrontLeftOffscreen
Player_1_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Front_Left_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonFrontLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonRearLeftOffscreen
Player_1_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Rear_Left_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonRearLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonFrontRightOffscreen
Player_1_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Front_Right_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonFrontRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonRearRightOffscreen
Player_1_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Rear_Right_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonRearRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonUpOffscreen
Player_1_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Up_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonUpOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonDownOffscreen
Player_1_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Down_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonDownOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonLeftOffscreen
Player_1_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Left_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonLeftOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#ButtonRightOffscreen
Player_1_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Button_Right_Offscreen=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'ButtonRightOffscreen\>' |cut -f4 -d '"'` >/dev/null 2>&1

#=====================================================================================================================================================================================================

#TriggerOffscreenMod
Player_1_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Trigger_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'TriggerOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#PumpActionOffscreenMod
Player_1_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Pump_Action_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'PumpActionOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#FrontLeftOffscreenMod
Player_1_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'FrontLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RearLeftOffscreenMod
Player_1_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RearLeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#FrontRightOffscreenMod
Player_1_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'FrontRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RearRightOffscreenMod
Player_1_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RearRightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#UpOffscreenMod
Player_1_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Up_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'UpOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#DownOffscreenMod
Player_1_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Down_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'DownOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#LeftOffscreenMod
Player_1_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Left_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'LeftOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RightOffscreenMod
Player_1_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Right_Offscreen_Mod=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RightOffscreenMod\>' |cut -f4 -d '"'` >/dev/null 2>&1

#======================================================================================================================================================================================================

#IAgreeRecoilTermsInLicense
Player_1_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_I_Agree_Recoil_Terms_In_License=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'IAgreeRecoilTermsInLicense\>' |cut -f4 -d '"'` >/dev/null 2>&1

#EnableRecoil
Player_1_Enable_Recoil=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Enable_Recoil=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Enable_Recoil=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Enable_Recoil=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Enable_Recoil=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Enable_Recoil=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Enable_Recoil=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Enable_Recoil=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Enable_Recoil=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'EnableRecoil\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilTrigger
Player_1_Recoil_Trigger=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Trigger=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Trigger=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Recoil_Trigger=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Recoil_Trigger=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Trigger=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Trigger=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Recoil_Trigger=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Trigger=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RecoilTrigger\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilPumpActionOnEvent
Player_1_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Pump_Action_On_Event=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RecoilPumpActionOnEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilPumpActionOffEvent
Player_1_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Pump_Action_Off_Event=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RecoilPumpActionOffEvent\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilFrontLeft
Player_1_Recoil_Front_Left=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Front_Left=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Front_Left=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Recoil_Front_Left=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Recoil_Front_Left=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Front_Left=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Front_Left=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Recoil_Front_Left=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Front_Left=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RecoilFrontLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilFrontRight
Player_1_Recoil_Front_Right=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Front_Right=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Front_Right=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Recoil_Front_Right=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Recoil_Front_Right=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Front_Right=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Front_Right=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Recoil_Front_Right=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Front_Right=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RecoilFrontRight\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilBackLeft
Player_1_Recoil_Back_Left=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Back_Left=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Back_Left=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Recoil_Back_Left=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Recoil_Back_Left=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Back_Left=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Back_Left=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Recoil_Back_Left=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Back_Left=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RecoilBackLeft\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilBackRight
Player_1_Recoil_Back_Right=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Back_Right=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Back_Right=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Recoil_Back_Right=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Recoil_Back_Right=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Back_Right=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Back_Right=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Recoil_Back_Right=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Back_Right=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'RecoilBackRight\>' |cut -f4 -d '"'` >/dev/null 2>&1

#RecoilStrength
Player_1_Recoil_Strength=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Recoil_Strength=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Recoil_Strength=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Recoil_Strength=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Recoil_Strength=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Recoil_Strength=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep '"RecoilStrength\>"' |cut -f4 -d '"'` >/dev/null 2>&1

#TriggerRecoilNormalOrRepeat
Player_1_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Trigger_Recoil_Normal_Or_Repeat=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'TriggerRecoilNormalOrRepeat\>' |cut -f4 -d '"'` >/dev/null 2>&1

#AutoRecoilStrength
Player_1_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Auto_Recoil_Strength=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'AutoRecoilStrength\>' |cut -f4 -d '"'` >/dev/null 2>&1

#AutoRecoilStartDelay
Player_1_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Auto_Recoil_Start_Delay=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'AutoRecoilStartDelay\>' |cut -f4 -d '"'` >/dev/null 2>&1

#AutoRecoilDelayBetweenPulses
Player_1_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Auto_Recoil_Delay_Between_Pulses=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'AutoRecoilDelayBetweenPulses\>' |cut -f4 -d '"'` >/dev/null 2>&1

#==========================================================================================================================================================================================================

#EnableCalibration
Player_1_Enable_Calibration=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Enable_Calibration=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Enable_Calibration=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Enable_Calibration=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Enable_Calibration=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Enable_Calibration=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Enable_Calibration=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Enable_Calibration=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Enable_Calibration=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'EnableCalibration\>' |cut -f4 -d '"'` >/dev/null 2>&1

#AutoSaveCalibrationInLightgun
Player_1_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player1/LightgunMono.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_1_recoil_Auto_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_Front_Rear_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player2/LightgunMono2.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_Front_Rear_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player2A/LightgunMono2.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_A_recoil_Auto_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player2Arecoilauto/LightgunMono2.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Front_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1
Player_2_recoil_Auto_Auto_Save_Calibration_In_Lightgun=`cat /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config |grep 'AutoSaveCalibrationInLightgun\>' |cut -f4 -d '"'` >/dev/null 2>&1

#====================================================================================================================================================================================================================





function settings_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "SINDEN CONFIG SETTINGS MENU" \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Current Value For all Config Settings" \
			2 "Sinden Lightgun Serial Port Write (DEFAULT /dev/ttyACM1)" \
			3 "Sinden Lightgun Serial Port Secondary (DEFAULT VALUE IS 0)" \
			4 "Sinden Lightgun Video Device (DEFAULT VALUE IS 0)" \
			5 "Sinden Lightgun Calibrate X and Y (DEFAULT VALUE IS 0)" \
			6 "Sinden Lightgun Offset X and Y (DEFAULT VALUE IS 0)" \
			7 "Sinden Lightgun Offset Ratio X and Y (DEFAULT VALUE IS 01)" \
			8 "Sinden Lightgun Offset Gunsight Y (DEFAULT VALUE IS 4.9)" \
			9 "Sinden Lightgun Colour Match RGB(DEFAULT VALUE IS 255,255,255)" \
		   10 "Sinden Lightgun Colour Match Range (DEFAULT VALUE IS 220)" \
		   11 "Sinden Lightgun Gangsta Setting (DEFAULT VALUE IS 3)" \
		   12 "Sinden Lightgun Camera Res (DEFAULT VALUE IS 640,480)" \
		   13 "Sinden Lightgun Save Each Frame To File (DEFAULT VALUE IS 0)" \
	       14 "Sinden Lightgun Offscreen Reload (DEFAULT VALUE IS 0)" \
		   15 "Sinden Lightgun Camera Exposure Auto (DEFAULT VALUE IS 1)" \
           16 "Sinden Lightgun Camera Exposure (DEFAULT VALUE IS 0)" \
		   17 "Sinden Lightgun Camera Brightness (DEFAULT VALUE IS 100)" \
		   18 "Sinden Lightgun Camera Zoom (DEFAULT VALUE IS 0)" \
		   19 "Sinden Lightgun Camera Contrast (DEFAULT VALUE IS 50)" \
		   20 "Sinden Lightgun Camera Saturation (DEFAULT VALUE IS 40)" \
		   21 "Sinden Lightgun Camera Hue (DEFAULT VALUE IS 0)" \
		   22 "Sinden Lightgun Camera White Balance Auto (DEFAULT VALUE IS 0)" \
		   23 "Sinden Lightgun Camera White Balance (DEFAULT VALUE IS 4500)" \
		   24 "Sinden Lightgun Minimum Blob Size (DEFAULT VALUE IS 20)" \
		   25 "Sinden Lightgun Enable Anti Jitter (DEFAULT VALUE IS 0)" \
		   26 "Sinden Lightgun Anti Jitter Percentage (DEFAULT VALUE IS 1)" \
		   27 "Sinden Lightgun Match Only Where Pointing (DEFAULT VALUE IS 0)" \
		   28 "Sinden Lightgun Console Output Verbose 0 to 2 (DEFAULT VALUE IS 0)" \
		   - "=======================================================================" \
		   29 "Sinden Lightgun Button Trigger (DEFAULT VALUE IS 51)" \
		   30 "Sinden Lightgun Button Pump Action (DEFAULT VALUE IS 52)" \
		   31 "Sinden Lightgun Button Front Left (DEFAULT VALUE IS 3)" \
		   32 "Sinden Lightgun Button Rear Left (DEFAULT VALUE IS 53)" \
		   33 "Sinden Lightgun Button Front Right (DEFAULT VALUE IS 10)" \
		   34 "Sinden Lightgun Button Rear Right (DEFAULT VALUE IS 14)" \
		   35 "Sinden Lightgun Button Up(DEFAULT VALUE IS 74)" \
		   36 "Sinden Lightgun Button Down (DEFAULT VALUE IS 75)" \
		   37 "Sinden Lightgun Button Left (DEFAULT VALUE IS 76)" \
		   38 "Sinden Lightgun Button Right (DEFAULT VALUE IS 77)" \
			- "=======================================================================" \
		   39 "Sinden Lightgun Trigger Mod (DEFAULT VALUE IS 0)" \
		   40 "Sinden Lightgun Pump Action Mod (DEFAULT VALUE IS 0)" \
		   41 "Sinden Lightgun Front Left Mod (DEFAULT VALUE IS 0)" \
		   42 "Sinden Lightgun Rear Left Mod (DEFAULT VALUE IS 0)" \
		   43 "Sinden Lightgun Front Right Mod (DEFAULT VALUE IS 0)" \
		   44 "Sinden Lightgun Rear Right Mod (DEFAULT VALUE IS 0)" \
		   45 "Sinden Lightgun Up Mod (DEFAULT VALUE IS 0)" \
		   46 "Sinden Lightgun Down Mod (DEFAULT VALUE IS 0)" \
		   47 "Sinden Lightgun Left Mod (DEFAULT VALUE IS 0)" \
		   48 "Sinden Lightgun Right Mod (DEFAULT VALUE IS 0)" \
		    - "=======================================================================" \
		   49 "Sinden Lightgun Button Trigger Offscreen (DEFAULT VALUE IS 3)" \
		   50 "Sinden Lightgun Button Pump Action Offscreen (DEFAULT VALUE IS 3)" \
		   51 "Sinden Lightgun Button Front Left Offscreen (DEFAULT VALUE IS 3)" \
		   52 "Sinden Lightgun Button Rear Left Offscreen (DEFAULT VALUE IS 2)" \
		   53 "Sinden Lightgun Button Front Right Offscreen (DEFAULT VALUE IS 13)" \
		   54 "Sinden Lightgun Button Rear Right Offscreen (DEFAULT VALUE IS 7)" \
		   55 "Sinden Lightgun Button Up Offscreen (DEFAULT VALUE IS 74)" \
	       56 "Sinden Lightgun Button Down Offscreen (DEFAULT VALUE IS 75)" \
	       57 "Sinden Lightgun Button Left Offscreen (DEFAULT VALUE IS 76)" \
		   58 "Sinden Lightgun Button Right Offscreen (DEFAULT VALUE IS 77)" \
            - "=======================================================================" \
		   59 "Sinden Lightgun Trigger Offscreen Mod (DEFAULT VALUE IS 0)" \
		   60 "Sinden Lightgun Pump Action Offscreen Mod (DEFAULT VALUE IS 0)" \
		   61 "Sinden Lightgun Front Left Offscreen Mod (DEFAULT VALUE IS 0)" \
		   62 "Sinden Lightgun Rear Left Offscreen Mod (DEFAULT VALUE IS 0)" \
		   63 "Sinden Lightgun Front Right Offscreen Mod (DEFAULT VALUE IS 0)" \
		   64 "Sinden Lightgun Rear Right Offscreen Mod (DEFAULT VALUE IS 0)" \
		   65 "Sinden Lightgun Up Offscreen Mod (DEFAULT VALUE IS 0)" \
		   66 "Sinden Lightgun Down Offscreen Mod (DEFAULT VALUE IS 0)" \
		   67 "Sinden Lightgun Left Offscreen Mod (DEFAULT VALUE IS 0)" \
		   68 "Sinden Lightgun Right Offscreen Mod(DEFAULT VALUE IS 0)" \
            - "=======================================================================" \
                   + "PAGE 2" \
            2>&1 > /dev/tty)

        case "$choice" in
		
     		1) All_Config_Settings_user  ;;

			2) Serial_Port_Write_User  ;;
			3) Serial_Port_Secondary_User  ;;
			4) Video_Device_User  ;;
			5) Calibrate_User  ;;
			6) Offset_User  ;;
			7) Offset_Ratio_User  ;;
			8) Offset_Gunsight_Y_User  ;;
			9) Colour_Match_RGB_User  ;;
		   10) Colour_Match_Range_User  ;;
		   11) Gangsta_Setting_User  ;;
		   12) Camera_Res_User  ;;
		   13) Save_Each_Frame_To_File_User  ;;
		   14) Offscreen_Reload_User  ;;
		   15) Camera_Exposure_Auto_User  ;;
           16) Camera_Exposure_User  ;;
	       17) Camera_Brightness_User  ;;
		   18) Camera_Zoom_User  ;;
		   19) Camera_Contrast_User  ;;
		   20) Camera_Saturation_User  ;;
		   21) Camera_Hue_User  ;;
	           22) Camera_White_Balance_Auto_User  ;;
		   23) Camera_White_Balance_User  ;;
		   24) Minimum_Blob_Size_User  ;;
		   25) Enable_Anti_Jitter_User  ;;
		   26) Anti_Jitter_Percentage_User  ;;
		   27) Match_Only_Where_Pointing_User  ;;
		   28) Console_Output_Verbose_0_to_2_User  ;;
			-) none ;;
		   29) Button_Trigger_User  ;;
		   30) Button_Pump_Action_User  ;;
		   21) Button_Front_Left_User  ;;
		   32) Button_Rear_Left_User  ;;
		   33) Button_Front_Right_User  ;;
		   34) Button_Rear_Right_User  ;;
		   35) Button_Up_User  ;;
		   36) Button_Down_User  ;;
		   37) Button_Left_User  ;;
		   38) Button_Right_User  ;;
		    -) none ;;
		   39) Trigger_Mod_User  ;;
		   40) Pump_Action_Mod_User  ;;
		   41) Front_Left_Mod_User  ;;
		   42) Rear_Left_Mod_User  ;;
		   43) Front_Right_Mod_User  ;;
		   44) Rear_Right_Mod_User  ;;
		   45) Up_Mod_User  ;;
		   46) Down_Mod_User  ;;
		   47) Left_Mod_User  ;;
		   48) Right_Mod_User  ;;
		    -) none ;;
		   49) Button_Trigger_Offscreen_User  ;;
		   50) Button_Pump_Action_Offscreen_User  ;;
		   51) Button_Front_Left_Offscreen_User  ;;
		   52) Button_Rear_Left_Offscreen_User  ;;
		   53) Button_Front_Right_Offscreen_User  ;;
		   54) Button_Rear_Right_Offscreen_User  ;;
		   55) Button_Up_Offscreen_User  ;;
		   56) Button_Down_Offscreen_User  ;;
		   57) Button_Left_Offscreen_User  ;;
		   58) Button_Right_Offscreen_User  ;;
			-) none ;;
		   59) Trigger_Offscreen_Mod_User  ;;
		   60) Pump_Action_Offscreen_Mod_User  ;;
		   51) Front_Left_Offscreen_Mod_User  ;;
		   62) Rear_Left_Offscreen_Mod_User  ;;
		   63) Front_Right_Offscreen_Mod_User  ;;
		   64) Rear_Right_Offscreen_Mod_User  ;;
		   65) Up_Offscreen_Mod_User  ;;
		   66) Down_Offscreen_Mod_User  ;;
		   67) Left_Offscreen_Mod_User  ;;
		   68) Right_Offscreen_Mod_User  ;;
                   +) page_2  ;;                   
		    -) none ;;
            *)  break ;;
        esac
    done
}

function page_2() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "SINDEN CONFIG SETTINGS MENU PAGE 2" \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Sinden Lightgun I Agree Recoil Terms In License (DEFAULT VALUE IS 1)" \
            2 "Sinden Lightgun Enable Recoil (DEFAULT VALUE IS 1)" \
	    3 "Sinden Lightgun Recoil Trigger (DEFAULT VALUE IS 1)" \
            4 "Sinden Lightgun Recoil Trigger Offscreen (DEFAULT VALUE IS 0)" \
            5 "Sinden Lightgun Recoil Pump Action On Event (DEFAULT VALUE IS 0)" \
            6 "Sinden Lightgun Recoil Pump Action Off Event (DEFAULT VALUE IS 0)" \
            7 "Sinden Lightgun Recoil Front Left (DEFAULT VALUE IS 0)" \
            8 "Sinden Lightgun Recoil Front Right (DEFAULT VALUE IS 0)" \
            9 "Sinden Lightgun Recoil Back Left (DEFAULT VALUE IS 0)" \
           10 "Sinden Lightgun Recoil Back Right Mod(DEFAULT VALUE IS 0" \
           11 "Sinden Lightgun Recoil Strength (DEFAULT VALUE IS 100)" \
           12 "Sinden Lightgun Trigger Recoil Normal Or Repeat (DEFAULT VALUE IS 1)" \
           13 "Sinden Lightgun Auto Recoil Strength (DEFAULT VALUE IS 80)" \
           14 "Sinden Lightgun Auto Recoil Start Delay (DEFAULT VALUE IS 5)" \
           15 "Sinden Lightgun Auto Recoil Delay Between Pulsesd (DEFAULT VALUE IS 13)" \
            - "=======================================================================" \
           16 "Sinden Lightgun Enable Calibration (DEFAULT VALUE IS 01)" \
           17 "Sinden Lightgun Auto Save Calibration In Lightgun (DEFAULT VALUE IS 1)" \
            2>&1 > /dev/tty)

        case "$choice" in
		   1) I_Agree_Recoil_Terms_In_License_User  ;;
		   2) Enable_Recoile_User  ;;
		   3) Recoil_Trigger_User  ;;
		   4) Recoil_Trigger_Offscreen_User  ;;
		   5) Recoil_Pump_Action_On_Event_User  ;;
		   6) Recoil_Pump_Action_Off_Event_User  ;;
		   7) Recoil_Front_Left_User  ;;
		   8) Recoil_Front_Right_User  ;;
		   9) Recoil_Back_Left_User  ;;
		   10) Recoil_Back_Right_User  ;;
		   11) Recoil_Strength_User  ;;
		   12) Trigger_Recoil_Normal_Or_Repeat_User  ;;
		   13) Auto_Recoil_Strength_User  ;;
		   14) Auto_Recoil_Start_Delay_User  ;;
		   15) Auto_Recoil_Delay_Between_Pulses_User  ;;
		    -) none ;;
		   16) Enable_Calibration_User  ;;
		   17) Auto_Save_Calibration_In_Lightgun_User  ;;
             *)  break ;;
        esac
    done
}


All_Config_Settings_user() {
echo "Your Serial Port Write Value Is: ${Player_1_Serial_Port_Write}" >> info_box
echo "Your Serial Port Secondary Value Is: ${Player_1_Serial_Port_Secondary}" >> info_box
echo "Your what is Video Device Value Is: ${Player_1_Video_Device}" >> info_box
echo "Your Calibrate X Value Is: ${Player_1_Calibrate_X}" >> info_box
echo "Your Calibrate Y Value Is ${Player_1_Calibrate_Y}" >> info_box
echo "Your Offset X Value Is: ${Player_1_Offset_X}" >> info_box
echo "Your Offset Y Value Is: ${Player_1_Offset_Y}" >> info_box
echo "Your Offset X Ratio Value Is: ${Player_1_Offset_X_Ratio}" >> info_box
echo "Your Offset Y Ratio Value Is: ${Player_1_Offset_Y_Ratio}" >> info_box
echo "Your Offset Gunsight Y Value Is: ${Player_1_Offset_Gunsight_Y}" >> info_box
echo "Your Colour Match RGB Value: ${Player_1_Colour_Match_RGB}" >> info_box
echo "Your Colour Match Range Value Is: ${Player_1_Colour_Match_Range}" >> info_box
echo "Your Gangsta Setting Value Is: ${Player_1_Gangsta_Setting}" >> info_box
echo "Your Camera Res Value Is: ${Player_1_Camera_Res}" >> info_box
echo "Your Save Each Frame To File Value Is: ${Player_1_Save_Each_Frame_To_File}" >> info_box
echo "Your Offscreen Reload Value Is: ${Player_1_Offscreen_Reload}" >> info_box
echo "Your Camera Exposure Auto Value Is: ${Player_1_Camera_Exposure_Auto}" >> info_box
echo "Your Camera Exposure Value Is: ${Player_1_Camera_Exposure}" >> info_box
echo "Your Camera Brightness Value Is: ${Player_1_Camera_Brightness}" >> info_box
echo "Your Camera Zoom Value Is: ${Player_1_Camera_Zoom}" >> info_box
echo "Your Camera Contrast Value Is: ${Player_1_Camera_Contrast}" >> info_box
echo "Your Camera Saturation Value Is: ${Player_1_Camera_Saturation}" >> info_box
echo "Your Camera Hue Value Is: ${Player_1_Camera_Hue}" >> info_box
echo "Your Camera White Balance Auto Value Is: ${Player_1_Camera_White_Balance_Auto}" >> info_box
echo "Your Camera White Balance Value Is: ${Player_1_Camera_White_Balance}" >> info_box
echo "Your Minimum Blob Size Auto Value Is: ${Player_1_Minimum_Blob_Size}" >> info_box
echo "Your Enable Anti Jitter Value Is: ${Player_1_Enable_Anti_Jitter}" >> info_box
echo "Your Anti Jitter Percentag Value Is: ${Player_1_Anti_Jitter_Percentag}" >> info_box
echo "Your Match Only Where Pointing Value Is: ${Player_1_Match_Only_Where_Pointing}" >> info_box
echo "Your Console Output Verbose 0 to 2 Value Is: ${Player_1_Console_Output_Verbose_0_to_2}" >> info_box
echo "Your Button Trigger Value Is: ${Player_1_Button_Trigger}" >> info_box
echo "Your Button Pump Action Value Is: ${Player_1_Button_Pump_Action}" >> info_box
echo "Your Button Front Left Value Is: ${Player_1_Button_Front_Left}" >> info_box
echo "Your Button Rear Left Value Is: ${Player_1_Button_Rear_Left}" >> info_box
echo "Your Button Front Right Value Is: ${Player_1_Button_Front_Right}" >> info_box
echo "Your Button Rear Right Value Is: ${Player_1_Button_Rear_Right}" >> info_box
echo "Your Button Up Value Is: ${Player_1_Button_Up}" >> info_box
echo "Your Button Down Value Is: ${Player_1_Button_Down}" >> info_box
echo "Your Button Left Value Is: ${Player_1_Button_Left}" >> info_box
echo "Your Button Right Value Is: ${Player_1_Button_Right}" >> info_box
echo "Your Trigger Mod Value Is: ${Player_1_Trigger_Mod}" >> info_box
echo "Your Pump Action Mod Value Is: ${Player_1_Pump_Action_Mod}" >> info_box
echo "Your Front Left Mod Value Is: ${Player_1_Front_Left_Mod}" >> info_box
echo "Your Rear Left Mod Value Is: ${Player_1_Rear_Left_Mod}" >> info_box
echo "Your Front Right Mod Value Is: ${Player_1_Front_Right_Mod}" >> info_box
echo "Your Rear Right Mod Value Is: ${Player_1_Rear_Right_Mod}" >> info_box
echo "Your Up Mod Value Is: ${Player_1_Up_Mod}" >> info_box
echo "Your Down Mod Value Is: ${Player_1_Down_Mod}" >> info_box
echo "Your Left Mod Value Is: ${Player_1_Left_Mod}" >> info_box
echo "Your Right Mod Value Is: ${Player_1_Right_Mod}" >> info_box
echo "Your Button Trigger Offscreen Value Is: ${Player_1_Button_Trigger_Offscreen}" >> info_box
echo "Your Button Pump Action Offscreen Value Is: ${Player_1_Button_Pump_Action_Offscreen}" >> info_box
echo "Your Button Front Left Offscreen Value Is: ${Player_1_Button_Front_Left_Offscreen}" >> info_box
echo "Your Button Rear Left Offscreen Value Is: ${Player_1_Button_Rear_Left_Offscreen}" >> info_box
echo "Your Button Front Right Offscreen Value Is: ${Player_1_Button_Front_Right_Offscreen}" >> info_box
echo "Your Button Rear Right Offscreen Value Is: ${Player_1_Button_Rear_Right_Offscreen}" >> info_box
echo "Your Button Up Offscreen Value Is: ${Player_1_Button_Up_Offscreen}" >> info_box
echo "Your Button Down Offscreen Value Is: ${Player_1_Button_Down_Offscreen}" >> info_box
echo "Your Button Left Offscreen Value Is: ${Player_1_Button_Left_Offscreen}" >> info_box
echo "Your Button Right Offscreen Value Is: ${Player_1_Button_Right_Offscreen}" >> info_box
echo "Your Trigger Offscreen Mod Value Is: ${Player_1_Trigger_Offscreen_Mod}" >> info_box
echo "Your Pump Action Offscreen Mod Value Is: ${Player_1_Pump_Action_Offscreen_Mod}" >> info_box
echo "Your Front Left Offscreen Mod Value Is: ${Player_1_Front_Left_Offscreen_Mod}" >> info_box
echo "Your Rear Left Offscreen Mod Value Is: ${Player_1_Rear_Left_Offscreen_Mod}" >> info_box
echo "Your Front Right Offscreen Mod Value Is: ${Player_1_Front_Right_Offscreen_Mod}" >> info_box
echo "Your Rear Right Offscreen Mod Value Is: ${Player_1_Rear_Right_Offscreen_Mod}" >> info_box
echo "Your Up Off screen Mod Value Is: ${Player_1_Up_Off_screen_Mod}" >> info_box
echo "Your Down Off screen Mod Value Is: ${Player_1_Down_Off_screen_Mod}" >> info_box
echo "Your Left Off screen Mod Value Is: ${Player_1_Left_Off_screen_Mod}" >> info_box
echo "Your Right Off screen Mod Value Is: ${Player_1_Right_Off_screen_Mod}" >> info_box
echo "Your I Agree Recoil Terms In License Value Is: ${Player_1_I_Agree_Recoil_Terms_In_License}" >> info_box
echo "Your Enable Recoil Value Is: ${Player_1_Enable_Recoil}" >> info_box
echo "Your Recoil Trigger Value Is: ${Player_1_Recoil_Trigger}" >> info_box
echo "Your Recoil Trigger Offscreen Value Is: ${Player_1_Recoil_Trigger_Offscreen}" >> info_box
echo "Your Recoil Pump Action On Event Value Is: ${Player_1_Recoil_Pump_Action_On_Event}" >> info_box
echo "Your Recoil Pump Action Off Event Value Is: ${Player_1_Recoil_Pump_Action_Off_Event}" >> info_box
echo "Your Recoil Front Left Value Is: ${Player_1_Recoil_Front_Left}" >> info_box
echo "Your Recoil Front Right Value Is: ${Player_1_Recoil_Front_Right}" >> info_box
echo "Your Recoil Back Left Value Is: ${Player_1_Recoil_Back_Left}" >> info_box
echo "Your Recoil Back Right Value Is: ${Player_1_Recoil_Back_Right}" >> info_box
echo "Your Recoil Strength Value Is: ${Player_1_Recoil_Strength}" >> info_box
echo "Your Trigger Recoil Normal Or Repeat Value Is: ${Player_1_Trigger_Recoil_Normal_Or_Repeat}" >> info_box
echo "Your Auto Recoil Strength Value Is: ${Player_1_Auto_Recoil_Strength}" >> info_box
echo "Your Auto Recoil Start Delay Value Is: ${Player_1_Auto_Recoil_Start_Delay}" >> info_box
echo "Your Auto Recoil Delay Between Pulses Value Is: ${Player_1_Auto_Recoil_Delay_Between_Pulses}" >> info_box
echo "Your Enable Calibration Value Is: ${Player_1_Enable_Calibration}" >> info_box
echo "Your Auto Save Calibration In Lightgun Value Is: ${Player_1_Auto_Save_Calibration_In_Lightgun}" >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
sudo rm info_box
}

function Serial_Port_Write_User() {
what_is_Serial_Port_Write=$(dialog --inputbox "Enter Serial Port Write Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Serial Port Write Value Is: $what_is_Serial_Port_Write " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_1_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_1_recoil_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_1_recoil_Auto_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_2_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_2_A_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_2_A_recoil_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_2_Arecoil_Auto_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_2_recoil_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortWrite\" value=\"'${Player_2_recoil_Auto_Serial_Port_Write}'\" \/>/<add key=\"SerialPortWrite\" value=\"'$what_is_Serial_Port_Write'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Serial_Port_Secondary_User() {
what_is_Serial_Port_Secondary=$(dialog --inputbox "Enter Serial Port Secondary Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Serial Port Secondary Value Is: $what_is_Serial_Port_Secondary " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_1_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_1_recoil_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_1_recoil_Auto_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_2_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_2_A_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_2_A_recoil_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_2_Arecoil_Auto_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_2_recoil_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SerialPortSecondary\" value=\"'${Player_2_recoil_Auto_Serial_Port_Secondary}'\" \/>/<add key=\"SerialPortSecondary\" value=\"'$what_is_Serial_Port_Secondary'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Video_Device_User() {
what_is_Video_Device=$(dialog --inputbox "Enter Video Device Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your what is Video Device Value Is: $what_is_Video_Device " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_1_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_1_recoil_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_1_recoil_Auto_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_2_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_2_A_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_2_A_recoil_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_2_Arecoil_Auto_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_2_recoil_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"VideoDevice\" value=\"'${Player_2_recoil_Auto_Video_Device}'\" \/>/<add key=\"VideoDevice\" value=\"'$what_is_Video_Device'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Calibrate_User() {
what_is_x=$(dialog --inputbox "Enter Calibrate X Value: " 10 30 3>&1 1>&2 2>&3)
what_is_y=$(dialog --inputbox "Enter Calibrate Y Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Calibrate X Value Is: $what_is_x " >> info_box
echo "Your Calibrate Y Value Is: $what_is_y " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_1_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_1_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_1_recoil_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_1_recoil_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_1_recoil_Auto_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_1_recoil_Auto_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_2_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_2_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_2_A_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_2_A_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_2_A_recoil_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_2_A_recoil_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_2_A_recoil_Auto_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_2_A_recoil_Auto_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_2_recoil_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_2_recoil_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateX\" value=\"'${Player_2_recoil_Auto_Calibrate_X}'\" \/>/<add key=\"CalibrateX\" value=\"'$what_is_x'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CalibrateY\" value=\"'${Player_2_recoil_Auto_Calibrate_Y}'\" \/>/<add key=\"CalibrateY\" value=\"'$what_is_y'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Offset_User() {
what_is_Offset_x=$(dialog --inputbox "Enter Offset X Value: " 10 30 3>&1 1>&2 2>&3)
what_is_Offset_y=$(dialog --inputbox "Enter Offset Y Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Offset X Value Is: $what_is__Offset_x " >> info_box
echo "Your Offset Y Value Is: $what_is_Offset_y " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_1_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_1_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_1_recoil_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_1_recoil_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_1_recoil_Auto_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_1_recoil_Auto_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_2_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_2_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_2_A_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_2_A_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_2_A_recoil_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_2_A_recoil_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_2_A_recoil_Auto_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_2_A_recoil_Auto_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_2_recoil_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_2_recoil_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetX\" value=\"'${Player_2_recoil_Auto_Offset_X}'\" \/>/<add key=\"OffsetX\" value=\"'$what_is_Offset_x'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetY\" value=\"'${Player_2_recoil_Auto_Offset_Y}'\" \/>/<add key=\"OffsetY\" value=\"'$what_is_Offset_y'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Offset_Ratio_User() {
what_is_Offset_Ratio_x=$(dialog --inputbox "Enter Offset X Ratio Value: " 10 30 3>&1 1>&2 2>&3)
what_is_Offset_Ratio_y=$(dialog --inputbox "Enter Offset Y Ratio Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Offset X Ratio Value Is: $what_is_Offset_Ratio_x " >> info_box
echo "Your Offset Y Ratio Value Is: $what_is_Offset_Ratio_y " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_1_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_1_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_1_recoil_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_1_recoil_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_1_recoil_Auto_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_1_recoil_Auto_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_2_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_2_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_2_A_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_2_A_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_2_A_recoil_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_2_A_recoil_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_2_A_recoil_Auto_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_2_A_recoil_Auto_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_2_recoil_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_2_recoil_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetXRatio\" value=\"'${Player_2_recoil_Auto_Offset_X_Ratio}'\" \/>/<add key=\"OffsetXRatio\" value=\"'$what_is_Offset_Ratio_x'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetYRatio\" value=\"'${Player_2_recoil_Auto_Offset_Y_Ratio}'\" \/>/<add key=\"OffsetYRatio\" value=\"'$what_is_Offset_Ratio_y'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Offset_Gunsight_Y_User() {
what_is_Offset_Gunsight_Y=$(dialog --inputbox "Enter Offset Gunsight Y Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Offset Gunsight Y Value Is: $what_is_Offset_Gunsight_Y " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_1_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_1_recoil_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_1_recoil_Auto_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_2_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_2_A_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_2_A_recoil_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_2_Arecoil_Auto_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_2_recoil_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffsetGunsightY\" value=\"'${Player_2_recoil_Auto_Offset_Gunsight_Y}'\" \/>/<add key=\"OffsetGunsightY\" value=\"'$what_is_Offset_Gunsight_Y'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Colour_Match_RGB_User() {
what_is_Colour_Match_RGB=$(dialog --inputbox "Enter Colour Match RGB Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Colour Match RGB Value Is: $what_is_Colour_Match_RGB " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_1_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_1_recoil_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_1_recoil_Auto_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_2_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_2_A_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_2_A_recoil_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_2_Arecoil_Auto_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_2_recoil_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRGB\" value=\"'${Player_2_recoil_Auto_Colour_Match_RGB}'\" \/>/<add key=\"ColourMatchRGB\" value=\"'$what_is_Colour_Match_RGB'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Colour_Match_Range_User() {
what_is_Colour_Match_Range=$(dialog --inputbox "Enter Colour Match Range Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Colour Match Range Value Is: $what_is_Colour_Match_Range " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_1_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_1_recoil_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_1_recoil_Auto_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_2_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_2_A_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_2_A_recoil_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_2_Arecoil_Auto_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_2_recoil_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ColourMatchRange\" value=\"'${Player_2_recoil_Auto_Colour_Match_Range}'\" \/>/<add key=\"ColourMatchRange\" value=\"'$what_is_Colour_Match_Range'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Gangsta_Setting_User() {
what_is_Gangsta_Setting=$(dialog --inputbox "Enter Gangsta Setting Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Gangsta Setting Value Is: $what_is_Gangsta_Setting " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_1_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_1_recoil_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_1_recoil_Auto_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_2_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_2_A_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_2_A_recoil_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_2_Arecoil_Auto_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_2_recoil_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"GangstaSetting\" value=\"'${Player_2_recoil_Auto_Gangsta_Setting}'\" \/>/<add key=\"GangstaSetting\" value=\"'$what_is_Gangsta_Setting'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Res_User() {
what_is_Camera_Res=$(dialog --inputbox "Enter Camera Res Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Res Value Is: $what_is_Camera_Res " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_1_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_1_recoil_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_1_recoil_Auto_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_2_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_2_A_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_2_A_recoil_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_2_Arecoil_Auto_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_2_recoil_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraRes\" value=\"'${Player_2_recoil_Auto_Camera_Res}'\" \/>/<add key=\"CameraRes\" value=\"'$what_is_Camera_Res'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Save_Each_Frame_To_File_User() {
what_is_Save_Each_Frame_To_File=$(dialog --inputbox "Enter Save Each Frame To File Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Save Each Frame To File Value Is: $what_is_Save_Each_Frame_To_File " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_1_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_1_recoil_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_1_recoil_Auto_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_2_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_2_A_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_2_A_recoil_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_2_Arecoil_Auto_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_2_recoil_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"SaveEachFrameToFile\" value=\"'${Player_2_recoil_Auto_Save_Each_Frame_To_File}'\" \/>/<add key=\"SaveEachFrameToFile\" value=\"'$what_is_Save_Each_Frame_To_File'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Offscreen_Reload_User() {
what_is_Offscreen_Reload=$(dialog --inputbox "Enter Offscreen Reload Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Offscreen Reload Value Is: $what_is_Offscreen_Reload " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_1_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_1_recoil_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_1_recoil_Auto_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_2_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_2_A_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_2_A_recoil_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_2_Arecoil_Auto_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_2_recoil_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"OffscreenReload\" value=\"'${Player_2_recoil_Auto_Offscreen_Reload}'\" \/>/<add key=\"OffscreenReload\" value=\"'$what_is_Offscreen_Reload'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Exposure_Auto_User() {
what_is_exposure_Auto=$(dialog --inputbox "Enter Camera Exposure Auto Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Exposure Auto Value Is: $what_is_exposure_Auto " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_1_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_1_recoil_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_1_recoil_Auto_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_2_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_2_A_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_2_A_recoil_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_2_A_recoil_Auto_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_2_recoil_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposureAuto\" value=\"'${Player_2_recoil_Auto_Camera_Exposure_Auto}'\" \/>/<add key=\"CameraExposureAuto\" value=\"'$what_is_exposure_Auto'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Exposure_User() {
what_is_exposure=$(dialog --inputbox "Enter Camera Exposure Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Exposure Value Is: $what_is_exposure " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_1_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_1_recoil_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_1_recoil_Auto_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_2_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_2_A_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_2_A_recoil_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_2_A_recoil_Auto_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_2_recoil_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraExposure\" value=\"'${Player_2_recoil_Auto_Camera_Exposure}'\" \/>/<add key=\"CameraExposure\" value=\"'$what_is_exposure'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Brightness_User() {
what_is_brightnes=$(dialog --inputbox "Enter Camera Brightness Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Brightness Value Is: $what_is_brightnes " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_1_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_1_recoil_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_1_recoil_Auto_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_2_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_2_A_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_2_A_recoil_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_2_Arecoil_Auto_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_2_recoil_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraBrightness\" value=\"'${Player_2_recoil_Auto_Camera_Brightness}'\" \/>/<add key=\"CameraBrightness\" value=\"'$what_is_brightnes'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Zoom_User() {
what_is_Camera_Zoom=$(dialog --inputbox "Enter Camera Zoom Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Zoom Value Is: $what_is_Camera_Zoom " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_1_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_1_recoil_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_1_recoil_Auto_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_2_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_2_A_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_2_A_recoil_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_2_Arecoil_Auto_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_2_recoil_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraZoom\" value=\"'${Player_2_recoil_Auto_Camera_Zoom}'\" \/>/<add key=\"CameraZoom\" value=\"'$what_is_Camera_Zoom'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Contrast_User() {
what_is_contrast=$(dialog --inputbox "Enter Camera Contrast Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Contrast Value Is: $what_is_contrast " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_1_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_1_recoil_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_1_recoil_Auto_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_2_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_2_A_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_2_A_recoil_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_2_A_recoil_Auto_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_2_recoil_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraContrast\" value=\"'${Player_2_recoil_Auto_Camera_Contrast}'\" \/>/<add key=\"CameraContrast\" value=\"'$what_is_contrast'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Saturation_User() {
what_is_Camera_Saturation=$(dialog --inputbox "Enter Camera Saturation Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Saturation Value Is: $what_is_Camera_Saturation " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_1_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_1_recoil_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_1_recoil_Auto_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_2_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_2_A_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_2_A_recoil_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_2_Arecoil_Auto_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_2_recoil_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraSaturation\" value=\"'${Player_2_recoil_Auto_Camera_Saturation}'\" \/>/<add key=\"CameraSaturation\" value=\"'$what_is_Camera_Saturation'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_Hue_User() {
what_is_Camera_Hue=$(dialog --inputbox "Enter Camera Hue Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera Hue Value Is: $what_is_Camera_Hue " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_1_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_1_recoil_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_1_recoil_Auto_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_2_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_2_A_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_2_A_recoil_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_2_Arecoil_Auto_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_2_recoil_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraHue\" value=\"'${Player_2_recoil_Auto_Camera_Hue}'\" \/>/<add key=\"CameraHue\" value=\"'$what_is_Camera_Hue'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_White_Balance_Auto_User() {
what_is_Camera_White_Balance_Auto=$(dialog --inputbox "Enter Camera White Balance Auto Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera White Balance Auto Value Is: $what_is_Camera_White_Balance_Auto " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_1_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_1_recoil_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_1_recoil_Auto_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_2_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_2_A_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_2_A_recoil_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_2_Arecoil_Auto_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_2_recoil_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalanceAuto\" value=\"'${Player_2_recoil_Auto_Camera_White_Balance_Auto}'\" \/>/<add key=\"CameraWhiteBalanceAuto\" value=\"'$what_is_Camera_White_Balance_Auto'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Camera_White_Balance_User() {
what_is_Camera_White_Balance=$(dialog --inputbox "Enter Camera White Balance Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Camera White Balance Value Is: $what_is_Camera_White_Balance " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_1_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_1_recoil_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_1_recoil_Auto_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_2_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_2_A_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_2_A_recoil_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_2_Arecoil_Auto_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_2_recoil_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"CameraWhiteBalance\" value=\"'${Player_2_recoil_Auto_Camera_White_Balance}'\" \/>/<add key=\"CameraWhiteBalance\" value=\"'$what_is_Camera_White_Balance'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Minimum_Blob_Size_User() {
what_is_Minimum_Blob_Size=$(dialog --inputbox "Enter Minimum Blob Size Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Minimum Blob Size Auto Value Is: $what_is_Minimum_Blob_Size " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_1_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_1_recoil_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_1_recoil_Auto_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_2_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_2_A_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_2_A_recoil_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_2_Arecoil_Auto_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_2_recoil_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MinimumBlobSize\" value=\"'${Player_2_recoil_Auto_Minimum_Blob_Size}'\" \/>/<add key=\"MinimumBlobSize\" value=\"'$what_is_Minimum_Blob_Size'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Enable_Anti_Jitter_User() {
what_is_enable_anti_jitter=$(dialog --inputbox "Enter Enable Anti Jitter Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Enable Anti Jitter Value Is: $what_is_enable_anti_jitter " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_1_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_1_recoil_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_1_recoil_Auto_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_2_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_2_A_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_2_A_recoil_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_2_A_recoil_Auto_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_2_recoil_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableAntiJitter\" value=\"'${Player_2_recoil_Auto_Enable_Anti_Jitter}'\" \/>/<add key=\"EnableAntiJitter\" value=\"'$what_is_enable_anti_jitter'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Anti_Jitter_Percentag_User() {
what_is_Anti_Jitter_Percentag=$(dialog --inputbox "Enter Anti Jitter Percentag Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Anti Jitter Percentag Value Is: $what_is_Anti_Jitter_Percentag " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_1_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_1_recoil_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_1_recoil_Auto_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_2_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_2_A_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_2_A_recoil_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_2_Arecoil_Auto_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_2_recoil_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AntiJitterPercentag\" value=\"'${Player_2_recoil_Auto_Anti_Jitter_Percentag}'\" \/>/<add key=\"AntiJitterPercentag\" value=\"'$what_is_Anti_Jitter_Percentag'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Match_Only_Where_Pointing_User() {
what_is_Match_Only_Where_Pointing=$(dialog --inputbox "Enter Match Only Where Pointing Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Match Only Where Pointing Value Is: $what_is_Match_Only_Where_Pointing " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_1_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_1_recoil_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_1_recoil_Auto_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_2_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_2_A_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_2_A_recoil_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_2_Arecoil_Auto_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_2_recoil_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"MatchOnlyWherePointing\" value=\"'${Player_2_recoil_Auto_Match_Only_Where_Pointing}'\" \/>/<add key=\"MatchOnlyWherePointing\" value=\"'$what_is_Match_Only_Where_Pointing'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Console_Output_Verbose_0_to_2_User() {
what_is_Console_Output_Verbose_0_to_2=$(dialog --inputbox "Enter Console Output Verbose 0 to 2 Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Console Output Verbose 0 to 2 Value Is: $what_is_Console_Output_Verbose_0_to_2 " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_1_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_1_recoil_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_1_recoil_Auto_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_2_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_2_A_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_2_A_recoil_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_2_Arecoil_Auto_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_2_recoil_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ConsoleOutputVerbose0to2\" value=\"'${Player_2_recoil_Auto_Console_Output_Verbose_0_to_2}'\" \/>/<add key=\"ConsoleOutputVerbose0to2\" value=\"'$what_is_Console_Output_Verbose_0_to_2'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

#====================================================================================================================================================================================================================================================================================================================

function Button_Trigger_User() {
what_is_Button_Trigger=$(dialog --inputbox "Enter Button_Trigger Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Trigger Value Is: $what_is_Button_Trigger " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_1_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_1_recoil_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_1_recoil_Auto_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_2_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_2_A_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_2_A_recoil_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_2_Arecoil_Auto_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_2_recoil_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTrigger\" value=\"'${Player_2_recoil_Auto_Button_Trigger}'\" \/>/<add key=\"ButtonTrigger\" value=\"'$what_is_Button_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Pump_Action_User() {
what_is_Button_Pump_Action=$(dialog --inputbox "Enter Button Pump Action Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Pump Action Value Is: $what_is_Button_Pump_Action " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_1_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_1_recoil_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_1_recoil_Auto_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_2_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_2_A_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_2_A_recoil_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_2_Arecoil_Auto_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_2_recoil_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpAction\" value=\"'${Player_2_recoil_Auto_Button_Pump_Action}'\" \/>/<add key=\"ButtonPumpAction\" value=\"'$what_is_Button_Pump_Action'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Front_Left_User() {
what_is_Button_Front_Left=$(dialog --inputbox "Enter Button Front Left Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Front Left Value Is: $what_is_Button_Front_Left " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_1_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_1_recoil_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_1_recoil_Auto_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_2_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_2_A_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_2_A_recoil_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_2_Arecoil_Auto_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_2_recoil_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeft\" value=\"'${Player_2_recoil_Auto_Button_Front_Left}'\" \/>/<add key=\"ButtonFrontLeft\" value=\"'$what_is_Button_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Rear_Left_User() {
what_is_Button_Rear_Left=$(dialog --inputbox "Enter Button Rear Left Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Rear Left Value Is: $what_is_Button_Rear_Left " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_1_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_1_recoil_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_1_recoil_Auto_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_2_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_2_A_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_2_A_recoil_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_2_Arecoil_Auto_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_2_recoil_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeft\" value=\"'${Player_2_recoil_Auto_Button_Rear_Left}'\" \/>/<add key=\"ButtonRearLeft\" value=\"'$what_is_Button_Rear_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Front_Right_User() {
what_is_Button_Front_Right=$(dialog --inputbox "Enter Button Front Right Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Front Right Value Is: $what_is_Button_Front_Right " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_1_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_1_recoil_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_1_recoil_Auto_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_2_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_2_A_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_2_A_recoil_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_2_Arecoil_Auto_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_2_recoil_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRight\" value=\"'${Player_2_recoil_Auto_Button_Front_Right}'\" \/>/<add key=\"ButtonFrontRight\" value=\"'$what_is_Button_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Rear_Right_User() {
what_is_Button_Rear_Right=$(dialog --inputbox "Enter Button Rear Right Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Rear Right Value Is: $what_is_Button_Rear_Right " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_1_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_1_recoil_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_1_recoil_Auto_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_2_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_2_A_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_2_A_recoil_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_2_Arecoil_Auto_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_2_recoil_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRight\" value=\"'${Player_2_recoil_Auto_Button_Rear_Right}'\" \/>/<add key=\"ButtonRearRight\" value=\"'$what_is_Button_Rear_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Up_User() {
what_is_Button_Up=$(dialog --inputbox "Enter Button Up Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Up Value Is: $what_is_Button_Up " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_1_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_1_recoil_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_1_recoil_Auto_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_2_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_2_A_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_2_A_recoil_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_2_Arecoil_Auto_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_2_recoil_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUp\" value=\"'${Player_2_recoil_Auto_Button_Up}'\" \/>/<add key=\"ButtonUp\" value=\"'$what_is_Button_Up'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Down_User() {
what_is_Button_Down=$(dialog --inputbox "Enter Button Down Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Down Value Is: $what_is_Button_Down " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_1_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_1_recoil_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_1_recoil_Auto_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_2_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_2_A_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_2_A_recoil_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_2_Arecoil_Auto_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_2_recoil_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDown\" value=\"'${Player_2_recoil_Auto_Button_Down}'\" \/>/<add key=\"ButtonDown\" value=\"'$what_is_Button_Down'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Left_User() {
what_is_Button_Left=$(dialog --inputbox "Enter Button Left Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Left Value Is: $what_is_Button_Left " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_1_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_1_recoil_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_1_recoil_Auto_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_2_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_2_A_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_2_A_recoil_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_2_Arecoil_Auto_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_2_recoil_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeft\" value=\"'${Player_2_recoil_Auto_Button_Left}'\" \/>/<add key=\"ButtonLeft\" value=\"'$what_is_Button_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Right_User() {
what_is_Button_Right=$(dialog --inputbox "Enter Button Right Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Right Value Is: $what_is_Button_Right " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_1_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_1_recoil_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_1_recoil_Auto_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_2_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_2_A_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_2_A_recoil_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_2_Arecoil_Auto_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_2_recoil_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRight\" value=\"'${Player_2_recoil_Auto_Button_Right}'\" \/>/<add key=\"ButtonRight\" value=\"'$what_is_Button_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Trigger_Mod_User() {
what_is_Trigger_Mod=$(dialog --inputbox "Enter Trigger Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Trigger Mod Value Is: $what_is_Trigger_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_1_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_1_recoil_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_1_recoil_Auto_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_2_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_2_A_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_2_A_recoil_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_2_Arecoil_Auto_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_2_recoil_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerMod\" value=\"'${Player_2_recoil_Auto_Trigger_Mod}'\" \/>/<add key=\"TriggerMod\" value=\"'$what_is_Trigger_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Pump_Action_Mod_User() {
what_is_Pump_Action_Mod=$(dialog --inputbox "Enter Pump Action Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Pump Action Mod Value Is: $what_is_Pump_Action_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_1_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_1_recoil_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_1_recoil_Auto_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_2_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_2_A_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_2_A_recoil_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_2_Arecoil_Auto_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_2_recoil_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionMod\" value=\"'${Player_2_recoil_Auto_Pump_Action_Mod}'\" \/>/<add key=\"PumpActionMod\" value=\"'$what_is_Pump_Action_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Front_Left_Mod_User() {
what_is_Front_Left_Mod=$(dialog --inputbox "Enter Front Left Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Front Left Mod Value Is: $what_is_Front_Left_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_1_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_1_recoil_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_1_recoil_Auto_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_2_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_2_A_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_2_A_recoil_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_2_Arecoil_Auto_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_2_recoil_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftMod\" value=\"'${Player_2_recoil_Auto_Front_Left_Mod}'\" \/>/<add key=\"FrontLeftMod\" value=\"'$what_is_Front_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Rear_Left_Mod_User() {
what_is_Rear_Left_Mod=$(dialog --inputbox "Enter Rear Left Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Rear Left Mod Value Is: $what_is_Rear_Left_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_1_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_1_recoil_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_1_recoil_Auto_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_2_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_2_A_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_2_A_recoil_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_2_Arecoil_Auto_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_2_recoil_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftMod\" value=\"'${Player_2_recoil_Auto_Rear_Left_Mod}'\" \/>/<add key=\"RearLeftMod\" value=\"'$what_is_Rear_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Front_Right_Mod_User() {
what_is_Front_Right_Mod=$(dialog --inputbox "Enter Front Right Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Front Right Mod Value Is: $what_is_Front_Right_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_1_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_1_recoil_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_1_recoil_Auto_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_2_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_2_A_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_2_A_recoil_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_2_Arecoil_Auto_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_2_recoil_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightMod\" value=\"'${Player_2_recoil_Auto_Front_Right_Mod}'\" \/>/<add key=\"FrontRightMod\" value=\"'$what_is_Front_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Rear_Right_Mod_User() {
what_is_Rear_Right_Mod=$(dialog --inputbox "Enter Rear Right Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Rear Right Mod Value Is: $what_is_Rear_Right_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_1_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_1_recoil_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_1_recoil_Auto_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_2_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_2_A_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_2_A_recoil_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_2_Arecoil_Auto_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_2_recoil_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightMod\" value=\"'${Player_2_recoil_Auto_Rear_Right_Mod}'\" \/>/<add key=\"RearRightMod\" value=\"'$what_is_Rear_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Up_Mod_User() {
what_is_Up_Mod=$(dialog --inputbox "Enter Up Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Up Mod Value Is: $what_is_Up_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_1_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_1_recoil_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_1_recoil_Auto_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_2_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_2_A_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_2_A_recoil_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_2_Arecoil_Auto_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_2_recoil_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpMod\" value=\"'${Player_2_recoil_Auto_Up_Mod}'\" \/>/<add key=\"UpMod\" value=\"'$what_is_Up_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Down_Mod_User() {
what_is_Down_Mod=$(dialog --inputbox "Enter Down Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Down Mod Value Is: $what_is_Down_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_1_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_1_recoil_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_1_recoil_Auto_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_2_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_2_A_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_2_A_recoil_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_2_Arecoil_Auto_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_2_recoil_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownMod\" value=\"'${Player_2_recoil_Auto_Down_Mod}'\" \/>/<add key=\"DownMod\" value=\"'$what_is_Down_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Left_Mod_User() {
what_is_Left_Mod=$(dialog --inputbox "Enter Left Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Left Mod Value Is: $what_is_Left_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_1_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_1_recoil_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_1_recoil_Auto_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_2_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_2_A_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_2_A_recoil_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_2_Arecoil_Auto_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_2_recoil_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftMod\" value=\"'${Player_2_recoil_Auto_Left_Mod}'\" \/>/<add key=\"LeftMod\" value=\"'$what_is_Left_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Right_Mod_User() {
what_is_Right_Mod=$(dialog --inputbox "Enter Right Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Right Mod Value Is: $what_is_Right_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_1_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_1_recoil_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_1_recoil_Auto_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_2_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_2_A_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_2_A_recoil_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_2_Arecoil_Auto_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_2_recoil_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightMod\" value=\"'${Player_2_recoil_Auto_Right_Mod}'\" \/>/<add key=\"RightMod\" value=\"'$what_is_Right_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

#====================================================================================================================================================================================================================================================================================================================

function Button_Trigger_Offscreen_User() {
what_is_Button_Trigger_Offscreen=$(dialog --inputbox "Enter Button Trigger Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Trigger Offscreen Value Is: $what_is_Button_Trigger_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_1_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_1_recoil_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_2_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_2_A_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_2_A_recoil_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_2_recoil_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonTriggerOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Trigger_Offscreen}'\" \/>/<add key=\"ButtonTriggerOffscreen\" value=\"'$what_is_Button_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Pump_Action_Offscreen_User() {
what_is_Button_Pump_Action_Offscreen=$(dialog --inputbox "Enter Button Pump Action Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Pump Action Offscreen Value Is: $what_is_Button_Pump_Action_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_1_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_1_recoil_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_2_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_2_A_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_2_A_recoil_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_2_recoil_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonPumpActionOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Pump_Action_Offscreen}'\" \/>/<add key=\"ButtonPumpActionOffscreen\" value=\"'$what_is_Button_Pump_Action_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Front_Left_Offscreen_User() {
what_is_Button_Front_Left_Offscreen=$(dialog --inputbox "Enter Button Front Left Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Front Left Offscreen Value Is: $what_is_Button_Front_Left_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_1_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_1_recoil_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_2_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_2_A_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_2_A_recoil_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_2_recoil_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontLeftOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Front_Left_Offscreen}'\" \/>/<add key=\"ButtonFrontLeftOffscreen\" value=\"'$what_is_Button_Front_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Rear_Left_Offscreen_User() {
what_is_Button_Rear_Left_Offscreen=$(dialog --inputbox "Enter Button Rear Left Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Rear Left Offscreen Value Is: $what_is_Button_Rear_Left_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_1_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_1_recoil_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_2_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_2_A_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_2_A_recoil_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_2_recoil_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearLeftOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Rear_Left_Offscreen}'\" \/>/<add key=\"ButtonRearLeftOffscreen\" value=\"'$what_is_Button_Rear_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Front_Right_Offscreen_User() {
what_is_Button_Front_Right_Offscreen=$(dialog --inputbox "Enter Button Front Right Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Front Right Offscreen Value Is: $what_is_Button_Front_Right_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_1_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_1_recoil_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_A_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_A_recoil_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_recoil_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Front_Right_Offscreen_User() {
what_is_Button_Front_Right_Offscreen=$(dialog --inputbox "Enter Button Front Right Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Front Right Offscreen Value Is: $what_is_Button_Front_Right_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_1_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_1_recoil_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_A_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_A_recoil_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_recoil_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonFrontRightOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Front_Right_Offscreen}'\" \/>/<add key=\"ButtonFrontRightOffscreen\" value=\"'$what_is_Button_Front_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Rear_Right_Offscreen_User() {
what_is_Button_Rear_Right_Offscreen=$(dialog --inputbox "Enter Button Rear Right Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Rear Right Offscreen Value Is: $what_is_Button_Rear_Right_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_1_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_1_recoil_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_2_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_2_A_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_2_A_recoil_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_2_recoil_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRearRightOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Rear_Right_Offscreen}'\" \/>/<add key=\"ButtonRearRightOffscreen\" value=\"'$what_is_Button_Rear_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Up_Offscreen_User() {
what_is_Button_Up_Offscreen=$(dialog --inputbox "Enter Button Up Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Up Offscreen Value Is: $what_is_Button_Up_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_1_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_1_recoil_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_2_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_2_A_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_2_A_recoil_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_2_recoil_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonUpOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Up_Offscreen}'\" \/>/<add key=\"ButtonUpOffscreen\" value=\"'$what_is_Button_Up_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Down_Offscreen_User() {
what_is_Button_Down_Offscreen=$(dialog --inputbox "Enter Button Down Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Down Offscreen Value Is: $what_is_Button_Down_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_1_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_1_recoil_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_2_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_2_A_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_2_A_recoil_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_2_recoil_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonDownOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Down_Offscreen}'\" \/>/<add key=\"ButtonDownOffscreen\" value=\"'$what_is_Button_Down_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Left_Offscreen_User() {
what_is_Button_Left_Offscreen=$(dialog --inputbox "Enter Button Left Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Left Offscreen Value Is: $what_is_Button_Left_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_1_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_1_recoil_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_2_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_2_A_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_2_A_recoil_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_2_recoil_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonLeftOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Left_Offscreen}'\" \/>/<add key=\"ButtonLeftOffscreen\" value=\"'$what_is_Button_Left_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Button_Right_Offscreen_User() {
what_is_Button_Right_Offscreen=$(dialog --inputbox "Enter Button Right Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Button Right Offscreen Value Is: $what_is_Button_Right_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_1_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_1_recoil_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_1_recoil_Auto_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_2_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_2_A_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_2_A_recoil_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_2_Arecoil_Auto_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_2_recoil_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"ButtonRightOffscreen\" value=\"'${Player_2_recoil_Auto_Button_Right_Offscreen}'\" \/>/<add key=\"ButtonRightOffscreen\" value=\"'$what_is_Button_Right_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

#====================================================================================================================================================================================================================================================================================================================

function Trigger_Offscreen_Mod_User() {
what_is_Trigger_Offscreen_Mod=$(dialog --inputbox "Enter Trigger Offscreen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Trigger Offscreen Mod Value Is: $what_is_Trigger_Offscreen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_1_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_1_recoil_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_1_recoil_Auto_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_2_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_2_A_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_2_A_recoil_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_2_recoil_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerOffscreenMod\" value=\"'${Player_2_recoil_Auto_Trigger_Offscreen_Mod}'\" \/>/<add key=\"TriggerOffscreenMod\" value=\"'$what_is_Trigger_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Pump_Action_Offscreen_Mod_User() {
what_is_Pump_Action_Offscreen_Mod=$(dialog --inputbox "Enter Pump Action Offscreen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Pump Action Offscreen Mod Value Is: $what_is_Pump_Action_Offscreen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_1_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_1_recoil_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_1_recoil_Auto_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_2_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_2_A_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_2_A_recoil_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_2_recoil_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"PumpActionOffscreenMod\" value=\"'${Player_2_recoil_Auto_Pump_Action_Offscreen_Mod}'\" \/>/<add key=\"PumpActionOffscreenMod\" value=\"'$what_is_Pump_Action_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Front_Left_Offscreen_Mod_User() {
what_is_Front_Left_Offscreen_Mod=$(dialog --inputbox "Enter Front Left Offscreen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Front Left Offscreen Mod Value Is: $what_is_Front_Left_Offscreen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_1_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_1_recoil_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_1_recoil_Auto_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_2_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_2_A_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_2_A_recoil_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_2_recoil_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontLeftOffscreenMod\" value=\"'${Player_2_recoil_Auto_Front_Left_Offscreen_Mod}'\" \/>/<add key=\"FrontLeftOffscreenMod\" value=\"'$what_is_Front_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Rear_Left_Offscreen_Mod_User() {
what_is_Rear_Left_Offscreen_Mod=$(dialog --inputbox "Enter Rear Left Offscreen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Rear Left Offscreen Mod Value Is: $what_is_Rear_Left_Offscreen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_1_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_1_recoil_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_1_recoil_Auto_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_2_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_2_A_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_2_A_recoil_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_2_recoil_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearLeftOffscreenMod\" value=\"'${Player_2_recoil_Auto_Rear_Left_Offscreen_Mod}'\" \/>/<add key=\"RearLeftOffscreenMod\" value=\"'$what_is_Rear_Left_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Front_Right_Offscreen_Mod_User() {
what_is_Front_Right_Offscreen_Mod=$(dialog --inputbox "Enter Front Right Offscreen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Front Right Offscreen Mod Value Is: $what_is_Front_Right_Offscreen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_1_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_1_recoil_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_1_recoil_Auto_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_2_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_2_A_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_2_A_recoil_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_2_recoil_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"FrontRightOffscreenMod\" value=\"'${Player_2_recoil_Auto_Front_Right_Offscreen_Mod}'\" \/>/<add key=\"FrontRightOffscreenMod\" value=\"'$what_is_Front_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Rear_Right_Offscreen_Mod_User() {
what_is_Rear_Right_Offscreen_Mod=$(dialog --inputbox "Enter Rear Right Offscreen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Rear Right Offscreen Mod Value Is: $what_is_Rear_Right_Offscreen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_1_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_1_recoil_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_1_recoil_Auto_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_2_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_2_A_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_2_A_recoil_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_2_recoil_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RearRightOffscreenMod\" value=\"'${Player_2_recoil_Auto_Rear_Right_Offscreen_Mod}'\" \/>/<add key=\"RearRightOffscreenMod\" value=\"'$what_is_Rear_Right_Offscreen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Up_Off_screen_Mod_User() {
what_is_Up_Off_screen_Mod=$(dialog --inputbox "Enter Up Off screen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Up Off screen Mod Value Is: $what_is_Up_Off_screen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_1_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_1_recoil_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_1_recoil_Auto_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_2_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_2_A_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_2_A_recoil_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_2_recoil_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"UpOffscreenMod\" value=\"'${Player_2_recoil_Auto_Up_Off_screen_Mod}'\" \/>/<add key=\"UpOffscreenMod\" value=\"'$what_is_Up_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Down_Off_screen_Mod_User() {
what_is_Down_Off_screen_Mod=$(dialog --inputbox "Enter Down Off screen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Down Off screen Mod Value Is: $what_is_Down_Off_screen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_1_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_1_recoil_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_1_recoil_Auto_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_2_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_2_A_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_2_A_recoil_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_2_recoil_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"DownOffscreenMod\" value=\"'${Player_2_recoil_Auto_Down_Off_screen_Mod}'\" \/>/<add key=\"DownOffscreenMod\" value=\"'$what_is_Down_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Left_Off_screen_Mod_User() {
what_is_Left_Off_screen_Mod=$(dialog --inputbox "Enter Left Off screen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Left Off screen Mod Value Is: $what_is_Left_Off_screen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_1_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_1_recoil_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_1_recoil_Auto_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_2_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_2_A_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_2_A_recoil_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_2_recoil_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"LeftOffscreenMod\" value=\"'${Player_2_recoil_Auto_Left_Off_screen_Mod}'\" \/>/<add key=\"LeftOffscreenMod\" value=\"'$what_is_Left_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Right_Off_screen_Mod_User() {
what_is_Right_Off_screen_Mod=$(dialog --inputbox "Enter Right Off screen Mod Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Right Off screen Mod Value Is: $what_is_Right_Off_screen_Mod " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_1_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_1_recoil_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_1_recoil_Auto_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_2_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_2_A_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_2_A_recoil_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_2_Arecoil_Auto_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_2_recoil_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RightOffscreenMod\" value=\"'${Player_2_recoil_Auto_Right_Off_screen_Mod}'\" \/>/<add key=\"RightOffscreenMod\" value=\"'$what_is_Right_Off_screen_Mod'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

#====================================================================================================================================================================================================================================================================================================================

function I_Agree_Recoil_Terms_In_License_User() {
what_is_I_Agree_Recoil_Terms_In_License=$(dialog --inputbox "Enter I Agree Recoil Terms In License Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your I Agree Recoil Terms In License Value Is: $what_is_I_Agree_Recoil_Terms_In_License " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_1_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_1_recoil_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_1_recoil_Auto_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_2_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_2_A_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_2_A_recoil_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_2_Arecoil_Auto_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_2_recoil_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'${Player_2_recoil_Auto_I_Agree_Recoil_Terms_In_License}'\" \/>/<add key=\"IAgreeRecoilTermsInLicense\" value=\"'$what_is_I_Agree_Recoil_Terms_In_License'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Enable_Recoil_User() {
what_is_Enable_Recoil=$(dialog --inputbox "Enter Enable Recoil Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Enable Recoil Value Is: $what_is_Enable_Recoil " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_1_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_1_recoil_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_1_recoil_Auto_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_2_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_2_A_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_2_A_recoil_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_2_Arecoil_Auto_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_2_recoil_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableRecoil\" value=\"'${Player_2_recoil_Auto_Enable_Recoil}'\" \/>/<add key=\"EnableRecoil\" value=\"'$what_is_Enable_Recoil'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Trigger_User() {
what_is_Recoil_Trigger=$(dialog --inputbox "Enter Recoil Trigger Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Trigger Value Is: $what_is_Recoil_Trigger " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_1_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_1_recoil_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_1_recoil_Auto_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_2_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_2_A_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_2_A_recoil_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_2_Arecoil_Auto_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_2_recoil_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTrigger\" value=\"'${Player_2_recoil_Auto_Recoil_Trigger}'\" \/>/<add key=\"RecoilTrigger\" value=\"'$what_is_Recoil_Trigger'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Trigger_Offscreen_User() {
what_is_Recoil_Trigger_Offscreen=$(dialog --inputbox "Enter Recoil Trigger Offscreen Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Trigger Offscreen Value Is: $what_is_Recoil_Trigger_Offscreen " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_1_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_1_recoil_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_1_recoil_Auto_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_2_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_2_A_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_2_A_recoil_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_2_Arecoil_Auto_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_2_recoil_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilTriggerOffscreen\" value=\"'${Player_2_recoil_Auto_Recoil_Trigger_Offscreen}'\" \/>/<add key=\"RecoilTriggerOffscreen\" value=\"'$what_is_Recoil_Trigger_Offscreen'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Pump_Action_On_Event_User() {
what_is_Recoil_Pump_Action_On_Event=$(dialog --inputbox "Enter Recoil Pump Action On Event Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Pump Action On Event Value Is: $what_is_Recoil_Pump_Action_On_Event " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_1_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_1_recoil_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_1_recoil_Auto_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_2_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_2_A_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_2_A_recoil_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_2_Arecoil_Auto_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_2_recoil_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOnEvent\" value=\"'${Player_2_recoil_Auto_Recoil_Pump_Action_On_Event}'\" \/>/<add key=\"RecoilPumpActionOnEvent\" value=\"'$what_is_Recoil_Pump_Action_On_Event'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Pump_Action_Off_Event_User() {
what_is_Recoil_Pump_Action_Off_Event=$(dialog --inputbox "Enter Recoil Pump Action Off Event Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Pump Action Off Event Value Is: $what_is_Recoil_Pump_Action_Off_Event " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_1_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_1_recoil_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_1_recoil_Auto_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_2_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_2_A_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_2_A_recoil_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_2_Arecoil_Auto_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_2_recoil_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilPumpActionOffEvent\" value=\"'${Player_2_recoil_Auto_Recoil_Pump_Action_Off_Event}'\" \/>/<add key=\"RecoilPumpActionOffEvent\" value=\"'$what_is_Recoil_Pump_Action_Off_Event'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Front_Left_User() {
what_is_Recoil_Front_Left=$(dialog --inputbox "Enter Recoil Front Left Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Front Left Value Is: $what_is_Recoil_Front_Left " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_1_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_1_recoil_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_1_recoil_Auto_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_2_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_2_A_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_2_A_recoil_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_2_Arecoil_Auto_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_2_recoil_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontLeft\" value=\"'${Player_2_recoil_Auto_Recoil_Front_Left}'\" \/>/<add key=\"RecoilFrontLeft\" value=\"'$what_is_Recoil_Front_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Front_Right_User() {
what_is_Recoil_Front_Right=$(dialog --inputbox "Enter Recoil Front Right Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Front Right Value Is: $what_is_Recoil_Front_Right " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_1_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_1_recoil_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_1_recoil_Auto_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_2_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_2_A_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_2_A_recoil_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_2_Arecoil_Auto_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_2_recoil_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilFrontRight\" value=\"'${Player_2_recoil_Auto_Recoil_Front_Right}'\" \/>/<add key=\"RecoilFrontRight\" value=\"'$what_is_Recoil_Front_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Back_Left_User() {
what_is_Recoil_Back_Left=$(dialog --inputbox "Enter Recoil Back Left Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Back Left Value Is: $what_is_Recoil_Back_Left " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_1_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_1_recoil_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_1_recoil_Auto_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_2_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_2_A_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_2_A_recoil_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_2_Arecoil_Auto_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_2_recoil_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackLeft\" value=\"'${Player_2_recoil_Auto_Recoil_Back_Left}'\" \/>/<add key=\"RecoilBackLeft\" value=\"'$what_is_Recoil_Back_Left'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Back_Right_User() {
what_is_Recoil_Back_Right=$(dialog --inputbox "Enter Recoil Back Right Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Back Right Value Is: $what_is_Recoil_Back_Right " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_1_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_1_recoil_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_1_recoil_Auto_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_2_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_2_A_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_2_A_recoil_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_2_Arecoil_Auto_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_2_recoil_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilBackRight\" value=\"'${Player_2_recoil_Auto_Recoil_Back_Right}'\" \/>/<add key=\"RecoilBackRight\" value=\"'$what_is_Recoil_Back_Right'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Recoil_Strength_User() {
what_is_Recoil_Strength=$(dialog --inputbox "Enter Recoil Strength Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Recoil Strength Value Is: $what_is_Recoil_Strength " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_1_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_1_recoil_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_1_recoil_Auto_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_2_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_2_A_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_2_A_recoil_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_2_Arecoil_Auto_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_2_recoil_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"RecoilStrength\" value=\"'${Player_2_recoil_Auto_Recoil_Strength}'\" \/>/<add key=\"RecoilStrength\" value=\"'$what_is_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Trigger_Recoil_Normal_Or_Repeat_User() {
what_is_Trigger_Recoil_Normal_Or_Repeat=$(dialog --inputbox "Enter Trigger Recoil Normal Or Repeat Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Trigger Recoil Normal Or Repeat Value Is: $what_is_Trigger_Recoil_Normal_Or_Repeat " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_1_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_1_recoil_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_1_recoil_Auto_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_2_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_2_A_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_2_A_recoil_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_2_Arecoil_Auto_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_2_recoil_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'${Player_2_recoil_Auto_Trigger_Recoil_Normal_Or_Repeat}'\" \/>/<add key=\"TriggerRecoilNormalOrRepeat\" value=\"'$what_is_Trigger_Recoil_Normal_Or_Repeat'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Auto_Recoil_Strength_User() {
what_is_Auto_Recoil_Strength=$(dialog --inputbox "Enter Auto Recoil Strength Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Auto Recoil Strength Value Is: $what_is_Auto_Recoil_Strength " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_1_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_1_recoil_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_1_recoil_Auto_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_2_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_2_A_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_2_A_recoil_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_2_Arecoil_Auto_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_2_recoil_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStrength\" value=\"'${Player_2_recoil_Auto_Auto_Recoil_Strength}'\" \/>/<add key=\"AutoRecoilStrength\" value=\"'$what_is_Auto_Recoil_Strength'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Auto_Recoil_Start_Delay_User() {
what_is_Auto_Recoil_Start_Delay=$(dialog --inputbox "Enter Auto Recoil Start Delay Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Auto Recoil Start Delay Value Is: $what_is_Auto_Recoil_Start_Delay " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_1_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_1_recoil_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_1_recoil_Auto_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_2_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_2_A_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_2_A_recoil_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_2_Arecoil_Auto_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_2_recoil_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilStartDelay\" value=\"'${Player_2_recoil_Auto_Auto_Recoil_Start_Delay}'\" \/>/<add key=\"AutoRecoilStartDelay\" value=\"'$what_is_Auto_Recoil_Start_Delay'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Auto_Recoil_Delay_Between_Pulses_User() {
what_is_Auto_Recoil_Delay_Between_Pulses=$(dialog --inputbox "Enter Auto Recoil Delay Between Pulses Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Auto Recoil Delay Between Pulses Value Is: $what_is_Auto_Recoil_Delay_Between_Pulses " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_1_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_1_recoil_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_1_recoil_Auto_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_2_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_2_A_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_2_A_recoil_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_2_Arecoil_Auto_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_2_recoil_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'${Player_2_recoil_Auto_Auto_Recoil_Delay_Between_Pulses}'\" \/>/<add key=\"AutoRecoilDelayBetweenPulses\" value=\"'$what_is_Auto_Recoil_Delay_Between_Pulses'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

#====================================================================================================================================================================================================================================================================================================================

function Enable_Calibration_User() {
what_is_Enable_Calibration=$(dialog --inputbox "Enter Enable Calibration Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Enable Calibration Value Is: $what_is_Enable_Calibration " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_1_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_1_recoil_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_1_recoil_Auto_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_2_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_2_A_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_2_A_recoil_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_2_Arecoil_Auto_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_2_recoil_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"EnableCalibration\" value=\"'${Player_2_recoil_Auto_Enable_Calibration}'\" \/>/<add key=\"EnableCalibration\" value=\"'$what_is_Enable_Calibration'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function Auto_Save_Calibration_In_Lightgun_User() {
what_is_Auto_Save_Calibration_In_Lightgun=$(dialog --inputbox "Enter Auto Save Calibration In Lightgun Value: " 10 30 3>&1 1>&2 2>&3)
echo "Your Auto Save Calibration In Lightgun Value Is: $what_is_Auto_Save_Calibration_In_Lightgun " >> info_box
dialog --ok-button Done --aspect 10 --textbox info_box 0 0
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_1_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player1/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_1_recoil_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player1recoil/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_1_recoil_Auto_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player1recoilauto/LightgunMono.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_2_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player2/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_2_A_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player2A/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_2_A_recoil_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player2Arecoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_2_Arecoil_Auto_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player2ArecoilAuto/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_2_recoil_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player2recoil/LightgunMono2.exe.config >/dev/null 2>&1
perl -pi -w -e 's/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'${Player_2_recoil_Auto_Auto_Save_Calibration_In_Lightgun}'\" \/>/<add key=\"AutoSaveCalibrationInLightgun\" value=\"'$what_is_Auto_Save_Calibration_In_Lightgun'\" \/>/g;' /home/pi/Lightgun/Player2recoilauto/LightgunMono2.exe.config >/dev/null 2>&1
sudo rm info_box
dialog --infobox "...finished..." 3 20 ; sleep 2
exit
}

function custom_menu() {
	    local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " SINDEN LIGHTGUN CUSTOM SETTINGS MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "" 20 80 80 \
            1 "Install Sinden LightGun patch" \
    	    2 "Uninstall Sinden LightGun patch" \
            3 "Install Sinden lr-mame2016 Ver (From Source)" \
            4 "Install Sinden lr-genesis-plus-gx Ver (From Source)" \
            5 "Install All Mame 2016 CFG Files" \
            6 "Install Mame 2016 Bezzel Files" \
            7 "Turn Off 64Bit Support (To install lr-mame2016/genesis)"\
            8 "Turn On 64Bit Support (lr-mame2016/genesis will not work)" \
	        2>&1 > /dev/tty)
        case "$choice" in
            1) install_patch;;
	    2) uninstall_patch;;
            3) mame2016_install;;
            4) genesis_install;;
            5) mame_2016_cfg;;
            6) mame_bezzel;;
            7) 64bit_off;;
            8) 64bit_on;;
            *) break ;;
        esac
    done
}

function 64bit_off() {
	dialog --infobox "...Applying..." 3 20 ; sleep 2
	echo "Your Retropie is about to reboot so that the settings take effect!"
        echo "Please note when off the Dolphin emulator will not work! but now all lr-cores will load"
sleep 3
sudo perl -p -i -e 's/#*arm_64bit=.*/#arm_64bit=1/g' /boot/config.txt
sleep 1
sudo perl -p -i -e 's/#*gpu_mem=.*/gpu_mem=256/g' /boot/config.txt
read -n 1 -s -r -p "Press any key to reboot"
  echo "[OK] Rebooting Raspberry Pi ... "
  sudo reboot
}

function 64bit_on() {
	dialog --infobox "...Applying..." 3 20 ; sleep 2
	echo "Your Retropie is about to reboot so that the settings take effect!"
        echo "Please note when on the Dolphin emulator will work! but now some lr-cores will not load"
sleep 3
sudo perl -p -i -e 's/#*arm_64bit=.*/arm_64bit=1/g' /boot/config.txt
sleep 1
sudo perl -p -i -e 's/#*gpu_mem=.*/gpu_mem=256/g' /boot/config.txt
read -n 1 -s -r -p "Press any key to reboot"
  echo "[OK] Rebooting Raspberry Pi ... "
  sudo reboot
}

function install_patch() {
if [ -f /opt/retropie/emulators/retroarch/bin-org/retroarch-cg2glsl ]; then
dialog --infobox "Sinden retroarch patch already installed!" 4 45 ; sleep 3    
else
dialog --infobox "Now making a back up of your retroarch files." 4 45 ; sleep 3 
sudo mkdir /opt/retropie/emulators/retroarch/bin-org >/dev/null 2>&1
sudo cp /opt/retropie/emulators/retroarch/bin/retroarch /opt/retropie/emulators/retroarch/bin-org/
sudo cp /opt/retropie/emulators/retroarch/bin/retroarch-cg2glsl /opt/retropie/emulators/retroarch/bin-org/
sudo cp /opt/retropie/configs/all/retroarch/retroarch-core-options.cfg /opt/retropie/emulators/retroarch/bin-org/retroarch-core-options.cfg.1 >/dev/null 2>&1
sudo cp /opt/retropie/configs/all/retroarch-core-options.cfg /opt/retropie/emulators/retroarch/bin-org/retroarch-core-options.cfg.2 >/dev/null 2>&1
if [ -f /opt/retropie/emulators/retroarch/bin-org/retroarch-cg2glsl ]; then
echo Now adding patched sinden retroarch files.
sudo cp /home/pi/Lightgun/RetroArchPatch/retroarch /opt/retropie/emulators/retroarch/bin/
sudo cp /home/pi/Lightgun/RetroArchPatch/retroarch-cg2glsl /opt/retropie/emulators/retroarch/bin/
sudo cp /home/pi/Lightgun/retroarch-core-options.cfg /opt/retropie/configs/all/retroarch/retroarch-core-options.cfg >/dev/null 2>&1
sudo cp /home/pi/Lightgun/retroarch-core-options.cfg /opt/retropie/configs/all/retroarch-core-options.cfg >/dev/null 2>&1
sudo chmod +x /opt/retropie/emulators/retroarch/bin/*
dialog --infobox "Sinden retroarch patch now installed!" 4 45 ; sleep 3
fi
fi
}

function uninstall_patch() {  
if [ -f /opt/retropie/emulators/retroarch/bin-org/retroarch-cg2glsl ]; then
dialog --infobox "Now restoring from your back up retroarch files." 4 45 ; sleep 2
sudo mv /opt/retropie/emulators/retroarch/bin-org/retroarch /opt/retropie/emulators/retroarch/bin/
sudo mv /opt/retropie/emulators/retroarch/bin-org/retroarch-cg2glsl /opt/retropie/emulators/retroarch/bin/
sudo mv  /opt/retropie/emulators/retroarch/bin-org/retroarch-core-options.cfg.1 /opt/retropie/configs/all/retroarch/retroarch-core-options.cfg >/dev/null 2>&1
sudo mv  /opt/retropie/emulators/retroarch/bin-org/retroarch-core-options.cfg.2 /opt/retropie/configs/all/retroarch-core-options.cfg >/dev/null 2>&1
sudo chmod +x /opt/retropie/emulators/retroarch/bin/*
else
dialog --infobox "Sinden LightGun Patch not installed" 4 45 ; sleep 3
fi
}

function genesis_install() {
echo "Now adding Sinden ver of lr-genesis-plus-gx to your RetroPie-setup..."
sleep 4

cat <<\EOF2 > "/home/pi/RetroPie-Setup/scriptmodules/libretrocores/lr-genesis-plus-gx-sinden.sh"
#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="lr-genesis-plus-gx-sinden"
rp_module_desc="Sega 8/16 bit emu - Genesis Plus (enhanced) port for libretro"
rp_module_help="ROM Extensions: .bin .cue .gen .gg .iso .md .sg .smd .sms .zip\nCopy your Game Gear roms to $romdir/gamegear\nMasterSystem roms to $romdir/mastersystem\nMegadrive / Genesis roms to $romdir/megadrive\nSG-1000 roms to $romdir/sg-1000\nSegaCD roms to $romdir/segacd\nThe Sega CD requires the BIOS files bios_CD_U.bin and bios_CD_E.bin and bios_CD_J.bin copied to $biosdir"
rp_module_licence="NONCOM https://raw.githubusercontent.com/libretro/Genesis-Plus-GX/master/LICENSE.txt"
rp_module_section="main"

function sources_lr-genesis-plus-gx-sinden() {
    gitPullOrClone "$md_build" https://github.com/sindenlightgun/Genesis-Plus-GX.git
}

function build_lr-genesis-plus-gx-sinden() {
    make -f Makefile.libretro clean
    make -f Makefile.libretro
    md_ret_require="$md_build/genesis_plus_gx_libretro.so"
}

function install_lr-genesis-plus-gx-sinden() {
    md_ret_files=(
        'genesis_plus_gx_libretro.so'
        'HISTORY.txt'
        'LICENSE.txt'
        'README.md'
    )
}

function configure_lr-genesis-plus-gx-sinden() {
    local system
    local def
    for system in gamegear mastersystem megadrive sg-1000 segacd; do
        def=0
        [[ "$system" == "gamegear" || "$system" == "sg-1000" ]] && def=1
        # always default emulator for non armv6
        ! isPlatform "armv6" && def=1
        mkRomDir "$system"
        ensureSystemretroconfig "$system"
        addEmulator "$def" "$md_id" "$system" "$md_inst/genesis_plus_gx_libretro.so"
        addSystem "$system"
    done
}
EOF2

echo " Sinden Ver of lr-genesis-plus-gx has now been added to your RetroPie-Setup"
echo
echo
echo "Now lets install lr-genesis-plus-gx-sinden"

cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh lr-genesis-plus-gx-sinden
}


function mame2016_install() {
echo "Now adding Sinden ver of lr-mame2016 to your RetroPie-setup..."
sleep 4

cat <<\EOF3 > "/home/pi/RetroPie-Setup/scriptmodules/libretrocores/lr-mame2016-sinden.sh"
#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="lr-mame2016-sinden"
rp_module_desc="MAME emulator - MAME 0.174 port for libretro"
rp_module_help="ROM Extension: .zip\n\nCopy your MAME roms to either $romdir/mame-libretro or\n$romdir/arcade"
rp_module_licence="GPL2 https://raw.githubusercontent.com/libretro/mame2016-libretro/master/LICENSE.md"
rp_module_section="main"
rp_module_flags=""

function depends_lr-mame2016-sinden() {
    getDepends libasound2-dev
}

function sources_lr-mame2016-sinden() {
    gitPullOrClone "$md_build" https://github.com/mrlightgun/mame2016-libretro.git
}

function build_lr-mame2016-sinden() {
    rpSwap on 1200
    local params=($(_get_params_lr-mame) SUBTARGET=arcade)
    make -f Makefile.libretro clean
    make -f Makefile.libretro "${params[@]}"
    rpSwap off
    md_ret_require="$md_build/mamearcade2016_libretro.so"
}

function install_lr-mame2016-sinden() {
    md_ret_files=(
        'mamearcade2016_libretro.so'
    )
}

function configure_lr-mame2016-sinden() {
    local system
    for system in arcade mame-libretro; do
        mkRomDir "$system"
        ensureSystemretroconfig "$system"
        addEmulator 0 "$md_id" "$system" "$md_inst/mamearcade2016_libretro.so"
        addSystem "$system"
    done
}
EOF3

echo " Sinden Ver of lr-mame2016-sinden has now been added to your RetroPie-Setup"
echo
echo
echo "Now lets install lr-mame2016-sinden"

cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh lr-mame2016-sinden
}


function mame_2016_cfg() {
cd /home/pi/RetroPie/roms/arcade/
if [ ! -d mame2016 ]; then
dialog --infobox "Now Adding Sinden Mame 2016 CFG Fies" 3 45 ; sleep 3
mkdir mame2016 && cd mame2016/
sudo cp -R /home/pi/Lightgun/CFG/mame2016/* /home/pi/RetroPie/roms/arcade/mame2016/
sudo chmod +x -R /home/pi/RetroPie/roms/arcade/mame2016
sudo chown pi:pi -R /home/pi/RetroPie/roms/arcade/mame2016
dialog --infobox "Sinden Mame 2016 CFG Fies Added" 3 45 ; sleep 3
else
dialog --infobox "Now Adding Sinden Mame 2016 CFG Fies" 3 45 ; sleep 3
sudo cp -R /home/pi/Lightgun/CFG/mame2016/* /home/pi/RetroPie/roms/arcade/mame2016/
sudo chmod +x -R /home/pi/RetroPie/roms/arcade/mame2016
sudo chown pi:pi -R /home/pi/RetroPie/roms/arcade/mame2016
dialog --infobox "Sinden Mame 2016 CFG Fies Added" 3 45 ; sleep 3
fi
}

function mame_bezzel() {
cd /opt/retropie/configs/all/retroarch/overlay/
if [ ! -d SindenMame ]; then
dialog --infobox "Now Adding Sinden Mame Bezzel Fies" 3 45 ; sleep 3
mkdir SindenMame && cd SindenMame/
sudo cp -R /home/pi/Lightgun/Borders/SindenMame/* /opt/retropie/configs/all/retroarch/overlay/SindenMame/
sudo chmod +x -R /opt/retropie/configs/all/retroarch/overlay/SindenMame/
sudo chown pi:pi -R /opt/retropie/configs/all/retroarch/overlay/SindenMame/
dialog --infobox "Sinden Mame Bezzel Fies Added" 3 45 ; sleep 3
else
dialog --infobox "Now Adding Sinden Mame Bezzel Fies" 3 45 ; sleep 3
sudo cp -R /home/pi/Lightgun/Borders/SindenMame/* /opt/retropie/configs/all/retroarch/overlay/SindenMame/
sudo chmod +x -R /opt/retropie/configs/all/retroarch/overlay/SindenMame/
sudo chown pi:pi -R /opt/retropie/configs/all/retroarch/overlay/SindenMame/
dialog --infobox "Sinden Mame Bezzel Fies Added" 3 45 ; sleep 3
fi
}

function auto_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " AUTO START MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Enable Player 1 & 2 Basic Sinden Auto Start" \
            2 "Disable Player 1 & 2 Basic Sinden Auto Start" \
            - "--------------------------------------------" \
            3 "Enable Player 1 & 2 Recoil Sinden Auto Start" \
            4 "Disable Player 1 & 2 Recoil Sinden Auto Start" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) enable_script  ;;
            2) disable_script  ;;
            3) enable2_script  ;;            
            4) disable2_script  ;;
            *)  break ;;
            -) none ;;
        esac
    done
}

function enable_script() {
dialog --infobox "...processing..." 3 20 ; sleep 2
ifexist=`cat /opt/retropie/configs/all/autostart.sh |grep sinden |wc -l`
if [[ ${ifexist} > "0" ]]
then
  perl -pi -w -e 's/#\/home\/pi\/Lightgun\/sinden-auto.sh/\/home\/pi\/Lightgun\/sinden-auto.sh/g;' /opt/retropie/configs/all/autostart.sh
else
cat <<\EOF3 > "/home/pi/Lightgun/sinden-auto.sh"
#!/bin/bash
#Supreme Team
echo Sinden Auto Start now running.
sleep 3
cd /home/pi/Lightgun/Player1
sudo mono-service LightgunMono.exe
sleep 2
cd /home/pi/Lightgun/Player2
sudo mono-service LightgunMono2.exe
sleep 2
clear
EOF3
chmod 777 /home/pi/Lightgun/sinden-auto.sh
cp /opt/retropie/configs/all/autostart.sh /opt/retropie/configs/all/autostart.sh.bkp
echo "/home/pi/Lightgun/sinden-auto.sh" > /tmp/autostart.sh
cat /opt/retropie/configs/all/autostart.sh >> /tmp/autostart.sh
chmod 777 /tmp/autostart.sh
cp /tmp/autostart.sh /opt/retropie/configs/all
fi
sleep 2
}

function disable_script() {
dialog --infobox "...processing..." 3 20 ; sleep 2
ifexist=`cat /opt/retropie/configs/all/autostart.sh |grep sinden |wc -l`
if [[ ${ifexist} > "0" ]]
then
  perl -pi -w -e 's/\/home\/pi\/Lightgun\/sinden-auto.sh/#\/home\/pi\/Lightgun\/sinden-auto.sh/g;' /opt/retropie/configs/all/autostart.sh
fi
sleep 2
}

function enable2_script() {
dialog --infobox "...processing..." 3 20 ; sleep 2
ifexist=`cat /opt/retropie/configs/all/autostart.sh |grep sinden-recoil |wc -l`
if [[ ${ifexist} > "0" ]]
then
  perl -pi -w -e 's/#\/home\/pi\/Lightgun\/sinden-recoil-auto.sh/\/home\/pi\/Lightgun\/sinden-recoil-auto.sh/g;' /opt/retropie/configs/all/autostart.sh
else
cat <<\EOF4 > "/home/pi/Lightgun/sinden-recoil-auto.sh"
#!/bin/bash
#Supreme Team
echo Sinden Auto Start now running.
sleep 3
cd /home/pi/Lightgun/Player1recoilauto
sudo mono-service LightgunMono.exe
sleep 2
cd /home/pi/Lightgun/Player2recoilauto
sudo mono-service LightgunMono2.exe
sleep 2
clear
EOF4
  chmod 777 /home/pi/Lightgun/sinden-recoil-auto.sh
  cp /opt/retropie/configs/all/autostart.sh /opt/retropie/configs/all/autostart.sh.bkp
  echo "/home/pi/Lightgun/sinden-recoil-auto.sh" > /tmp/autostart.sh
  cat /opt/retropie/configs/all/autostart.sh >> /tmp/autostart.sh
  chmod 777 /tmp/autostart.sh
  cp /tmp/autostart.sh /opt/retropie/configs/all
fi
sleep 2
}

function disable2_script() {
dialog --infobox "...processing..." 3 20 ; sleep 2
ifexist=`cat /opt/retropie/configs/all/autostart.sh |grep sinden-recoil |wc -l`
if [[ ${ifexist} > "0" ]]
then
  perl -pi -w -e 's/\/home\/pi\/Lightgun\/sinden-recoil-auto.sh/#\/home\/pi\/Lightgun\/sinden-recoil-auto.sh/g;' /opt/retropie/configs/all/autostart.sh
fi
sleep 2
}


function SindenBorder_menu() {
	clear
	local choice
    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " RETROARCH SINDEN BORDER OPTIONS MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Select a RetroArch Options you would like to apply." 25 75 20 \
			- "*** OVERLAY SELECTIONS ***" \
			1 " - Add Or Enable All Sinden Border Overlays " \
            2 " - Add Or Disable All Sinden Border Overlays " \
			3 " - Enable A Sinden Border Overlay " \
            4 " - Disable A Sinden Border Overlay " \
		   2>&1 > /dev/tty)

        case "$choice" in
			1) all_overlay_on  ;;
            2) all_overlay_off  ;;
            3) sys_overlay_on  ;;
            4) sys_overlay_off  ;;
            *)  break ;;
        esac
    done
}

function sys_overlay_on() {
clear
VIDEO_FILE_CONFIG_TRUE="input_overlay = \"~/.config/retroarch/overlay/SindenBorderWhiteMedium.cfg"\"
VIDEO_FILE_CONFIG_FALSE="input_overlay = \""\"
VIDEO_FILE_CONFIG_OVERLAY="input_overlay_true = \"true"\"

	echo 
	echo " I will display a list of all systems in configs folder... "
	echo " Keep in mind ONLY RetroArch cores can use overlays. "
	echo
	echo " If you can't see full list. Use below keys to scroll or exit list!"
	echo
	echo "----------------------------------------------------------------------"
	echo " <space>		Display next k lines of text [current screen size]"
	echo " <return>		Display next k lines of text [1]*"
	echo " d			Scroll k lines [current scroll size, initially 11]*"
	echo " q			Exit from more"
	echo "----------------------------------------------------------------------"
	echo
	echo ***PLEASE TYPE THE SYSTEM NAME AS SHOWS IN THE CONFIGS FOLDER***
	echo 
	echo Example: nes
	echo NOT Nes or NES etc...
	echo
	read -n 1 -s -r -p "Press any key to continue..."
	cd /opt/retropie/configs/ 
	echo
	ls -d */ | column | more
	echo
	read -p 'So which system would you like to enable the Sinden Border overlay options?: ' sname
	echo
	if [ -f $sname/retroarch.cfg ]; then                                     
	find $sname -name "retroarch.cfg" -exec sed -i 's|input_overlay\>.*|${VIDEO_FILE_CONFIG_TRUE}|g; s|input_overlay_true\>.*|${VIDEO_FILE_CONFIG_OVERLAY}|g' {} 2>/dev/null \;
	cd $HOME
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	else
	clear
	echo
	echo "This systems does not contain a retroarch.cfg file... Script will go stop!"
	echo
	sleep 2
	fi
}

function sys_overlay_off() {
clear
VIDEO_FILE_CONFIG_TRUE="input_overlay = \"~/.config/retroarch/overlay/SindenBorderWhiteMedium.cfg"\"
VIDEO_FILE_CONFIG_FALSE="input_overlay = \""\"
	echo 
	echo " I will display a list of all systems in configs folder... "
	echo " Keep in mind ONLY RetroArch cores can use overlays. "
	echo
	echo " If you can't see full list. Use below keys to scroll or exit list!"
	echo
	echo "----------------------------------------------------------------------"
	echo " <space>		Display next k lines of text [current screen size]"
	echo " <return>		Display next k lines of text [1]*"
	echo " d			Scroll k lines [current scroll size, initially 11]*"
	echo " q			Exit from more"
	echo "----------------------------------------------------------------------"
	echo
	echo ***PLEASE TYPE THE SYSTEM NAME AS SHOWS IN THE CONFIGS FOLDER***
	echo 
	echo Example: nes
	echo NOT Nes or NES etc...
	echo
	read -n 1 -s -r -p "Press any key to continue..."
	cd /opt/retropie/configs/ 
	echo
	ls -d */ | column | more
	echo
	read -p 'So which system would you like to disable the Sinden Border overlay options?: ' sname
	echo
	if [ -f $sname/retroarch.cfg ]; then                                   
	find $sname -name "retroarch.cfg" -exec sed -i 's|input_overlay\>.*|${VIDEO_FILE_CONFIG_FALSE}|g' {} 2>/dev/null \;
	cd $HOME
	clear
	echo
	echo "[OK DONE!...]"
	sleep 1
	else
	clear
	echo
	echo "This systems does not contain a retroarch.cfg file... Script will go stop!"
	echo
	sleep 2
	fi
}

function all_overlay_on() {
	clear
dialog --infobox "APPLYING CHANGES NOW..... Please wait" 5 30 ; sleep 2
CONFIGS_DIR=/opt/retropie/configs
CONFIG_FILENAME=retroarch.cfg
VIDEO_FILE_CONFIG_TRUE="input_overlay = \"~/.config/retroarch/overlay/SindenBorderWhiteMedium.cfg"\"
VIDEO_FILE_CONFIG_FALSE="input_overlay = \""\"
VIDEO_FILE_CONFIG_OVERLAY="input_overlay_true = \"true"\"


for d in ${CONFIGS_DIR}//*; do

    system_name=${d##*/}

    if [[ ${system_name} = 'all' ]]; then
      echo "Skipping 'all' config"
      continue
    fi

    echo "Checking System Configs for '${system_name}' ..."
    config_file=${CONFIGS_DIR}/${system_name}/${CONFIG_FILENAME}

    if [[ -f ${config_file} ]]; then
      echo "Found config file: ${config_file}"
    else
      echo "No config file found for ${system_name}"
      continue
    fi
	
    if grep 'input_overlay*' "${config_file}"; then
      echo "Overwriting video file config with '${VIDEO_FILE_CONFIG_TRUE}/${system_name}\"' in ${config_file} ..."
      sed -i "s|input_overlay\>.*|${VIDEO_FILE_CONFIG_TRUE}|; s|input_overlay_true\>.*|${VIDEO_FILE_CONFIG_OVERLAY}|g" "${config_file}"
    else
      echo "Writing video file config ${VIDEO_FILE_CONFIG_TRUE}/${system_name} in ${config_file}!"
      echo "" >> "${config_file}"
      echo "${VIDEO_FILE_CONFIG_TRUE}" >> "${config_file}"
    fi
done
echo Sinden Border overlay is now on.
sleep 3
}

function all_overlay_off() {
	clear
dialog --infobox "APPLYING CHANGES NOW..... Please wait" 5 30 ; sleep 2
CONFIGS_DIR=/opt/retropie/configs
CONFIG_FILENAME=retroarch.cfg
VIDEO_FILE_CONFIG_TRUE="input_overlay = \"~/.config/retroarch/overlay/SindenBorderWhiteMedium.cfg"\"
VIDEO_FILE_CONFIG_FALSE="input_overlay = \""\"

for d in ${CONFIGS_DIR}//*; do

    system_name=${d##*/}

    if [[ ${system_name} = 'all' ]]; then
      echo "Skipping 'all' config"
      continue
    fi

    echo "Checking System Configs for '${system_name}' ..."
    config_file=${CONFIGS_DIR}/${system_name}/${CONFIG_FILENAME}

    if [[ -f ${config_file} ]]; then
      echo "Found config file: ${config_file}"
    else
      echo "No config file found for ${system_name}"
      continue
    fi
	
    if grep 'input_overlay*' "${config_file}"; then
      echo "Overwriting video file config with '${VIDEO_FILE_CONFIG_FALSE}/${system_name}\"' in ${config_file} ..."
      sed -i "s|input_overlay\>.*|${VIDEO_FILE_CONFIG_FALSE}|" "${config_file}"
    else
      echo "Writing video file config ${VIDEO_FILE_CONFIG_TRUE}/${system_name} in ${config_file}!"
      echo "" >> "${config_file}"
      echo "${VIDEO_FILE_CONFIG_FALSE}" >> "${config_file}"
    fi
done
echo Sinden Border overlay is now off.
sleep 3
}

main_menu
