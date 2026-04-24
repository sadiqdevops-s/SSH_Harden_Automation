mcd()
{
	NEW="$1"
	if [ -d "$1" ]; then 
		echo " Already exits change name"
	else 
		mkdir -p "$1"
	fi

}
