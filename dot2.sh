#!/bin/bash

# Function to install programs using apt
install_programs() {
  sudo apt install -y "$@"
}

# Function to display a zenity checklist for selecting programs
select_programs() {
  selected_programs=$(zenity --list --checklist --height 400 --width 300 \
    --title "Select programs to install" \
    --column "Install" --column "Program" \
    FALSE "Program 1" \
    FALSE "Program 2" \
    FALSE "Program 3" \
    FALSE "Program 4" \
    FALSE "Program 5" \
    FALSE "Program 6" \
    FALSE "Program 7" \
    FALSE "Program 8" \
    FALSE "Program 9" \
    FALSE "Program 10")

  echo "$selected_programs"
}

# Call the function to display the zenity checklist
selected_programs=$(select_programs)

# Install the selected programs
install_programs $selected_programs
