#!/bin/bash

echo "Script Begins"
server=`echo $1 | sed 's/,/ /g'`
echo $server
if [ -n "$server" ]
then
	for line in $server
	do
		echo $line
		echo "sshpass -p "root123" ssh root@$line"
		gnome-terminal -e "sshpass -p "root123" ssh root@$line"
		
	done
else
	echo "Please give appropriate hostname as parameter to the script"
fi
