# A collection of various scripts to handle remote docker containers

## Wrapper files

There is a wrapper that allow **RE**mote e**X**ecution of arbitrary command files on a remote plateform.
Command files are simple, usual scripts that resides in the *./command/* directory. 
They do not need to be flagged as executables (it's probably safer if they are not).

**rex.sh** 
The syntax is :

           ./rex.sh    [key.pem]   myUserName@hostNameOrIP     commandFileToExecuteRemotely

Called without argument, it will display the list of commands.

If no key.pem is provided, then password access is assumed. 

For ec2, remember to use ec2-user@hostNameOrIP.

In both cases, ssh should be able to log into the instance as a wheel-group user, 
that can sudo without password. 

Root direct ssh access is **NOT** required, nor desired.


## Available commands to be run remotely

**status** runs connectivity test on distant host, displaying docker status.

**setUpAmzLinux** updates a amz linux ami that has just been started. Loads and initialize docker on it. Will not work for Alpine image.

**preload** preload useful docker images for future use.

