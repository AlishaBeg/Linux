#!/bin/bash

# function for remove swap file

removeSwapFile() {
	
	if [ -f /swapfile ]; then
	
		swapoff /swapfile || { echo "_[enabled] : /swapfile"; exit 1; }

		rm -i /swapfile || { echo "_[error] : unremove /swapfile"; exit 1; }
	
	else
	
		echo "_[not found] : /swapfile"
	
	fi
}

# function for new swap file

newSwapFile() {

	local SIZE=12288  

	echo
	echo "{ file size is ${SIZE} MB }"
	echo

	# dd for create swap file
	
	dd if=/dev/zero of=/swapfile bs=1M count=$SIZE status=progress || exit 1

	# set permission
	
	chmod 600 /swapfile || exit 1

	# make file to swap 

	mkswap /swapfile || exit 1

	# enable swapfile

	swapon /swapfile || exit 1

	# swap check

	swapon --show || exit 1
}

# main function : this script remove swap file or make new one

main() {

	if [ "$(id -u)" -ne 0 ]; then
	
		echo "user access null"
	
		exit 1
	
	fi

	removeSwapFile

	newSwapFile

	echo "_[success] : new swapfile active Please reboot!"
}

main # call main execution
