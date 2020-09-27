#! /bin/bash -x

#reads 5 random values
for i in `seq 5`
do

#print 2 digit values
echo $((10 + RANDOM % 6))
done | awk '{SUM+=$1}END {print " Sum & Avg is:" SUM, SUM/5}'
