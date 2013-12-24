#!/bin/sh
#
# Script to get the current Beta version from the logfile and write it to a .txt file (version.txt)
# Only intended for use together with a logfile that gets reset on every server start, since it searches for the first occurence
FILE_DIR="/PATH/TO/LOGSFOLDER"
# That's the file that's gonna be created/overwritten by this script
DEST_DIR="/PATH/WHERE/YOU/WANT/version.txt"
# File extension of the logfile. Be sure to only have 1 logfile with that extension in the folder.
SUFFIX="txt"
cd $FILE_DIR
version() {
find -type f -name "*.$SUFFIX" | ls -Art | tail -n 1 | xargs grep 'version' | head -1 | cut -d "'" -f2 > $DEST_DIR
}
while true
do
        version
        #
        # Number in seconds between runs
        sleep 10
done