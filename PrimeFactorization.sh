#! /bin/bash

declare -a arr

#Enter input from user
echo "Enter no:"
read arr

i=$((i*i))

#Use for loop for interation
for((i=2;$i<= "${arr[@]}";i++))
do
        while [ $((arr % i)) -eq 0 ]
        do
                echo "$i"
                arr=$(( arr / i ))
        done
done

#check condition
if [ $arr -gt 2 ]
then
        echo "${arr[@]}"
fi
