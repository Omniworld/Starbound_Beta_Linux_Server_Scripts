#!/bin/sh
# Execute this script after a full linux server restart to call extra scripts.
screen -dmS starbound ./autostart.sh
sleep 15
# Calls extra scripts in background
nohup ./playercount.sh &
nohup ./worldcount.sh &
nohup ./status.sh &
nohup ./version.sh &