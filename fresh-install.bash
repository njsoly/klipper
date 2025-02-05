#!/usr/bin/env bash

echo "** ${BASH_SOURCE[0]} **"

if [[ ! -f ~/printer.cfg ]]; then
	echo "copying a basic printer.cfg to user root."
	cp fresh-install-printer-cfg ~/printer.cfg
else
	echo "~/printer.cfg already exists."
fi

echo "** end ${BASH_SOURCE[0]} **"
