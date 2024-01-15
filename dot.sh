#!/bin/bash

#  Packages to install
for i in {1..10}
do
    package=$(zenity --entry --title "Package Installation" --text "Enter the name of package $i to install (or leave blank to skip):")
    if [ ! -z "$package" ]
    then
        packages="$packages $package"
    fi
done

# Install the packages
if [ ! -z "$packages" ]
then
    sudo apt install -y $packages
fi

# Download using curl
url=$(zenity --entry --title "Curl Download" --text "Enter a URL to download using curl (or leave blank to skip):")
if [ ! -z "$url" ]
then
    curl -O $url
fi

# Download using wget
url=$(zenity --entry --title "Wget Download" --text "Enter a URL to download using wget (or leave blank to skip):")
if [ ! -z "$url" ]
then
    wget $url
fi

# Download using uget
url=$(zenity --entry --title "Uget Download" --text "Enter a URL to download using uget (or leave blank to skip):")
if [ ! -z "$url" ]
then
    uget-gtk $url
fi
