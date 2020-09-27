#! /bin/bash -x

#input from user
echo "Enter the no:"
read num

using case print unit
case $num in
        1) echo "ONE";;
        10) echo "TEN";;
        100) echo "HUNDRED";;
        1000) echo "THOUSAND";;
        *) echo "INVALID"

esac
