#! /bin/bash -x

echo "Enter the num:"
read Num


i=$((i*i))

for(( i=2; $i<=$Num;i++ ))
do
	#check condiotion til equal to zero
        while [ $((Num % i)) -eq 0 ]
        do
                echo $i
                Num=$(( Num / i ))
        done
done

#check condition nu is equal to 2
if [ $Num -gt 2 ]
then
        echo $Num
fi
