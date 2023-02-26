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

                                                       ----------{ YOUR PI IS NOW REBOOTING }----------
$(tput setaf 2)
$(tput setaf 7)
$(tput setaf 5)
$(tput sgr0)"
echo
sudo shutdown -r now