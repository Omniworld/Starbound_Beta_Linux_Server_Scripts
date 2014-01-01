# Script fully stops starbound server and the starts it up again.
#
# Can be used to start the server as well
screen -x starbound -X stuff $'\003'  
sleep 2
screen -x starbound -X stuff $'\003'
sleep 1
./serverstart.sh
