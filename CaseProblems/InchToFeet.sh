#! /bin/bash -x

echo "Enter Inch:"
read in

#unit Conversion Inch To feet
feet=$(( $in * 1/12 ))

case $ft in
        1) echo "Inch:" $feet ;;
        2) echo "Inch:" $feet ;;
        3) echo "Inch:" $feet ;;
        4) echo "Inch:" $feet ;;
	*) echo "Invalid";;
esac
