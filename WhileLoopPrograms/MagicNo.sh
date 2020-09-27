#! /bin/bash -x

read -p "Enter no betweeen 1-100:" Num

Sum=0

#using while loop check no is magic or not
while [ $Num -gt 0 ]
do
        rem=$((Num%10))
        Sum=$((Sum+rem))
        Num=$((Num/10))
done

#check conditions
if [ $Sum -eq 1 ]
then
echo "NO is magic"
else
echo "No is not magic"
fi
