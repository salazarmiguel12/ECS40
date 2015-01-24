#!/bin/bash



if [[ "$1" = "." ]]; then
	if [[ "$2" = "bin" ]]; then 
		grep -l /bin * |  wc -l
		echo "bin in file"
	fi
	
else  
	echo "usage: grepdir.sh directory pattern [-grep option]*"
fi
