#!/bin/bash
let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`

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
  
                                                                        SUPREME ULTRA V2                                                                                                                             
$(tput setaf 2)
`date +"%A, %e %B %Y, %r"`

`uname -srmo`
`lsb_release -ds`

Uptime......: ${UPTIME}
Last Login..: `exec -- last | head -1`
$(tput setaf 7)
......SYSTEM INFO.....:$(tput setaf 3)
                        Size     Used     Avail    Used%
Boot Partition........: `df -h | grep '/dev/mmcblk0p1' | awk '{print $2,"     "$3,"     "$4,"     "$5}'`
Root Partition........: `df -h | grep '/dev/root' | awk '{print $2,"     "$3,"     "$4,"     "$5}'`
$(tput setaf 1)SoC Temperature.......: `exec -- /opt/vc/bin/vcgencmd measure_temp | cut -c "6-9"`
CPU Model.............: `lscpu | grep "Model name"`
CPU Max Speed.........: `lscpu | grep max`
GPU Version...........: `exec -- /opt/vc/bin/vcgencmd version`
$(tput setaf 6)Memory................: `cat /proc/meminfo | grep MemFree | awk '{printf( "%.2f\n", $2 / 1024 )}'`MB (Free) / `cat /proc/meminfo | grep MemTotal | awk '{printf( "%.2f\n", $2 / 1024 )}'`MB (Total)
Running Processes.....: `ps ax | wc -l | tr -d " "`
IP Addresses..........: `ip route get 8.8.8.8 2>/dev/null | awk '{print $NF; exit}'` and `curl -4 icanhazip.com 2>/dev/null | awk '{print $NF; exit}'`
$(tput setaf 7)
........WEATHER.......:
$(tput setaf 5)	 City		Temp	Condition
LONDON, UK Weather....: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=EUR|UK|UK001|LONDON" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
ATHENS, GR Weather....: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=EUR|GR|GR007|ATHINAI" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
CHICAGO, US Weather...: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=0&locCode=NAM|US|IL|CHICAGO" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
N.Y., US Weather......: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=0&locCode=NAM|US|NY|NEWYORK" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
L.A., US Weather......: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=0&locCode=NAM|US|CA|LOSANGELES" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
TOKYO, JP Weather.....: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=ASI|JP|JA041|TOKYO" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
MELBOURNE, AU Weather.: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=OCN|AU|VIC|MELBOURNE" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
AUCKLAND, NZ Weather..: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=OCN|NZ|NZ000|AUCKLAND" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
$(tput sgr0)"
echo
read -n 1 -s -r -p "Press any key to continue"