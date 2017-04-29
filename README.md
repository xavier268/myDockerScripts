# A collection of various scripts to handle remotely docker containers

## Design

**rex.sh** is a wrapper to execute locally on a remote machine any random command file. 
It relies on password access to a non-root user.

The syntax is :

           ./rex.sh    myUserName@hostNameOrIP     fileToExecuteRemotely.sh

**rex.ec2.sh** is the ec2 version. The instance must be running, its IP (or dns) must be set into the rex file.

The syntax is :

           ./rex.ec2.sh    key.pem    ec2-user@hostNameOrIP     fileToExecuteRemotely.sh

In both case, the key requirement, is that ssh is able to log into the instance as a wheel user, 
that can sudo without password.




