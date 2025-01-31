#!/bin/bash

action() {

	local answer

	read -p "- CAN YOU SAVE US? [Yes/No] : " answer

	if [ $answer == "Yes" ]; then

		exit 1

	fi
	
	echo "--------------------------------------------------------------------------------------------------"
	echo
	echo
	echo "		FF FF FF UU    UU CC CC CC KK     KK     YY    YY OO OO OO UU    UU 			"
	echo "		FF       UU    UU CC       KK    KK       YY  YY  OO    OO UU    UU 			"
	echo "		FF       UU    UU CC       KK   KK         YYYY   OO    OO UU    UU 			"
	echo "		FF FF    UU    UU CC       KK KK            YY    OO    OO UU    UU 			"
	echo "		FF       UU    UU CC       KK   KK          YY    OO    OO UU    UU 			"
	echo "		FF       UU    UU CC       KK    KK         YY    OO    OO UU    UU 			"
	echo "		FF       UU UU UU CC CC CC KK     KK        YY    OO OO OO UU UU UU 			"
	echo
	echo
	echo "--------------------------------------------------------------------------------------------------"
	echo

	sleep 3
}

clear

echo
echo "--------------------------------------------------------------------------------------------------"
echo
echo " Primary Protocal            : [ FAILED ] "
echo
echo " Secondary Protocal          : [ FAILED ] "
echo
echo "--------------------------------------------------------------------------------------------------"
echo

sleep 1

echo " { Charge Sheet: Unauthorized Access and System Misconduct }"
echo

sleep 1

echo " unauthorized access          : [ GUILTY ]"
echo

sleep 1

echo " breach of protocol           : [ GUILTY ]"
echo

sleep 1

echo " failure to admit mistakes    : [ GUILTY ]"
echo

sleep 1

echo " harm to system security      : [ GUILTY ]"
echo

sleep 1

action

