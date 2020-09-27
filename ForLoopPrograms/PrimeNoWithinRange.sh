#! /bin/bash -x

#Take input from user
read -p "Enter any num:" numb

i=2;
f=0;

#Check the Condition using for loop 
for((i=2;i<=numb;i++))
do
        if [ $((numb%i)) -eq 0 ]
        then
                f=1
        fi
        ((i++));
done

#check Condition No is prime or not
if [ $f -eq 1 ]
then
        echo "No. is not prime"
else
        echo "No. is prime"
fi
