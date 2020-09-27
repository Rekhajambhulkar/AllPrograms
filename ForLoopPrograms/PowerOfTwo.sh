#! /bin/bash  -x

#Enter exponent
echo "Enter exponent:"
read exp

#declare variables
base=2
num=1

#Using for loop calculate power of 2
for((i=1;i<=$exp;i++))
do
	num=$(( $num * $base ))
	echo $num
done
