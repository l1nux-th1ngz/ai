#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install Python 3.8 or higher
sudo apt-get install -y python3.8 python3-pip

# Check Python version
python3 --version

# Install git
sudo apt-get install -y git

# Clone the ownAI repository
git clone https://github.com/own-ai/ownAI.git

# Change to the ownAI directory
cd ownAI

# Install the requirements
pip3 install -r requirements.txt
