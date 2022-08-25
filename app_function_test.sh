#!/bin/sh
#Checking if application is up and running
app_health=$(curl --silent http://localhost:5000)
echo $app_health
if [ "$app_health" == "This is Devops Assignment - Bits Pilani!" ]
then 
	echo "Application health is OK!"
	exit 0
else
	echo "Application is not running"
	exit 1
fi
