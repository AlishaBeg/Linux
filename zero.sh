#!/bin/bash

# ----------------------------

execute() {

	clear 

	# set permission ---

	chmod u+x ./src/*.sh 

	chmod u+x ./src/SECURE/*.sh

	chmod u+x ./src/SERVICE/*.sh

	# loader ---

	./src/SECURE/loader.sh

	./src/app.sh
}

# function for main execution

execute
