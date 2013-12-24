#!/bin/sh
# Update script that asks for input of Username and Password. For people that do not want to save their steam credentials in plain text.
read -s -p "Enter Steam Username: " userlogin
echo
read -s -p "Enter Steam Password: " pass
echo
./steamcmd.sh +login $userlogin $pass +app_update 211820 +quit

