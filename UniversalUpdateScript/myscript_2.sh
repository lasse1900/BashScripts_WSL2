#!/bin/bash

release_file=/etc/os-release


if grep -q "Arch" $release_file
# if [ -d /etc/pacman.d ]
then 
	#The host is based on Arch, run the pacman update command
	sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
	# The host is based on Debian,,
	# Run the apt version of the comand
	sudo apt update
	sudo apt dist-upgrade
fi

		



