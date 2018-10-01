#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "Removing $( docker-machine version ) "
sudo rm $(which docker-machine)

echo "Removing the utility scripts"
base=https://raw.githubusercontent.com/docker/machine/$VERSION
for i in docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash
do
  rm /etc/bash_completion.d/${i}
done
echo "Done".
