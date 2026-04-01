#!/bin/bash

VALUE=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $VALUE -eq 1 ]
then
	echo "One network Adapter"
elif [ $VALUE -gt 1 ]
then
	echo "Multiple active Adapters"
else
	echo "No Active Adapters"
fi	

