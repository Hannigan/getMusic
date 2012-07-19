#!/bin/bash 

wget --directory-prefix=/Users/andrewhannigan/src/getMusic/bin/fromdjs -r -l2 -H -nc -nd -np -A http://api.soundcloud.com* -erobots=off 'http://www.fromdjs4djs.com/' 
