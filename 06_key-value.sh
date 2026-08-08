#!/bin/bash

#How to store the key value pairs

declare -A myArray
myArray=( [name]=Bipro [age]=23 [city]=Dhaka )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[city]}"
