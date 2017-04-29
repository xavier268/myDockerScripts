#! /bin/bash
echo "Remote time is : $(date)"
echo "Plateforme : $(uname -a)"
echo "Locally, I am running as $USER on $HOSTNAME"
sudo -- df -h
sudo -- docker --version
sudo -- docker run  hello-world


