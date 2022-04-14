#/bin/bash 

File="/tmp/out.$$"
GREP="/bin/grep"

if ["$(id -u)" != "0"]; then
        printf "This script must be ran as root"
        printf"using sudo"
        exit 1

fi

#....

printf "run this at your own risk"
printf "I am not responsible for what happens to your system"
printf "when you install this script"

while true;do
        read -p "Do you want to remove firefox-esr? " yn

        case $yn in
                [Yy]*)make install; break;;
                [Nn]*)exit;;

        esac
done

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list


apt update

apt install $(cat /home/"$USERNAME"/Downloads/debian/brave.txt)

exit

