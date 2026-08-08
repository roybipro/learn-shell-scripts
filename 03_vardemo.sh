#!/bin/bash

#script to show how to use variables

a=10
name="Bipro"
age=23

echo "My name is $name and age is $age"

name="Roy"

echo "My name is $name "


#Var to store the output of a command

HOSTNAME=$(hostname)
echo "Name of the machine is $HOSTNAME"

