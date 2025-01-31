#!/bin/bash

# primary protocol for secure validation

primary() {

	# username validation

	local username

	echo
	echo "____________________________________                                                              "
	echo "                                    \   ONLY 60seconds for ABORT or ACCESS else I will FUCK OS    "
	echo "                                     \____________________________________________________________"

	sleep 2

	read -p " Enter Username : " username

	if [ $username != $(cat ./src/SECURE/admin) ]; then

		./src/SECURE/secondary.sh

		exit 1

	fi	

	# password validation

	local password
	
	echo
	echo "--------------------------------------------------------------------------------------------------"
	echo
	read -s " Enter Password : " password
	echo
	echo "=============================================================[ CHECK IDENTIFICATION ]============="
	echo

	sleep 3

	if [ $password != $(cat ./src/SECURE/admin) ]; then

		./src/SECURE/secondary.sh

		exit 1

	fi

	clear

	./src/SECURE/accept.sh
}

primary