#!/bin/sh
#
# Given N input files (Here N is not a fixed number, and these N files are named
# as file1, file2, ...,fileN.)

for i in $(seq 1 $1); do
  while read line; do
    ./gcd.sh ${line}
  done < "file${i}"
done

