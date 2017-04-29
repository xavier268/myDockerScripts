# A collection of various scripts to handle remote docker containers

## Usage of wrapper files

The following files are wrapper that allow execution of arbitrary command files on a remote plateform.

**rex.sh** relies on password access to a non-root user.

The syntax is :

           ./rex.sh    myUserName@hostNameOrIP     fileToExecuteRemotely.sh

**rex.ec2.sh** is the ec2 version. It relies on ssh key file access.

The syntax is :

           ./rex.ec2.sh    key.pem    ec2-user@hostNameOrIP     fileToExecuteRemotely.sh

In both case, the key requirement, is that ssh is able to log into the instance as a wheel-group user, 
that can sudo without password. Root direct ssh access is **NOT** required, nor desired.


## Available scripts to be run remotely

**test.sh** runs connectivity test on distant host, displaying docker status.

**setUpAmzLinux.ec2.sh** updates an *just created* amz linux ami. Loads and initialize docker on it.

**preload.sh** preload useful dcker images for future use.

