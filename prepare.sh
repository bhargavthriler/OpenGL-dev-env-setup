#!/bin/bash

apt install -y cmake libx11-dev xorg-dev libgl1-mesa-glx libgl1-mesa-dev

git clone https://github.com/Dav1dde/glad.git
cd glad
cmake ./
make
sudo cp -a include /usr/local/

cd ..

make
