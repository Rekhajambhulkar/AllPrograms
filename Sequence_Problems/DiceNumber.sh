#! /bin/bash  -x

#used RANDOM function to get random dice nos.
Dice=$(( $RANDOM%6+1 )),$(($RANDOM%6+1))
echo "Dice is:" $Dice
