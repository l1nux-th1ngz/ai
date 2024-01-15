#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y
sleep 4
wget https://www.python.org/ftp/python/3.8.17/Python-3.8.17.tar.xz
sleep

tar -xf Python-3.8.17.tar.xz

# May have to use sudo to move
mv Python-3.8.17 /usr/local/share/python3.8

cd /usr/local/share/python3.8
./configure --enable-optimizations --enable-shared

make

wait

sudo make altinstall

#  configure the dynamic linker run-time bindings DO NOT SKIP!!!!!
sudo ldconfig /usr/local/share/python3.8

python3.8 -m venv test_app_venv


source test_app_venv/bin/activate
######## PIP INSTALL############
python3.8 get-pip.py
python3.8 -m pip install --upgrade pip
