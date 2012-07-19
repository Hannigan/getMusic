#!/bin/bash 

GMHOME="/Library/getMusic"

wget -O $GMHOME/bin/biggreenbeats/site www.biggreenbeats.com;
cat $GMHOME/bin/biggreenbeats/site | egrep -A5 '"featured' | egrep -o 'http://www.biggreenbeats.com/[^"]*' > $GMHOME/bin/biggreenbeats/links;
cat $GMHOME/bin/biggreenbeats/site | egrep -A5 '"featured' | egrep -o 'http://www.biggreenbeats.com/[^"]*' >> /Library/getMusic/bin/biggreenbeats/linklog;
sort $GMHOME/bin/biggreenbeats/linklog | uniq > $GMHOME/bin/biggreenbeats/linklog;
wget -r -l1 -H -nd -nc -np -w5 -A.mp3 -erobots=off -i $GMHOME/bin/biggreenbeats/links;