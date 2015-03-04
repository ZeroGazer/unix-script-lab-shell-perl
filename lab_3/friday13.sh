#!/bin/sh
#
# List all the occurrences of Friday the 13th in a user-input year range

year=$2
while [ $1 -le ${year} ]; do
  for month in {12..1}; do
    if [ "$(date -d "${month}/13/${year}" +%a)" = "Fri" ]; then 
      echo "$(date -d "${month}/13/${year}" +%b)-${year}"
    fi
  done
  year=$(expr ${year} - 1)
done
