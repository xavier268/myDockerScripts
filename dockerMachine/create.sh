#!/bin/bash

echo "Constructing an aws docker machine named : $1"
docker-machine create \
        --driver amazonec2 \
        --amazonec2-instance-type 	"t2.micro" \
	--amazonec2-region 		"eu-west-1" \
	--amazonec2-open-port 		4444 \
	--amazonec2-zone		a\
	--amazonec2-vpc-id		vpc-41eab224 \
					$1
docker-machine ls
docker-machine env $1 
echo "type 'docker-machine env -u' to unset the docker client"


