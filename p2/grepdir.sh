#!/bin/bash
#Author Miguel Salazar, ECS40, Winter 2014

if [[ $# -eq 0 ]]; then
    echo "usage: $0 directory pattern [-grep option]*"
    exit 1 #exits with failure of 1 because it does not reach the second peramitter.
fi   

if [[ $# -eq 2 ]]; then
    find $1 -exec grep $2 {} \; 
else
  if [[ "$3" != -* ]]; then
    echo "usage: $0 directory pattern [-grep option]*"
    exit 1 #if part 3 does not have a - at the beginning
  else
    if [[ $# -eq 3 ]]; then
      find $1 -exec grep $3 $2 {} \;
    else  
      if [[ "$4" != -* ]]; then
        echo "usage: $0 directory pattern [-grep option]*"
        exit 1 #if part 4 does not have a - at the beginning
        else
          if [[ $# -eq 4 ]]; then
          find $1 -exec grep $4 $3 $2 {} \;
        fi      
      fi 
    fi 
  fi 
fi
