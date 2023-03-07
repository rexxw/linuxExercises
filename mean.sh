#!/bin/bash



if [[ $# -eq 2 ]]; then
    col=$1
    file=$2
elif [[ $# -eq 1 ]]; then
    col=$1
    file=/dev/stdin
else
    echo "usage: ./mean.sh <column> [file.csv]" 1>&2
    exit
fi

total=0
count=0

cat $file | cut -d ',' -f $col | tail -n +2 | { total=0; count=0; while read val; do count=$(($count+1)); total=$(($total+$val)); done;  avg=$(echo "scale=4; ($total/$count)" | bc); echo $avg; }

    
