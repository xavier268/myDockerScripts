#! /bin/bash
echo "Remote time is : $(date)"
echo "Locally, I am running as $USER on $HOSTNAME"
sudo -- df -h
sudo -- docker --version


