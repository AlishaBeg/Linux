#!/bin/bash

echo "{ are you gived permission to all file }"

select choice in "Yes" "No"; do
	case $choice in
		Yes)
			chmod u+x *.sh
			echo "[-] permission accept"
			break
			;;
		No)
			clear
			echo "[ ] permission denied"
			break
			;;
		*)
			echo "[error] choice unexpected"
			;;
	esac
done
