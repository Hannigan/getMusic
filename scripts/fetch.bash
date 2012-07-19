#!/bin/bash 

# 1st param is site name
# 2nd param is number of pages to check

echo "$1" 
i=1
wget --directory-prefix=/Users/andrewhannigan/src/getMusic/bin/all -r -l2 -H -nc -nd -np -A.mp3 -A.m4a -erobots=off "www.$1/page/$i"
if [ "$#" = "1" ]; then
  while ["$?" -eq "0"]; do
    i=`expr $i + 1`
    wget --directory-prefix=/Users/andrewhannigan/src/getMusic/bin/all -r -l2 -H -nc -nd -np -A.mp3 -A.m4a -erobots=off "www.$1/page/$i"
  done
else
  while [[ "$?" = "0" && "$i" -ne "$2" ]]; do
    i=`expr $i + 1`
    wget --directory-prefix=/Users/andrewhannigan/src/getMusic/bin/all -r -l2 -H -nc -nd -np -A.mp3 -A.m4a -erobots=off "www.$1/page/$i"
  done
fi 
