#!/bin/bash 

if [ "$EUID" -ne 0 ] && [ ! -f /etc/ssh/sshd_config ]; then 
	echo "This is not a Root user : try to login from root user"
	echo "SSH is missing "
	exit 1 
fi 

if  ! systemctl list-unit-files | grep -q "^sshd.service" ; then 
	echo " SSH is missing : "
	exit 1
fi 


BACKUP_FILE="/etc/ssh/sshd_config_$(date +%Y%m%d_%H%M%S)"
if cp /etc/ssh/sshd_config "$BACKUP_FILE";then
	echo "Backup successfull"
	echo "Location: $BACKUP_FILE"
else
	echo "Backup failed"
fi 

CURRENT_PORT=$(grep -E "^Port" /etc/ssh/sshd_config | awk '{print $2}' ) 
CURRENT_PERM=$(grep -E "^PermitRootLogin" /etc/ssh/sshd_config | awk '{print $2}')
CURRENT_PASS=$(grep -E "^PasswordAuthentication" /etc/ssh/sshd_config | awk '{print $2}')
CURRENT_KEY=$(grep -E "^PubkeyAuthentication" /etc/ssh/sshd_config | awk '{print $2}')

if [ -z $CURRENT_KEY ] && [ -z $CURRENT_PERM ] && [ -z $CURRENT_PASS ] && [ -z $CURRENT_KEY ];then 
	echo "No configuration has been made"
	echo "Configuratinon will be made"	
	echo "Port 2222" | tee -a /etc/ssh/sshd_config
	echo "PermitRootLogin no" | tee -a /etc/ssh/sshd_config
	echo "PasswordAuthentication no" | tee -a /etc/ssh/sshd_config
	echo "PubkeyAuthentication yes" | tee -a /etc/ssh/sshd_config
else
	echo " Current port is: $CURRENT_PORT"
	echo " Current permisiion for root is: $CURRENT_PERM"
	echo " Current Password authentication is: $CURRENT_PASS " 
	echo " Current Public key authentication is: $CURRENT_KEY "
fi 


