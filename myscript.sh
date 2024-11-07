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
