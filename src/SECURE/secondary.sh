#!/bin/bash

# secondary protocol for secure validation

secondary() {

	sleep 3

	# sure username and password

	local username

	local password

	read -p " [username]:~ " username

	echo

	read -s " [password]:~ " password

	echo
	echo
	echo

	if [ $username == $(cat ./src/SECURE/admin) ]; then

		if [ $password == $(cat ./src/SECURE/admin) ]; then

			./src/SECURE/accept.sh

			exit 0
		fi

	fi

	./src/SECURE/action.sh
}

question() {

	local isMistake

	read -p "_ did you open this by mistake? (Yes/No) : " isMistake

	if [[ "$isMistake" == "Yes" ]]; then

		echo
		echo " ------------------------------"
		echo " | WARNING : DON'T OPEN AGAIN |"
		echo " ------------------------------"
		echo

		exit 1
	fi
}

clear

./src/SECURE/denied.sh

sleep 1

echo 
echo " unatheorized access detected"
echo

sleep 1

question

echo
echo " if this was done intentionally,"
echo " or you failed in secondary Protocol then "
echo " it is a punishable offense so this is your final chance know "
echo

sleep 5

question

clear

echo
echo "--------------------------------------------------------------------------------------------------"
echo
echo " Primary Protocal            : [ FAILED ] "
echo
echo " Secondary Protocal          : [ ACTIVE ] "
echo
echo "--------------------------------------------------------------------------------------------------"
echo

secondary