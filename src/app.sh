#!/bin/bash

username=""

read -p "enter username : " username

FILE="./src/ACCOUNT/admin.dat"

getUsername=$(cat "$FILE")

echo "$username is $getUsername"

if [$($username == $getUsername)]; then

    echo "exit"

fi