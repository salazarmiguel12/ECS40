#! /bin/bash
#Author Miguel Salazar, ECS40, Winter 2014
if [[ $# -eq 0 ]]; then
    echo "usage: uncomp {filelist}+"
    exit 1 #exits with failure of 1 because it does not reach the second peramitter.
fi   

array=($1 $2 $3 $4)
for i in "${array[@]}"
do
    if [[ "$i" == *.tar ]]; then
  	echo "went in"
  	tar -xvf $i 
  	# uncompress .tar 
    fi
    if [[ "$i" == *.tar.gz ]]; then
     	tar -xvf $i
      	# uncompress .gz
    fi
    fi [[ "$i" == *.tgz ]]; then
       	tar -xvf $i
        # uncompress .tgz
    fi
    if [[ "$i" == *.Z ]]; then
      	tar -xvf $i 
        # uncompress .Z 
    fi
    if [[ "$i" == *.gz ]]; then
        tar -xvf $i 
        # ucompress .gz
    fi
    if [[ "$i" == *.tar.Z ]]; then
        tar -xvf $i 
        # uncompress .tar.Z
    fi
    if [[ "$i" == *.zip ]]; then
        unzip -q $i 
    fi
done




