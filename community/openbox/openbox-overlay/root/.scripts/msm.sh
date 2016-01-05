#!/bin/bash
#
# Simple bash script to install Manjaro Settings Manager
#
# Written by Carl Duff (adapted holmeslinux)

# Information about this script for the user
echo "${title}Install Manjaro Settings Manager${nrml}

This will install the necessary software to run Manjaro Settings Manager

Press ${grnb}<enter>${nrml} to proceed. You may still cancel the process when prompted."

read
pacman -S manjaro-settings-manager
read -p $'\n'"Process Complete. Press ${grnb}<enter>${nrml} to continue"$'\n'
exit 0