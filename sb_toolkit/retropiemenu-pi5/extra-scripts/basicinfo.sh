#!/bin/bash

# Calculate rough CPU and GPU temperatures:

    if [[ -f "/sys/class/thermal/thermal_zone0/temp" ]]; then
        cpuTempC=$(($(cat /sys/class/thermal/thermal_zone0/temp)/1000)) && cpuTempF=$((cpuTempC*9/5+32))
    fi

    if gpuTempC=$(vcgencmd measure_temp 2>/dev/null); then
       gpuTempC=${gpuTempC:5:2}
       gpuTempF=$((gpuTempC*9/5+32))
       else
       gpuTempC=""
     fi

# Calculate uptime:
let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`

function getIPAddress() {
    local ip_route
    ip_route=$(ip -4 route get 8.8.8.8 2>/dev/null)
    if [[ -z "$ip_route" ]]; then
        ip_route=$(ip -6 route get 2001:4860:4860::8888 2>/dev/null)
    fi
    [[ -n "$ip_route" ]] && grep -oP "src \K[^\s]+" <<< "$ip_route"
}

echo "$(tput setaf 6)
                                                                                                                                                             
                         .,,,,.,*               ,,,.,,,.                                                                
                    ,,  ..(,#(/(/.. .,     ,. . (,%*%*/*.. .,.                                                          
                      *%%%%%%%%%%%%%%#/ ,  ..%#%%%%%%%%%%%%%%.,                                                          
                     . /%%%%%((%%%%%%%%%%.* *%%%%%%%%%#/#%%%%%.,                                                          
                     ..%%%%%%%%#,(%%%%%%/  %%%%%%#,*%%%%%%%%( .                                                          
                        ,%%%%%%%%%%/./%%%.  (%%%,.%%%%%%%%%%# ,                                                           
                          .%%%%%%%%%%%%.        *%%%%%%%%%%%( *                                                            
                          . ./%%%%%%%%(         .%%%%%%%%#* ,                                                              
                             *.  *#(,.              ,/##.  ,                                                                
                             ,                             .                                                                
                           ,                                 ,                                                              
                         ,                                   .                                                    
                         .                                    ,                                                            
                                       .........              *                                                            
                       .            ...............             ,                                                          
                     ,              ...............              .                                                         
                    ,     ./##/,.. ................  ..,/##/.     .                                                        
                    ,     .#    .(#*.............../#(.    #.                                                              
                    *    ../#       ./#(*.....*(#/.       (*..    .                                                        
                    .     ../%%(,.   (#*.....*#(    ,(#%/.                                                                
                      *      ......,,,.. .,... ..,,,......      .                                                          
                       ,    ........     ,/./*     ........                                                                
                                         ,%#.##,                *                                                           
                         *           ... .,,.,,. ...           .                                                            
                           ,                                   .                                                             
                            .                                 *                                                              
                              ..            ...            ./                                                                
                                  ,.                    *                                                                    
                                       *             .                                                                        
 
                                    SUPREME RASPBERRY PI 5                                                                                                                             
$(tput setaf 2)

`uname -srmo`
`lsb_release -ds`

Uptime......: ${UPTIME}
Last Login..: `exec -- last | head -1`
$(tput setaf 7)
......SYSTEM INFO.....:$(tput setaf 3)
                        Size    Used    Avail    Used%
Boot Partition........: `df -h 2>/dev/null | grep '/dev/mmcblk0p1' | awk '{print $2,"    "$3,"    "$4,"     "$5}'`
Root Partition........: `df -h 2>/dev/null | grep -E '/$' | awk '{print " "$2,"    "$3,"     "$4,"     "$5}'`
$(tput setaf 1)
CPU Temperature.......: ${cpuTempC}°C/${cpuTempF}°F 
GPU Temperature.......: ${gpuTempC}°C/${gpuTempF}°F
CPU Model.............: `lscpu | grep "Model name"`
CPU Max Speed.........: `lscpu | grep max`
GPU Version...........: `vcgencmd bootloader_version | grep version`
$(tput setaf 6)
Memory................: `cat /proc/meminfo | grep MemFree | awk '{printf( "%.2f\n", $2 / 1024 )}'`MB (Free) / `cat /proc/meminfo | grep MemTotal | awk '{printf( "%.2f\n", $2 / 1024 )}'`MB (Total)
Running Processes.....: `ps ax | wc -l | tr -d " "`
IP Addresses..........: $(getIPAddress) and `curl -4 icanhazip.com 2>/dev/null | awk '{print $NF; exit}'`
$(tput setaf 4)
Current Build..........: `sb_version`
$(tput setaf 7)
........YOUR INFO.......: $(tput sgr0)"

DateColumn=38 # Default is 27 for 80 character line, 34 for 92 character line
TimeColumn=61 # Default is 49 for   "   "   "   "    61 "   "   "   "

curl wttr.in/?0 --silent --max-time 3 > /tmp/now-weather

readarray aWeather < /tmp/now-weather
rm -f /tmp/now-weather

if [[ "${aWeather[0]}" == "Weather report:"* ]] ; then
    WeatherSuccess=true
    echo "${aWeather[@]}"
else
    WeatherSuccess=false
    echo "+============================+"
    echo "| Weather unavailable now!!! |"
    echo "| Check reason with command: |"
    echo "|                            |"
    echo "| curl wttr.in/?0            |" 
    echo "|   --silent --max-time 3    |"
    echo "+============================+"
    echo " "
fi
echo " "

#--------- DATE -------------------------------------------------------------

tput sc

i=0
while [ $((++i)) -lt 9 ]; do tput cuu1; done

if [[ "$WeatherSuccess" == true ]] ; then
    Column=$((DateColumn - 9))
    tput cuf $Column
    # Blank out ", country" with x spaces
    printf "          "
else
    tput cuf $DateColumn
fi

cal > /tmp/terminal1
tr -cd '\11\12\15\40\60-\136\140-\176' < /tmp/terminal1  > /tmp/terminal

CalLineCnt=1
Today=$(date +"%e")

printf "\033[32m"

while IFS= read -r Cal; do
    printf "%s" "$Cal"
    if [[ $CalLineCnt -gt 2 ]] ; then
        tput cub 22
        for (( j=0 ; j <= 18 ; j += 3 )) ; do
            Test=${Cal:$j:2}
            if [[ "$Test" == "$Today" ]] ; then
                printf "\033[7m" 
                printf "%s" "$Today"
                printf "\033[0m"
                printf "\033[32m"
                tput cuf 1
            else
                tput cuf 3
            fi
        done
    fi

    tput cud1
    tput cuf $DateColumn
    CalLineCnt=$((++CalLineCnt))
done < /tmp/terminal

printf "\033[00m"
echo ""

tput rc

#-------- TIME --------------------------------------------------------------

tput sc

i=0
while [ $((++i)) -lt 9 ]; do tput cuu1; done
tput cuf $TimeColumn

if hash toilet 2>/dev/null; then
    echo " $(date +"%I:%M %P") " | \
        toilet -f future --filter border > /tmp/terminal
elif hash figlet 2>/dev/null; then
    date +"%I:%M %P" | figlet > /tmp/terminal
else
    date +"%I:%M %P" > /tmp/terminal
fi

while IFS= read -r Time; do
    printf "\033[01;36m"
    printf "%s" "$Time"
    tput cud1
    tput cuf $TimeColumn
done < /tmp/terminal

tput rc

read -n 1 -s -r -p "Press any key to continue"
