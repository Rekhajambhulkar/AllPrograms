#! /bin/bash -x

#Take two Dice number and add it
((Dice1=$RANDOM % 6 + 1 ))
((Dice2 = $RANDOM % 6 + 1 ))

#echo "Dice is:" $Dice1
echo $Dice1,$Dice2

Add=$(($Dice1 + $Dice2))
echo "Add is:" ${Add}
