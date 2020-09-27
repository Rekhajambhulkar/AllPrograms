#! /bin/bash  -x

#take input from user
echo "Enter exponent:"
read exp

#variables
base=2
num=1

#check condition
while [ $exp -ne 0 ]
do
	num=$(( $num * base ))
	((--exp))

	echo "Power of 2 is: " $num
done
