#!bin/bash

myVar="Hey Buddy how are you?"

myVarLength=${#myVar}

echo "Length of myVar is ${myVarLength}"

echo "Uppercase is ------ ${myVar^^}"
echo "Lowercase is ------ ${myVar,,}"


#To replace a string

newVar=${myVar/Buddy/Bipro}

echo "New Var is ------- ${newVar}"


#To slice a string

echo "After slice ${myVar:4:5}"
