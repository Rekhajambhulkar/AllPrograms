#! /bin/bash

#declare Array
declare -a arr

#Enter 5 nos from user
echo "Enter 5 nos:"
read n1 n2 n3 n4 n5

#store numbers in Array
arr=( $n1 $n2 $n3 $n4 $n5 )
echo "Array is:" ${arr[@]}
n=5;

for((i=0;i<$(($n-2));i++))
do
        for((j=$(($i+1));j<$(($n-1));j++))
        do
                for((k=$(($j+1));k<$n;k++))
                do
			#assign value to variable
                        x=${arr[i]};
                        y=${arr[j]};
                        z=${arr[k]};

			#check condition sum of three is zero
                        if [ $(( $x + $y + $z )) == 0 ]
                        then
                                echo "sum of three no $x $y $z is zero"

                        fi
                done
        done
done
