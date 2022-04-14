#!/bin/bash

File="/tmp/out.$$"
GREP="/bin/grep"

#....

if ["$(id -u)" != "0"]; then
        echo "This script must be ran as root"
        echo"using sudo"
        exit 1

fi

#....

printf "run this script at your own risk"
printf "I am not responsible for what happens to you system"
printf"when you install this script"


while true;do
        read -p "Do yo want to install chrome? " yn
        case $yn in
                [Yy]*)make install; break;;
                [Nn]*)exit;;
                *)printf "please answer yes or no"
        esac
done


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt install ./google-chrome-stable_current_amd64.deb

exit




