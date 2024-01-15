#!/bin/bash

# Update Debian and install Python 3.8 or higher
sudo apt update
sudo apt install -y python3.8

# Install additional dependencies for building Python from source
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

# Download and install Python 3.8 (change the version if needed)
wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
tar -xf Python-3.8.12.tgz
cd Python-3.8.12
./configure
make
sudo make install

# Install Git and clone the repository
sudo apt install -y git
git clone https://github.com/own-ai/ownAI.git
cd ownAI

# Install requirements
pip3 install -r requirements.txt
