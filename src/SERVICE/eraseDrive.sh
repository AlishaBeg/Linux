#!/bin/bash

# function erase drive storage

erase_drive() {

	echo
	echo "WARMING { this will erase all data on the drive or file }"

	./confirm.sh

	read -p "insert qualified name : " eraseDrivePath

	shred -vzn 0 $eraseDrivePath

}

erase_drive
