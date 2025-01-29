#!/bin/bash

# function confirmation for contiue this or not

confirmation() {

	echo

	read -p "_ are you sure you want to continue? (y/n) : " choice

	if [[ ! "$choice" =~ ^[Yy]$ ]]; then

		../Theme/abort.sh

		exit 1
	fi
}

confirmation
