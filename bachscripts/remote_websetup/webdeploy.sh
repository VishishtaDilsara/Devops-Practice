#!/bin/bash

USR='devops'

for host in `cat remhosts`
do
	echo "#################################################"
	echo "Connecting to $host..."
	echo "Pushing Script into $host"
	scp multios_websetup.sh $USR@$host:/tmp/
	echo "Executing Script on $host"
	ssh $USR@$host sudo /tmp/multios_websetup.sh
	echo "Removing Script from $host"
	ssh $USR@$host sudo rm -rf /tmp/multios_websetup.sh
	echo "#################################################"
	echo
done
