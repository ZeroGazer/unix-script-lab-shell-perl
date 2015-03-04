#!/bin/sh

#Compute gcd of two numbers

if [ $1 -le $2 ]; then
  a=$2
  b=$1
else
  a=$1
  b=$2
fi
if [ ${b} -ne 0 ]; then
  while [ ${b} -ne 0 ]; do
    t=${b}
    b=$(expr ${a} % ${b})
    a=${t}
  done
fi
echo "gcd of $1 and $2 is ${a}"
