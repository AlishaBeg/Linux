#!/bin/bash

FILE="../ACCOUNT/admin.dat"

getPassword() {

    local username=$1
    
    if [[ -z "$username"]]; then
        echo "username unvalid!"
        exit 1
    fi

    password=$(grep -P "^$username\t" "$FILE" | Cut -f2)

    if [[ -z "$password"]]; then
        echo "password unvalid!"
        exit 1
    else
        return $password
    fi
}