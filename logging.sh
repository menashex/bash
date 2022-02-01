#! /bin/bash
datentime=$(date +"%Y_%m_%d_%I_%M_%p")
sudo tcpdump >> /home/menash/logs/${datentime}-tcpdump.log 2>>/home/menash/${datentime}-tcpdump.log &
sudo tcpdump
