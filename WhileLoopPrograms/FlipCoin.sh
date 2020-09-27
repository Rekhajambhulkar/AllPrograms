#! /bin/bash -x

echo "WELCOME in FlipCoinSimulator"

flip=1

#Flip a coin and check its Head or tail

function Flip()
{
	choice=$((RANDOM%2))
	echo $choice
}

if [ $choice -eq 1 ]
then
	echo "Tail"
else
	echo "Head"
fi

head=0
tail=0
choice=20

#Take choice to check how much time won
for((i=1;i<=$choice;i++))
do
if [ $res == $flip ]
then
        ((tail++))
else
        ((head++))
fi
        res="$(Flip)"
done


echo "Total head:" $head
echo "Total tail:" $tail

#check who has won
if [[ $head -gt $tail || $head -eq $tail ]]
then
	echo "Head is win:" $head
else
	echo "Tail is win:"$tail
fi

