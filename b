#!/bin/bash
echo "give me a number"
read a
sd=0
rev=0
while [ $a -gt 0 ]
do
sd=$(( $a % 10 ))
rev=$(( $rev * 10 + $sd ))
a=$(( $a / 10))
done
echo "reverse number of entered digit is" $rev
