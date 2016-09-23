#!/bin/bash

# tab width
tabs 4
clear

#----- Import Functions -----#

dir="$(dirname "$0")"

. $dir/functions/backup
. $dir/functions/bootloader
. $dir/functions/check
. $dir/functions/erase
. $dir/functions/images
. $dir/functions/recovery
. $dir/functions/root
. $dir/functions/search
. $dir/functions/tools

#----- Fancy Messages -----#
show_error(){
echo -e "\033[1;31m$@\033[m" 1>&2
}
show_info(){
echo -e "\033[1;32m$@\033[0m"
}
show_warning(){
echo -e "\033[1;33m$@\033[0m"
}
show_question(){
echo -e "\033[1;34m$@\033[0m"
}
show_success(){
echo -e "\033[1;35m$@\033[0m"
}
show_header(){
echo -e "\033[1;36m$@\033[0m"
}
show_listitem(){
echo -e "\033[0;37m$@\033[0m"
}

# Main
function main {
  eval `resize`
  MAIN=$(whiptail \
    --notags \
    --title "Nexus Toolkit" \
    --menu "\nWhat would you like to do?" \
    --ok-button "Run" \
    --cancel-button "Quit" \
  $LINES $COLUMNS $(( $LINES - 12 )) \
    search 'Search devices' \
    backup 'Backup/Restore' \
    bootloader 'OEM Lock/Unlock' \
    erase 'Erase sections' \
    images 'Install Factory Images' \
    recovery 'Install CWM/TWRP/Stock recovery' \
    root 'Install Super SU' \
    tools 'Other tools' \
  3>&1 1>&2 2>&3)

exitstatus=$?
  if [ $exitstatus = 0 ]; then
    clear && $MAIN
  else
    clear && quit
  fi
}

# Quit
function quit {
  if (whiptail --title "Quit" --yesno "Are you sure you want quit?" 10 60) then
    exit 99
  else
    clear && main
  fi
}

# Run
check && main
