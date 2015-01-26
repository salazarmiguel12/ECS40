#!/bin/bash
#Author Eric Fleming, ECS40, Winter 2014

if [[ $# != 3 ]]; then
   echo usage: cpdirs.sh source_directory1 source_directory2 dest_directory
   exit 1
else
   if [[ -f "$3" ]]; then
      echo usage: cpdirs.sh source_directory1 source_directory2 dest_directory
      exit 1
   fi
   if [[ ! -d "$3" ]]; then
      mkdir "$3"
      cp -u $1/* $3
      cp -u $2/* $3
   else
      cp -u $1/* $3
      cp -u $2/* $3
   fi
fi
