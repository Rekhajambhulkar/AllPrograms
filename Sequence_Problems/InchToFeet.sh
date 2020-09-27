#! /bin/bash -x

#calculate Unit Conversion Inch To Feet
inch=42;
Feet=1/12;
inch1=$(($inch * $Feet ))
echo $inch1
