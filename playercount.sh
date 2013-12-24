#!/bin/sh
#
# Script to count online players by counting the number of established connections to port $PORT_NUM
# Result is saved in file called online.txt
#
$TXT="/PATH/WHERE/YOU/WANT/online.txt"
$PORT_NUM=":21025"
count () {
x=`netstat -anp | grep $PORT_NUM | grep ESTABLISHED | wc -l` > $TXT
}
# sleep 5 = script runs every 5 seconds
while true
do
	count
	sleep 5
done
