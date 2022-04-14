# Hello my name is techdoc 

This script installs all the packages i use in debian and removes all the packages i dont use specfically for the gnome and xfce
Desktop Environment 

# before we get started i just want to say run this script at your own risk i am not responsible for what happens to your 

# system when you run this script now lets get started make sure to backup your sources.list before runing this script

to run this script do this 

chmod +x install.sh 

make sure to make it excecutable it will not run if its not excecutable 


Then run the script as root by typing 

sudo ./install.sh 

that will run the script and make changes to the system 

make sure to run as sudo if you are not  it will not work 

# I have also updated this repo a bit and made some changes so and added new things to the script 

# For example xfce

Their are two files xfce4.sh and xremove.txt the xfce4.sh removes all the uneccsary programs in
xfce when using debian and installs all the ones i use to run this script do

chmod +x xfce4.sh

then do 

sudo ./xfce4.sh

# also removing firefox is in its own script now just do 

chmod +x firefox.sh

then do 

sudo ./firefox .sh 

# Their are also a ton of web browsers that are in here to choose from as well 

# Chromium,Brave,and chrome

# Installing Chromium do 

chmod +x chromium.sh

then do 

sudo ./chromium.sh

# Installing Brave do 

chmod +x brave.sh

then do 

sudo /brave.sh

# Installing Chrome do 

chmod +x chrome.sh

then do 

sudo ./chrome.sh












