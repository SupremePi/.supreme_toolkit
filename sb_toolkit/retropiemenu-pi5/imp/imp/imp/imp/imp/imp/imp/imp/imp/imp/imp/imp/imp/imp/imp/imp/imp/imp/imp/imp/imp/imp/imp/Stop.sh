#!/bin/bash
IMP=/opt/retropie/configs/imp
IMPSettings=$IMP/settings
bash $IMP/stop.sh > /dev/null 2>&1 && tput reset
exit 0
