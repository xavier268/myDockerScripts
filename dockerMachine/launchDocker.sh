#!/bin/bash

echo "Constructing an aws docker machine"
docker-machine create \
        --driver amazonec2 \
        --amazonec2-instance-type 	"t2.micro" \
	--amazonec2-region 		"eu-west-1" \
	--amazonec2-open-port 		4444 \
	--amazonec2-zone		a\
	--amazonec2-vpc-id		vpc-41eab224 \
					aws-test


