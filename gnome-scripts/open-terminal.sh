#!/bin/bash
gnome-terminal \
	--window -t 'Tab 1' -- bash -c 'ls; bash' \
	--tab -t 'Tab 2' --working-directory="/home/gandhi/Desktop" -- bash -c 'ls; bash'\
	--tab -t 'Tab 3' --working-directory="/home/gandhi/Documents" -- bash -c 'ls; bash'


 

