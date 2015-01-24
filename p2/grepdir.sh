#Author Miguel Salazar

if [[ $# -lt 2 ]]; then
    echo "usage: $0 directory pattern [-grep option]*"
  exit 1 #exits with failure of 1 because it does not reach the second peramitter.
fi   


if [[ $# -eq 2 ]]; then
    find $1 -exec grep $2 {} \; 
else
    if [[ $# -eq 3 ]]; then
      find $1 -exec grep $3 $2 {} \;
    else  
      if [[ $# -eq 4 ]]; then
        find $1 -exec grep $4 $3 $2 {} \;
    fi 
  fi 
fi 

#need to finish
