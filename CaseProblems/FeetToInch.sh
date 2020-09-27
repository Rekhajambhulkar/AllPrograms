#! /bin/bash -x

#take input from user
echo "Enter Feet:"
read ft

#unit conversion feet to inch
inch=$(( $ft * 12 ))
case $ft in
        1) echo "Inch:" $inch ;;
        2) echo "Inch:" $inch ;;
        3) echo "Inch:" $inch ;;
        4) echo "Inch:" $inch ;;
        *) echo "Error"
esac
