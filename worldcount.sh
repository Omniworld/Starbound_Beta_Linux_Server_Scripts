#!/bin/sh
#
# Simple script to count all the .world files in the Universe folder and put the number in a .txt file
#
UNIVERSE_DIR='/PATH/TO/UNIVERSE/'
DEST_DIR="/PATH/WHERE/YOU/WANT/worlds.txt"
#
# If you change this, it will search for other file extensions.
SUFFIX="world"
wcount () {
cd $UNIVERSE_DIR
find -type f -name "*.$SUFFIX" | grep -c ".$SUFFIX" > $DEST_DIR
}
# The loop
while true
do
        wcount
        #
        # Number in seconds between runs
        sleep 10
done

