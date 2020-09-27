#! /bin/bash

#Assign months
month=(january february march april may june july august september october november december)

#CONSTANTS
i1=0
i2=0
i3=0
i4=0
i5=0
i6=0
i7=0
i8=0
i9=0
i10=0
i11=0
i12=0

#declaration of dictionary

declare -A birthdayDictionary
for((per=1;per<=50;per++))
do
birthMonth=$((RANDOM%12+1))

#case statement
case $birthMonth in
	1) ((i1++))
	birthdayDictionary[${month[0]}]=$i1 ;;
	2) ((count2++))
	birthdayDictionary[${month[1]}]=$i2 ;;
	3) ((count3++))
	birthdayDictionary[${month[2]}]=$i3 ;;
	4) ((count4++))
	birthdayDictionary[${month[3]}]=$i4 ;;
	5) ((count5++))
	birthdayDictionary[${month[4]}]=$i5 ;;
	6) ((count6++))
	birthdayDictionary[${month[5]}]=$i6 ;;
	7) ((count7++))
	birthdayDictionary[${month[6]}]=$i7 ;;
	8) ((count8++))
	birthdayDictionary[${month[7]}]=$i8 ;;
	9) ((count9++))
	birthdayDictionary[${month[8]}]=$i9 ;;
	10) ((count10++))
	birthdayDictionary[${month[9]}]=$i10 ;;
	11) ((count11++))
	birthdayDictionary[${month[10]}]=$i11 ;;
	12) ((count12++))
	birthdayDictionary[${month[11]}]=$i12 ;;
esac

done
printf "Birth dictionary is :"'\n'
for((index=0;index<=11;index++))
do
printf "[ ${month[$index]} : ${birthdayDictionary[${month[$index]}]} ],"'\n'
done
