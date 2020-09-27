#! /bin/bash -x

#Enter year 
read -p "Enter the year: " year

#check condition if year is leapyear or not
if [ $((year%4)) -eq 0 ] || [ $((year%400)) -eq 0 || [ $((year%100)) -eq 0 ]
then
echo "its a leap year"
else
echo "its not a leap year"
fi
