#!/bin/bash

ping -q -c 1 8.8.8.8 > /dev/null
if [ $? -eq 0 ]; then 
	echo "internet is working"
else
	echo "No Internet Connection"
fi
