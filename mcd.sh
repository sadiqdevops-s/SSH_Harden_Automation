#!/bin/bash
mcd()
{
	NEW="$1"
	if [ -d "$1" ]; then 
		echo " Already exits change name"
	else 
		mkdir -p "$1"
	fi

}

mkuser(){

	read -p "Enter user name : " NAME
	if [ id "$NAME" ]; then 
		echo "User already exits " 
	else 
		sudo useradd "$NAME" 
		sudo passwd "$NAME"
		sleep 2
	fi 
}
