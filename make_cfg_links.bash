#!/bin/bash

##############################################################################################
# make_cfg_links
#
# for the .cfg files I need for Klipper, make sure the repo files are linked to those in ~/.
##############################################################################################

ensure_link () {
	file=$1
	_debug=1
	
	if [[ _debug ]]; then
		names=$(stat -c %h -- "$1")
		printf "Inode \"$1\" has ${names} hard links.\n"
	fi


	# if the given inode ("file") has one name, it is not "linked".
	if [ $(stat -c %h -- "${file}") -gt 1 ]; then
		printf "File \"${file}\" is not linked.\n"
	else
		printf "File \"${file}\" is already linked.\n"
	fi
}

ensure_links () {
	ensure_link printer.cfg
	ensure_link example_leds.cfg
}

main () {
	printf "${BASH_SOURCE}: making sure .cfg files are linked.\n"
	ensure_links
	
	printf "${BASH_SOURCE}: finished.\n\n"
}

main