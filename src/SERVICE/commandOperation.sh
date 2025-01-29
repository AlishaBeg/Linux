#!/bin/bash

# function for display operation option
operation_list() {

	echo "1) option 1"
	echo "2) option 1"
	echo "3) option 1"
}

# main loop to keep showing the menu until the user exits

while true; do

	operation_list

	read -p "|/// COMMAND ME ///| : " command

	case $command in
		1)
			echo "done"
			break
			;;
		*)
			echo "wrong"
			;;
	esac

done