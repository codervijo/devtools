#!/bin/bash

GT_CMD="/usr/bin/gnome-terminal"
WD1=${HOME}/Desktop
WD2=${HOME}/Documents

${GT_CMD} \
	--window -t 'Tab 1' -- bash -c 'ls; bash' \
	--tab -t 'Tab 2' --working-directory=${WD1} -- bash -c 'ls; bash'\
	--tab -t 'Tab 3' --working-directory=${WD2} -- bash -c 'ls; bash'
 

