#! /bin/bash -x



read -p "Enter a:" a
read -p "Ente b:" b
read -p "Enter c:" c

d1=$(($a + $b * $c))
d2=$((a%$b+$c))
d3=$(($c+$a/$b))
d4=$(($a*$b+$c))

arr=($d1 $d2 $d3 $d4)

max=${arr[0]}
min=${arr[0]}

# Loop through all elements in the array
for i in "${arr[@]}"
do
	if [[ "$i" -gt "$max" ]]; 
	then
        	max="$i"
    	fi


    	if [[ "$i" -lt "$min" ]]; 	
	then
        	min="$i"
    	fi
done
