#!/bin/bash
IMP=/opt/retropie/configs/imp
IMPSettings=$IMP/settings
echo "1" > $IMPSettings/fade-out.flag
tput reset
exit 0
