#!/bin/bash
echo "Enter a number"
read -p "" num
sqrt=$(echo "sqrt($num)" | bc)
for i in $(seq 2 $sqrt);
do
    if [ $((num % i)) == 0 ]; then
        echo "$num is not prime: $i*$((num/i))"
        exit
    fi
done
echo "$num is prime"
