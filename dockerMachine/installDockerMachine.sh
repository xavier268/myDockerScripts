#!/bin/bash


if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

VERSION=v0.14.0

echo "Installing docker-machine locally."
echo "Installing docker-machine"
base=https://github.com/docker/machine/releases/download/$VERSION &&
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
install /tmp/docker-machine /usr/local/bin/docker-machine

echo "Installing the utility scripts"
base=https://raw.githubusercontent.com/docker/machine/$VERSION
for i in docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash
do
  wget "$base/contrib/completion/bash/${i}" -P /etc/bash_completion.d
done

docker-machine version






