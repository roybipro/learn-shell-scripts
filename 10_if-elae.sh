#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -gt 40 ]]
then
  echo "You are PASS"
else
  echo "you are FAil!!!!!!!!!!!"

fi  #end of if
