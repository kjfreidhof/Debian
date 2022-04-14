#/bin/bash

FILE="/tmp/out.$$"
GREP="/bin/grep"

#....


if ["$(id -u)" != "0"]; then
        printf "This script must be ran as root"
        printf "using sudo"
        exit 1

fi


#....

printf "run this script at your own risk"
printf "I am not responsible for what happens to your system"
printf "when you install this script"


while true;do 
        read -p "Do you want to install chromium? " yn

        case $yn in
                [Yy]*)make install; break;;
                [Nn]*)exit;;
                *)printf "please answer yes or no. ";;

        esac

done


apt install $(cat /home/"$USERNAME"/Downloads/Debian/chromium.txt)



