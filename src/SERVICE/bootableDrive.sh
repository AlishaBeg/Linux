#!/bin/bash


# function ensure is root permissions

isRootAccess() {

	if [ "$(id -u)" -ne 0 ]; then

		echo "[ root permission : denaid ]"

		exit 1
	fi
}

# function get or ensure ISO is valid

getISO() {

	read -p "enter ISO file qualified name : " ISO

	if [ ! -f "$ISO" ]; then

		echo "[ unvalid ISO file! ]"

		exit 1
	fi
}

# function get or ensure USB drive is valid

getUSB() {

	read -p "enter USB Drive location : " USB

	if [ ! -b "$USB" ]; then

		echo "[ unvalid Drive Path!]"

		exit 1
	fi
}

# function for bootable USB drive

bootableDrive() {

	# unmount the usb device

	umount ${USB}*2>/dev/null

	# create the bootable USB using dd

	dd if="$ISO" of="$USB" bs=4M status=progress oflag=sync

	# sync to ensure everything is written

	sync
}


# ---------

# isRootAccess

ISO="$1"

USB="$2"

# getISO

# getUSB

# user confirmation

echo
echo "WARNING { this will erase all data on the drive }"
echo

read -p "are you sure you want to continue? (y/n): " choice

if [[ ! "$choice" =~ ^[Yy]$ ]]; then

	echo "-----------------"
	echo "[ command abort ]"
	echo "-----------------"

	exit 1
fi

# bootableDrive

echo
echo "SUCCESS { created bootable USB Drive now safely eject }"
echo
