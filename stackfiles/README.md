# Staks to be deployed

## What is this ?

Stack definition files are in the docker-compose format, **version 3**. 

Note the **docker-compose** is not needed and does not need to be installed.

## Installing a stack in a swarm

Create your swarm and launch the stack :

    docker swarm init*, etc ...
    docker stack deploy --compose-file name-of-the-stak-file.yaml  stack-name-to-create-or-update*


