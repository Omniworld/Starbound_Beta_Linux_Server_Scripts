#!/bin/sh
#
# This script looks if screen session "starbound" exists and writes result to a file. 1 means no screen exists, 2 means screen is running.
server_status () {
screen -ls | grep -c "starbound" > status.txt
}
# sleep 10 = script runs every 10 seconds
while true
do
        server_status
        sleep 10
done

