#!/bin/bash


network() {

	local option

	local ssid
	
	local netpass

	# all active wifi device

	nmcli device wifi list

	select option in "connect" "unconnect"; do
	
		# connection

		nmcli connection show

		case $option in

			connect)


				read -p " [ enter ssid name ]: " ssid

				read -s " [ network password ]: " netpass

				# connect wifi device

				nmcli device wifi connect $ssid password $netpass

				break;;

			unconnect)

				read -p " [ enter ssid name ]: " ssid

				# unconnect wifi device

				nmcli connection down id $ssid

				break;;

			*)
				echo "----------------------------"
				echo "| network connection abort |"
				echo "----------------------------"
				;;
		esac

	done

	echo
	echo
	echo

	# connection status

	nmcli device status
}

echo
echo "{ device network }"
echo

network


# nmcli device wifi list      <!-- show wifi device list -->

# nmcli device wifi connect "SSID" password "PASSWORD"        <!-- connect wifi device -->

# nmcli device status     <!-- device status -->

# nmcli connection show       <!-- connection status -->

# nmcli connection down id "SSID"     <!-- disconnect device -->
