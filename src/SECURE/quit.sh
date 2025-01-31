#!/bin/bash

# function confirmation for contiue this or not

quit() {

	local quitknow

	echo

	read -p "_ you want to quit? (Yes/No) : " quitknow

	if [[ ! "$quitknow" =~ ^[Yy]$ ]]; then

		clear

		echo
		echo " ============================="
		echo " [ SUCCESSFULLY CLOSE SYSTEM ]"
		echo " ============================="
		echo

		exit 1
	fi
}

quit
