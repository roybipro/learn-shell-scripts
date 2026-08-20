# Bash

### 💡What is Shell?

<aside>
📌

A shell provides an environment for a user to execute commands and interact with the kernel

</aside>

!linux-0203-1919.webp

<aside>
📌

## There are different types of shells

- bash
- sh
- ksh
- tsh
- fish
- zsh

We can check what our shell type is using

```bash
echo $0
```

From zsh to bash on Mac, use only the **bash** command

.sh is not mandatory 

</aside>

<aside>
📌

## What is shell scripting?

- Shell script consist of set of commands to perform a task
- All the commands execute sequentially
- Some task like **file** **manipulation, program execution, user interaction, automation of task** etc can be done
</aside>

<aside>
📌

## First basic script

```bash
#!/bin/bash
echo "Hello World!"
```

#### 💡What is SHEBANG?

```bash
#!/bin/bash
```

#### 💡How to run a script

<aside>
📌

- Make sure script has execute permission rwx
- Run using

```bash
./script.sh
./path/script.sh #for this permission is needed (to permission a file (chmod u+x file name ) 
#for checking permission we can use: (ls -l shell.sh)
bash script.sh #no permission is needed
```

- Ctrl+c to terminate
- Ctrl+z to stop
</aside>

</aside>

<aside>
📌

## Comments

For a single-line comment, use

#This is a comment

Multi-line comment

<<any 

comments

are written here

any

<aside>
💡

### Escape Characters

use \ 

example Hello \”World\” to print Hello “World”

</aside>

</aside>

### 

<aside>
📌

### What are variables?

There are two types:

1. System variable ( Capital)  like PWD BASH
2. User Variable

```bash
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
```

### 📌 Constant variables

```bash
#!/bin/bash

#constant Variables

readonly UNIVERSITY="AIUB"

echo "My university name is $UNIVERSITY"

UNIVERSITY="IUB"
```

</aside>

<aside>
📌

## Array

How to define an array?

```bash
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

```

### 💡 Key-value array

```bash
#!/bin/bash

#How to store the key value pairs

declare -A myArray
myArray=( [name]=Bipro [age]=23 [city]=Dhaka )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[city]}"
```

</aside>

<aside>
📌

## String Operations

```bash
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
```

</aside>

<aside>
📌

## User Interaction

```bash
#!/bin/bash

#echo "What is your name ? - "
read -p "What is your name : " name.  #it callded promt
echo "Your name is $name" 
```

### 💡Silent user input for password or important thing

read -s [silent on new line]

read -sp [silent on the same line]

</aside>

<aside>
📌

## Arithmetic Operations

We can use $(expr 2+2)

$(expr 5 \*6)

```bash
#!/bin/bash

a=10
b=2

let mul=$a*$b

let sum=$a+$b

echo "$mul"
echo "$sum"

#also
echo "Substraction is $((a-b))"
```

### 💡 Floating-point calculation

echo “$num1+$num2” | bc

num3=$(bc<<<”$num1+$num2”)

</aside>

<aside>
📌

## Conditional statements

| Equal | -eq/== |
| --- | --- |
| Greater than or equal to | -ge |
| Less than or equal to | -le |
| Not Equal | -ne/ != |
| Greater  Than | -gt |
| Less Than | -lt |

### 💡 If Else

```bash
#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -gt 40 ]]
then
  echo "You are PASS"
else
  echo "you are FAil!!!!!!!!!!!"

fi  #end of if
```

💡 Elif

```bash
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
```

💡Case

```bash
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
```

</aside>

<aside>
📌

## Logical Operators &&,||,!

```bash
#!/bin/bash

#AND operator

read -p "What is your age? " age
read -p "What is your Country? " country

if [[ $age -ge 18 ]] && [[ $country == "Bangladesh" ]] #for string comparison  dont use -eq use ==
then
  echo "You can vote"
else
  echo "You can't Vote"

fi
```

### 💡 Ternary

```bash
#!/bin/bash

#cond1 && cond2 || cond3

age=18
 
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
```

</aside>

<aside>
📌

## LOOPS

### 💡For

```bash
#!/bin/bash

for i in {1..11}
do
  echo "Number is $i"
done

for name in Raju Sam Baburao
do
  echo "name is $name"
done
```

### 💡 for  with file

```bash
#!/bin/bash
#getting valus from a file names.txt

FILE="/Users/roybipro/Developer/os-uni/learn-shell-scripts/names.txt"

for name in $(cat $FILE)
do
  echo "Name is $name"
done
```

### 💡 for  with Array

```bash
#!/bin/bash

myArray=( 1 2 3 Hello hi )

length=${#myArray[*]}

for (( i=0;i<$length;i++ ))
do
  echo "value of my array is ${myArray[$i]}"
done
```

</aside>

<aside>
📌

## While Loop

```bash
#!/bin/bash

count=0
num=10

while [[ $count -le $num ]]
do
  echo "Value of count variable is $count"
  let count++
done
```

### 💡Until Loop

```bash
#!/bin/bash

a=10

until [[ $a -eq 1 ]]
do
  echo "Value of a is $a"
  let a--
done
```

### 💡Infinite Loop

```bash
#!/bin/bash

#infinite loop

while true
do
  echo "HI Buddy"
  sleep 2s
done

#Using for

#!/bin/bash

for (( ;; ))
do
  echo "Hi Buddy"
  sleep 2s
done
```

### 💡While with file

```bash
#!/bin/bash

while read myVar
do
  echo "Value from file is $myVar"
done < names.txt
```

### 💡While with csv file

```bash
#!/bin/bash

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age

do
  echo "ID is $id"
  echo "Name is $name"
  echo "Age is $age"

done

```

</aside>

<aside>
📌

## Function

```bash
#!/bin/bash

welcomeNote() {
  echo "-------------"
  echo "Welcome"
  echo "-------------"

}

welcomeNote
```

### 💡Function with arg

```bash
#!/bin/bash

welcomeNote() {
  echo "-------------"
  echo "Welcome $1" 
  echo "age $2" 
  echo "-------------"

}

welcomeNote Bipro 24
welcomeNote Roy 23
```

</aside>

<aside>
📌

## Arguments

```bash
#!/bin/bash

echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments are -$@"
echo "Number of arguments are -$#"
```

### 💡Arguments shifting

```bash
#!/bin/bash

#to create a user, provide username and description

echo "Creating useri"
echo "Username is $1"

echo "Description is $@"
```

</aside>

<aside>
📌

## Break/Continue

```bash
#!/bin/bash

no=6

for i in 1 2 3 4 5 6 7 8 9
do 
  if [[ $no -eq $i ]]
  then
    echo "$no is found!!!!!"
    break
  fi
  echo "Number is $i"

done
```

```bash
#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10
do 
  let r=$i%2
  if [[ $r -eq 0 ]]
  then
    continue
    break
  fi
  echo "Number is $i"

done
```

</aside>

<aside>
📌

## connectivity check script

</aside>
