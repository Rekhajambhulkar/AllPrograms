#! /bin/bash

#declare its a Array
declare -a arr

#take input from user
echo "Enter no:"
read arr

#use condition
i=$((i*i))

for((i=2;$i<= "${arr[@]}";i++))
do
	#check condition for primefactorization
        while [ $((arr % i)) -eq 0 ]
        do
                echo "$i"
                arr=$(( arr / i ))
        done
done


if [ $arr -gt 2 ]
then
        echo "${arr[@]}"
fi

