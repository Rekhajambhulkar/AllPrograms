#! /bin/bash -x

#variables
key1=1
key2=2
key3=3
key4=4
key5=5
key6=6

i1=0
i2=0
i3=0
i4=0
i5=0
i6=0

declare -A diceNumber

#while loop check random dice no
while((1))
do
	dice=$((RANDOM%6+1))

# case statement
case $dice in
        1) ((i1++))
        diceNumber[$key1]=$i1 ;;
        2) ((i2++))
        diceNumber[$key2]=$i2 ;;
        3) ((i3++))
        diceNumber[$key3]=$i3 ;;
        4) ((i4++))
        diceNumber[$key4]=$i4 ;;
        5) ((i5++))
        diceNumber[$key5]=$i5 ;;
        6) ((i6++))
        diceNumber[$key6]=$i6 ;;
esac

	#Repeat till any one of the number has reached 10 times
	if(( $i1==10 || $i2==10 || $i3==10 || $i4==10 || $i5==10 || $i6==10 ))
	then
		break
	fi
done

echo " dictionary is :" ${diceNumber[@]}

for((index=1;index<=6;index++))
do
	echo "[ $index : ${diceNumber[$index]} ] ,"
done

maximum=${diceNumber[1]}
minimum=${diceNumber[1]}

for((index=1;index<=6;index++))
do
	if(( "${diceNumber[$index]}" > $maximum ))
	then
		maximum="${diceNumber[$index]}"
fi

#check condition number is less than minimum
if(( "${diceNumber[$index]}" < $minimum ))
then
	minimum="${diceNumber[$index]}"
fi
done

printf "Maximum is $maximum \n"
printf "Minimum is $minimum \n"
