#! /bin/bash

declare -a Array

Array=( 121 122 546 127 178 145 167 101 143 173 )


seclargest=${Array[0]}
seclowest=${Array[0]}

for((i=0;i<10;i++))
do
        for((j=0;j<10-i-1;j++))
        do
                if [ ${Array[j]} -gt ${Array[$((j+1))]}  ]
                then
                #swap
                temp=${Array[j]}
                Array[$j]=${Array[$((j+1))]}
                Array[$((j+1))]=$temp
                fi
        done

        if [[ ${Array[i]} -gt $seclargest ]]
        then

                seclargest=${Array[i]}
        fi

        if [[ ${Array[i]} -lt $seclowest ]]
        then
                seclowest = ${Array[i]}
        fi
done

echo "seclargest: " ${seclargest[@]}
echo "seclowest: " ${seclowest[@]}
