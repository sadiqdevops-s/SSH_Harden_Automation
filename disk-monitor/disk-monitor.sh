#!/bin/bash 

MAX=80
USAGE=$( df -h / | awk 'NR==2 {print $5}'| sed 's/%//')

if [ ${USAGE} -gt ${MAX} ]; then 
	echo "WARNING: Disk usage is ${USAGE}"
	logger -t disk-monitor "Disk Usage is ${USAGE}"
else 
	echo "OK: Disk usage is ${USAGE}"
	logger -t disk-monitor "Disk Usage is Normal less then 80%"
fi 

