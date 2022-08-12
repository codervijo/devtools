#!/bin/bash

#This is the location where the usb are binded.
#This program works with just one specific USB input.
#In this case is 0000:00:0c.0 from personal mouse.
base="/sys/bus/pci/drivers"
sleep_secs="5"


echo "Looking for USBs ..."
for usb_std in "$base/"?hci*
do  
	#If the directory matches the mouse location then we unbind. 
	if [[ $usb_std = "$base/xhci_hcd" ]]
	then 
		echo "Removing drivers..."
		#This program needs sudo permission unless we are on root.
		echo 0000:00:0c.0  | sudo tee $usb_std/unbind
		#Waits for 3 secs to Re-connect drivers.
		echo "Drivers has been removed."
		sleep "$sleep_secs"
		echo "Binding drivers..."
		echo 0000:00:0c.0  | sudo tee $usb_std/bind
		sleep "$sleep_secs"
		echo "Drivers has been connected."
	fi
done
echo "Process Done."