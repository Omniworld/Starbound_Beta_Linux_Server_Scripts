Starbound_Beta_Linux_Server_Scripts
===================================

Some scripts to make running a Starbound server easier in early beta.

These scripts are for use with a LINUX server.

Features:

- separate Logfile per start.
- compresses old logfiles to save space
- automatic restart on crash
- counts active connections (playercount.sh)
- extracts name of current beta build (version.sh)
- counts number of visited worlds (worldcount.sh)
- basic check if server is running (status.sh)
- script to update Starbound without saving Steam user/password (update.sh)

Tested on "Beta v. Angry Koala"


Instructions:

When first running the script, or after every full linux server restart, use "onFullRestart.sh" to start the server. This
starts the server and the complimentary scripts playercount,version,worldcount,status in background.

If you want to restart the server, just switch to the screen with screen -x starbound and press ctrl+c once.
If you wish to fully stop the Starbound server, press ctrl+c twice within 5 seconds.

To update your Starbound to the latest version available just execute update.sh and put in your Steam login information.

If you just want to start the Starbound server just use serverstart.sh to start it without the complimentary scripts.
