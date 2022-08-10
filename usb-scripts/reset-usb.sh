#!/bin/bash

base="/sys/bus/pci/drivers"

echo "Looking for USBs ..."
for usb_std in "$base/"?hci*
do
	echo "* USB standard '$usb_std' ..."
	for dev_path in "$usb_std/"*:*
	do
		dev="$(basename "$dev_path")"
		echo "  -  Resetting device '$dev' ..."
	done
done
echo "Done."

