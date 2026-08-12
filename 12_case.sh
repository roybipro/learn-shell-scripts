#!/bin/bash

echo "Provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to change the current location"

read choice

case $choice in
  a)
    echo "Todays date is: "
    date
    echo "Ending......."
    ;;
  b)ls;;
  c)pwd;;
  *)echo "Please provide valid input"
esac #end is oposite of the case
