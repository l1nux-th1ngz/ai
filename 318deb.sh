#!/bin/bash

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install necessary dependencies
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y
sleep 4

# Download & extract Python 3.8.17
wget https://www.python.org/ftp/python/3.8.17/Python-3.8.17.tar.xz
sleep 1
tar -xf Python-3.8.17.tar.xz

# Move Python to the appropriate directory
mv Python-3.8.17 /usr/local/share/python3.8

# Configure and install Python
cd /usr/local/share/python3.8
./configure --enable-optimizations --enable-shared
make
wait
sudo make altinstall

# Configure dynamic linker run-time bindings
sudo ldconfig /usr/local/share/python3.8

# Create and activate a virtual environment
python3.8 -m venv test_app_venv
source test_app_venv/bin/activate

# Install pip and upgrade
python3.8 get-pip.py
python3.8 -m pip install --upgrade pip
