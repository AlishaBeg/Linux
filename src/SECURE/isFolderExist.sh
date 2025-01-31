#!/bin/bash

# function check folder is exist or not

isFolderExist() {

	if [[ -f "$1" ]]; then

		return 0
	
	else

		return 1
	fi
}