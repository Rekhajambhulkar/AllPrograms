#! /bin/bash -x

echo "Enter no:"
read num

#CONSTANTS
s=0
rev=""
temp=$num

#using function check no is plindrom
function isPalindrome() {
        echo $num
}

#check the conditions
while [ $num -gt 0 ]
do
        s=$(( $num%10 ))
        num=$(( $num/10 ))
        rev=$( echo ${rev}${s} )
done

ispalindrome

if [ $temp -eq $rev ];
then
        echo "No is palindrome"
else
        echo "No is not palindrome"
