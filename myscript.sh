#!/bin/bash

myname="ravishan"
myage="30"

echo "Hello my name is $myname."
echo "Im $myage years old."

nowDate=$(date)
echo "current date is: $nowDate."

#insted the data is getting like above you can get the date time like this.just write date.
date

echo "Your username is : $USER."

#this kind of variables are already defined.
#the best practices is --> keep your variables are lower case.
#note that --> the env variables are write dows as upper case.Also you can find the env variables that pressing -->

env

# the astrict  "*" is a wildcard in hthe bash.


#########################################################################################################################
#if statement

mynum=300

if [ $mynum -eq 200 ]
then
        echo "the condition is true."
else
        echo "the condition is false"
fi

if [ $mynum -ne 200 ]
then
        echo "the second condition is true."
else
        echo "the second condition is false"
fi

##################################################################
#check if the specific file is present in the file system.

if [ -f ~/myLife ]
then
        echo "your file is found"
else
        echo "your file is not found"
fi


#################################################################
#install htop, if the file system does not have the htop


command=/usr/bin/htop

if [ -f $command ]
then
        echo "htop is available lets run it"
else
        echo "htop is not available installing it"
        sudo apt update && sudo apt install -y htop
fi

###################################################################
## status about above commands weather success or not
echo "exit code is : $?"


###################################################################
# while loop

myvar=1

while [ $myvar -le 10 ]
do
        echo "this is while loop $myvar "
        myvar=$(( $myvar +1 ))
        sleep 0.5
done

####################################################################
# for loop

for n in {1..10}
do
        echo "this is for loop - $n"
        sleep 1
done

echo "this is outside the for loop."

########################################################################
# get the inputs from user.
# standard inputs

echo "please enter your name "
read username
echo "your username is $username"
