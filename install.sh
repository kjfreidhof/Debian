#/bin/bash 

# Hello my name is techdoc and i am the author of this script 

# this script uses the GPL 3 license 

# what this script does it installs all the programs and applications i use in debian 

# and removes some programs as well 

File="/tmp/out.$$"
GREP="/bin/grep"
#....

# Make sure the user runs this script as root 

if ["$(id -u)" != "0" ]; then 
	echo "This script must be ran as root"
	echo "using sudo"
	exit 1

fi 

# ...

# This is a warning message 

echo "run this script at your own risk"
echo "I am not responsible for what happens to your system"
echo "when you install this script"

# this says the user accepts the risks and they want to install it 

while true;do 
	read -p "Do you want to run this script?" yn
	case $yn in
		[Yy]*)make install; break;;
		[Nn]*)exit;;
		*)echo "please answer yes or no.";;
	esac

done

# These lines of code install all my packages that i use in debian 

# such as my web browser and other things 
apt install $(cat /home/"$USERNAME"/Downloads/Debian/pkg.txt)

mv sources.list /etc/apt

dpkg --add-architecture i386

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key

apt update 

apt install $(cat /home/"$USERNAME"/Downloads/Debian/wine.txt)
# This removes all of the packages in debian for the gnome desktop environment
cat /home/"$USERNAME"/Downloads/debian/remove.txt

read -p "Do you want to remove the following packages above"
case $yn in 
	[Yy]*)make install; break;; 
	[Nn]*)exit;;
	*)echo "please answer yes or no"

	esac

done

apt remove $(cat /home/"$USERNAME"/Downloads/Debian/remove.txt)

