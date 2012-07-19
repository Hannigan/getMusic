#!/bin/bash 

# move to Downloads directory
cd /Library/getMusic


#mediafire
curl $1 | egrep -o 'www.mediafire.com/[^"]{16}'


#ilictronix
wget -r -l1 -H -nd -nc -np -A.mp3 -erobots=off -P 'http://files.ilictronix.com/staff/here/tracks/' 


#big green beats
wget -O bin/biggreenbeats/site www.biggreenbeats.com;
cat bin/biggreenbeats/site | egrep -A5 '"featured' | egrep -o 'www.biggreenbeats.com/[^"]*' > bin/biggreenbeats/links;
cat bin/biggreenbeats/site | egrep -A5 '"featured' | egrep -o 'www.biggreenbeats.com/[^"]*' >> bin/biggreenbeats/linklog;
sort bin/biggreenbeats/linklog | uniq > bin/biggreenbeats/linklog;



wget -r -l1 -H -nd -nc -np -A.mp3 -erobots=off 'http://thissongissick.com/blog/category/bangin/' 