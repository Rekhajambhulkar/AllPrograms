!/bin/bash

declare -a array

#Assign values in the Array
array=(127 117 126 112 101 102 123 324 234 456)

#check incoming array is not large enough
if [ "${#array[@]}" -lt 2 && "${#array[@]}" -gt 2 ]
then
	echo Incoming array is not large enough >&2
  	exit 1
fi

#CONSTANTS
largest=${array[0]}
secondGreatest='unset'

lowest=${array[0]}
secondLowest='unset'


for((i=1; i < ${#array[@]}; i++))
do
	#check Array[i] of is largest
	if [[ ${array[i]} > $largest ]]
  	then
    		secondGreatest=$largest
    		largest=${array[i]}
  	elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  	then
  	        secondGreatest=${array[i]}
        fi
done

echo "secondGreatest = $secondGreatest"

#check Array[i] is lowest 
if [[ ${array[i]} < $lowest ]]
then
        secondLowest=$lowest
        lowest=${array[i]}
elif (( ${array[i]} != $lowest )) && { [[ "$secondLowest" = "unset" ]] || [[ ${array[i]} < $secondLowest ]]; }
then
        secondLowest=${array[i]}
fi

echo "secondLowest = $secondLowest"
