#! /bin/bash -x

# declare the values
arrayName=(123 154 342 765 345)

# finding min/max ;)
max=${arrayName[0]}
min=${arrayName[0]}

# Loop through all elements in the array
for i in "${arrayName[@]}"
do
    # Update max if applicable
	if [[ "$i" -gt "$max" ]]; 
    	then
        	max="$i"
   	 fi
done
