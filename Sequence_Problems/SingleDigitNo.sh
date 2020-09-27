#! /bin/bash  -x

#Declared a Function
function demotest() {
        echo $1;
}
#called function
res=$(demotest $(( RANDOM%10 )) )
echo "res:" $res
