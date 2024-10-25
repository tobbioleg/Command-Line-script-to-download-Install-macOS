#!/bin/bash
# (c) Copyright 2024 tobbioleg 
# Vars

PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
#   Slick Progress Bar
sleep 1 & PID=$! #Progress Bar

echo "`tput setaf 2``tput sgr0``tput bold``tput setaf 26`
                **************************************************** 
              **************   DOWNLOAD INSTALL SEQUOIA  ************** 
                ****************************************************
`tput sgr0` `tput setaf 2``tput sgr0`"
echo " "
echo " "
printf "["
# While process is running...
while kill -0 $PID 2> /dev/null; do 
    printf  "🛠  🛠  🛠  🛠--"
    sleep 0.2
done

printf '\e[8;50;90t'

nameh=`users`
function echob() {
  echo "`tput bold`$1`tput sgr0`"
}
function head
{
clear
echo "                   = = = = = = = = = = = = = = = = = = = = = = = = =  "

tput blink                    
echo "                                   Installer macOS" 
tput sgr0

echo "                   = = = = = = = = = = = = = = = = = = = = = = = = =  "
}
function menu
{
echo "                           Welcome "`tput setaf 2``tput sgr0``tput bold``tput setaf 26`$nameh`tput sgr0` `tput setaf 2``tput sgr0`", Installer macOS"
echo " "
echo "                       `tput setaf 26`
                                    Credit: Apple"
echo " "
echo "                        
                           `tput setaf 2``tput sgr0``tput bold``tput setaf 26`Type the number: ⬇ to Download`tput sgr0` `tput setaf 2``tput sgr0`︎"
                           echo "                     =========================================== "
echo "                           ✅  1 = `tput setaf 2``tput sgr0``tput bold``tput setaf 26`macOS Sequoia 15.1`tput sgr0` `tput setaf 2``tput sgr0`"
echo "                     =========================================== "
echo "                           ✅  2 = `tput setaf 2``tput sgr0``tput bold``tput setaf 26`macOS Sequoia 15.2`tput sgr0` `tput setaf 2``tput sgr0`"
echo "                     =========================================== "
echo "                           ❎  L = `tput setaf 2``tput sgr0``tput bold``tput setaf 26`List (list-full-installers)`tput sgr0` `tput setaf 2``tput sgr0`" 
echo "                     =========================================== "
echo "                           ❎  X = `tput setaf 2``tput sgr0``tput bold``tput setaf 26`Quit (Exit)`tput sgr0` `tput setaf 2``tput sgr0`" 
echo "                     =========================================== "

echo "                  = = = = = = = = = = = = = = = = = = = = = = = = =  "

tput blink                    
echo "                                  Installer macOS" 
tput sgr0

echo "                  = = = = = = = = = = = = = = = = = = = = = = = = =  "

read -n 1 option
}
function INSTALLER-A
{
head
echo " "
echo "Download macOS Sequoia 15.1
Wait... "
softwareupdate --fetch-full-installer --full-installer-version 15.1
echo " "
}
function INSTALLER-B
{
head
echo " "
echo "Download macOS Sequoia 15.2
Wait... "
softwareupdate --fetch-full-installer --full-installer-version 15.2
echo " "
}
function L
{
head
echo " "
echo "list-full-installers
View List. "
softwareupdate --list-full-installers
echo " "
}
echo " "
function Quit
{
clear
echo " "
echo "
Quit Softwareupdate full-installer"
osascript -e 'tell app "Terminal" to display dialog "
Quit Softwareupdate full-installer" with icon file "System:Library:CoreServices:Finder.app:Contents:Resources:Finder.icns" buttons {"Exit"} default button 1 with title "Softwareupdate"'
echo " "
say Thanks to using Softwareupdate fullinstaller!
echo " "



exit 12

}
while [ 1 ]
do
head
menu
case $option in


1|1)
echo
INSTALLER-A ;;
2|2)
echo
INSTALLER-B ;;
l|L)
echo
L ;;
x|X)
echo
Quit ;;

*)
echo ""
esac
echo
echob "`tput setaf 2``tput sgr0``tput bold``tput setaf 26`Type any key to return in the menu`tput sgr0` `tput setaf 2``tput sgr0`"
echo
read -n 1 line
clear
done

exit
