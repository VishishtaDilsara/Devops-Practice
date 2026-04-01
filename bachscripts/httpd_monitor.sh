#!/bin/bash

echo "########################################################"
date
ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
	echo "Httpd is running"
else
	echo "Httpd is not running"
	echo "Httpd is starting..."
	systemctl start httpd
	if [ $? -eq 0 ]
	then 
		echo "Httpd started successfully"
	else
		echo "Cannot start the service."
	fi
fi
echo "########################################################"
