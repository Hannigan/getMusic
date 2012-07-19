#!/bin/bash 

wget --directory-prefix=/Users/andrewhannigan/src/getMusic/bin/chubbybeaver -r -l3 -H -nc -np -A.mp3 -A.m4a -erobots=off 'http://www.chubbybeavers.com/wp-content/uploads/' 
