#!/bin/bash

#to use as root
uid=$(id -u)
if [ $uid -ne 0 ];then
    echo "error: please run this script as root using sudo!"
    exit 1
fi

#update package list
apt update

#install required packages
apt install -y cmake libx11-dev xorg-dev libgl1-mesa-glx libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev libglu1-mesa libglu1-mesa-dev libglfw3-dev libglfw3

#clone and setup glad
git clone https://github.com/Dav1dde/glad.git
cd glad
cmake ./
make
sudo cp -a include /usr/local/

cd ..

make
