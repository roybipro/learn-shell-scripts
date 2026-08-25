#!/bin/bash

# Script to check if a file or directory exists

read -p "Enter the file or directory path: " filepath

if [[ -f "$filepath" ]]
then
    echo "File '$filepath' exists."
elif [[ -d "$filepath" ]]
then
    echo "Directory '$filepath' exists."
else
    echo "Path '$filepath' does not exist."
fi
