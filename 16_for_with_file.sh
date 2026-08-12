#!/bin/bash
#getting valus from a file names.txt

FILE="/Users/roybipro/Developer/os-uni/learn-shell-scripts/names.txt"

for name in $(cat $FILE)
do
  echo "Name is $name"
done
