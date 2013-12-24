#!/bin/sh
#Sends interrupt signal to Starbound server. Execute once to restart server, execute twice within 5 seconds to stop server.
screen -x starbound -X stuff $'\003'  
