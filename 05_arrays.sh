#!/bin/bash

#Array


myArray=( 1 2 3 Hello "My Buddy")

echo "All the valus in the array is ${myArray[*]}"



echo "${myArray[4]}"


#how to find number of valus in an array


echo "No. of valus , length of array is ${#myArray[*]}"


echo "Valus from 2-3 ${myArray[*]:2:2}"


#update an array with new valus

myArray+=(New 30 40)

echo "Valus of new array ${myArray[*]}"




