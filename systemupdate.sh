#! /bin/bash

sudo apt -y update
sudo apt -y upgrade

if [ -f /var/run/reboot-required ] ; then
	reboot
fi
