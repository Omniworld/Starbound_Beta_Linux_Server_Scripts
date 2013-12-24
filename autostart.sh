#!/bin/sh
# This script starts the Starbound Server and creates an extra logfile with all the lines that are shown in the console. 
# When the server crashes or is interrupted (ctrl+c) it will automatically restart the server and compress the old log file
# before creating a new one. Furthermore it creates a log for the backup process.
#
# Specify folder where server start script is. Default is in Steam/SteamApps/common/Starbound/linux32 or Steam/SteamApps/common/Starbound/linux64
STARBOUND_DIR="/PATH/TO/SERVERSTARTSCRIPT"
# Specify folder where logs should be saved to
DEST_DIR="/PATH/TO/LOGFOLDER"

start () {
  cd $STARBOUND_DIR
  # Format of Timestamp.
  TIMESTAMP=`date +%Y%m%d_%H%M`
  # Starts server and copies everything that the console shows into extra log file. If you want to use an extra server script replace "starbound_server" with the name of your start script.
  SERVER_START=./ ./starbound_server | tee ${DEST_DIR}/${TIMESTAMP}.txt
}
# The following happens when server is crashed or interrupted
until start; do
# Insert message for server crash
  echo "server crashed, restarting." >&2
# Append backup log info into new file called "backup-$TIMESTAMP.log"
  echo "$TIMESTAMP serverlog backup starting..." >> ${DEST_DIR}/backup-${TIMESTAMP}.log
# Compress log into backup-$TIMESTAMP.tar.gz and append compression info into "backup-$TIMESTAMP.log"
  tar -vczPf ${DEST_DIR}/backup-${TIMESTAMP}.tar.gz ${DEST_DIR}/${TIMESTAMP}.txt --remove-files --totals >> ${DEST_DIR}/backup-${TIMESTAMP}.log
# Append backup finished to "backup-$TIMESTAMP.log"
  echo "$TIMESTAMP backup finished." >> ${DEST_DIR}/backup-${TIMESTAMP}.log
  sleep 5
done
