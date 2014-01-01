#!/bin/sh
# Sends Interrupt signal to starbound screen twice to fully stop it.
screen -x starbound -X stuff $'\003'  
sleep 2
screen -x starbound -X stuff $'\003'
