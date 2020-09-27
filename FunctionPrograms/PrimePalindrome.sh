#! /bin/bash -x

echo "enter no:"
read num1

#variables
s=0
temp=$num1
rev=""
f=0


function palprime()
{
        echo $num1
}

#for loop 
for((i=2;i<$temp;i++))
do
        if [ $((temp%i)) -eq 0 ]
        then
                f=1

        fi
        ((i++));
done

#while loop to check the conditiond no is prime and palindrome also
while [ $temp -gt 0 ]
do
        s=$(( $temp%10 ))
        temp=$(( $temp/10 ))
        rev=$( echo ${rev}${s} )
done

palprime

if [[ $temp -eq $rev && $f -eq 1 ]]
then
        echo "no is PalPrime"
else
        echo "no is not palprime"
fi
