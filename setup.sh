#!/bin/bash

# Copyright (c) 2023 Alex313031.

YEL='\033[1;33m' # Yellow
CYA='\033[1;96m' # Cyan
RED='\033[1;31m' # Red
GRE='\033[1;32m' # Green
c0='\033[0m' # Reset Text
bold='\033[1m' # Bold Text
underline='\033[4m' # Underline Text

# Error handling
yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "${RED}Failed $*"; }

printf "\n" &&
printf "${YEL}Creating overlay-raspi-frick overlay dir...${c0}\n" &&

mkdir -p -v ~/chromiumos/src/overlays/overlay-raspi-frick &&
printf "\n" &&
cp -r -v ./* ~/chromiumos/src/overlays/overlay-raspi-frick/ &&
cp -r -v ./chromeos-base/chromeos-chrome/. ~/chromiumos/src/third_party/chromiumos-overlay/chromeos-base/chromeos-chrome/ &&
printf "\n" &&

printf "${YEL}Done!\n" &&

printf "\n" &&
printf "${YEL}Copying other files from this repo into //chromiumos/src/platform/${c0}\n" &&

cp -r -v ./platform/* ~/chromiumos/src/platform/
printf "\n" &&
printf "${YEL}Done!\n" &&
printf "\n" &&

printf "${YEL}To add raspi-frick to the list of known boards in cros-board.eclass, run this command:${c0}\n" &&
printf "\n" &&

echo "sed -i 's/ALL_BOARDS=(/ALL_BOARDS=(\n	amd64-frick\n/' ${HOME}/chromiumos/src/third_party/chromiumos-overlay/eclass/cros-board.eclass" &&

printf "\n" &&
printf "${YEL}Listing contents of ~/chromiumos.${c0}\n" &&

cd ~/chromiumos &&
ls -A --color=auto &&

printf "\n" &&
printf "${YEL}Enjoy ThoriumOS for Raspberry Pi!${c0}\n"
printf "\n" &&
tput sgr0 &&

echo "
      __________________________      
     |.------------------------.|     
     ||                        ||     
     ||                        ||     
     ||    (_)          (_)    ||     
     ||                        ||     
     ||     \ __________ /     ||     
     ||                        ||     
     ||________________________||     
    //__/__/__/__/__\__\__\__\__\\    
   //__/__/__/__/____\__\__\__\__\\   
  /       /________________\       \  
 /__________________________________\ 
 \__________________________________/ 
                                      " &&
printf "\n" &&

exit 0
