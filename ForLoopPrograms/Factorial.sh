#! /bin/bash -x

#Declare a variable
num=5
fact=1

#using for looop calculate factorial
for((counter=$num;counter>=1;counter--))
do
	fact=$(($fact * $counter))
	echo "Factorial of 5 is:"$fact
done
