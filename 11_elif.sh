#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -ge 80 ]]
then
  echo "A"
elif [[ $marks -ge 70 ]]
then
  echo "B"
elif [[ $marks -ge 60 ]]
then
  echo "C"
else
  echo "You are Failll!!!!"

fi  #end of if
