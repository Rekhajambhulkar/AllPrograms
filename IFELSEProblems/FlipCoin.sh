#! /bin/bash -x

#use random to check flipcoin is head or tail
choice=$(($RANDOM%2))

if [ $choice -eq 1]]
then
        echo "tail"
else
	echo "Head"
fi
