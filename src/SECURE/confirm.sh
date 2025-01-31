#!/bin/bash

# function confirmation for contiue this or not

confirm() {

	local choice

	echo

	read -p "_ are you sure you want to continue? (Yes/No) : " choice

	if [[ ! "$choice" =~ ^[Yy]$ ]]; then

		echo
		echo " ==================="
		echo " [ ABORT EXECUTION ]"
		echo " ==================="
		echo

		exit 1
	fi
}

confirm
