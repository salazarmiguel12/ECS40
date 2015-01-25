#! /bin/bash
#Author Miguel Salazar, ECS40, Winter 2014

if [[ $# -eq 0 ]]; then
    echo "usage: $0 {filelist}+"
    exit 1 #exits with failure of 1 because it does not reach the second peramitter.
fi   


  
if [[ "$1" == *.tar ]]; then
  tar -xvf $1 $2 $3 $4 $5 $6 $7 $8
  # uncompress .tar 
else
  if [[ "$1" == *.tar.gz ]]; then
    tar -xvf $1 $2 $3 $4 $5 $6 $7 $8
    # uncompress .gz
  else
    if [[ "$1" == *.tgz ]]; then
      tar -xvf $1 $2 $3 $4 $5 $6 $7 $8
      # uncompress .tgz
    else
      if [[ "$1" == *.Z ]]; then
            tar -xvf $1 $2 $3 $4 $5 $6 $7 $8
            # uncompress .Z 
      else
        if [[ "$1" == *.gz ]]; then
            tar -xvf $1 $2 $3 $4 $5 $6 $7 $8
            # ucompress .gz
        else
          if [[ "$1" == *.tar.Z ]]; then
            tar -xvf $1 $2 $3 $4 $5 $6 $7 $8
            # uncompress .tar.Z
          else
            if [[ "$1" == *.zip ]]; then
              unzip $1 $2 $3 $4 $5 $6 $7 $8
            # uncompress .zip
            else
              echo "$0: $1 has no compression extension."
              fi
            fi
          fi
        fi
      fi
    fi
  fi




