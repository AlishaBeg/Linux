#!/bin/bash

# function ensure is root permission

isRootAccess() {

	if [ "$(id -u)" -ne 0 ]; then

		../Theme/denied.sh

		exit 1
	fi
}

isRootAccess
