# A collection of various scripts to handle remote docker containers

## Wrapper files

This is a wrapper that allow **RE**mote e**X**ecution of arbitrary command files on a remote plateform.
Command files are simple, usual scripts that resides in the *./command/* directory. 
They do not need to be flagged as executables (it's probably safer if they are not.

*Note :* I just discovered there was already a "rex"[https://www.rexify.org], perl-based, orchestration solution.
I changed the name of this noe to myRex.
Both soltutions are not related. MyRex is very basic and customized for my own needs. 
It does not requires perl, command files can be any bash commands.

**myRex.sh** 
The syntax is :

           ./rex.sh    [key.pem]   myUserName@hostNameOrIP     commandFileToExecuteRemotely

Called without argument, it will display the list of commands.

If no key.pem is provided, then password access is assumed. 

For ec2, remember to use ec2-user@hostNameOrIP.

In both cases, ssh should be able to log into the instance as a wheel-group user, 
that can sudo without password. 

Root direct ssh access is **NOT** required, nor desired.

Results are logged locally in the *history.log* file.


## Available commands to be run remotely

**status** runs connectivity test on distant host, displaying docker status.

**setUpAmzLinux** updates a amz linux ami that has just been started. Loads and initialize docker on it. Will not work for Alpine image.

**preload** preload useful docker images for future use.

**myBridge** (re)set a bridge network between containers, allowing themm to securely communicate between them. Existings bridges (except predefined system bridges) are removed. Containers can now use their container names as DNS names on that bridge to reach one another (see Docker doc for details).

## Useful docker images

See preload command.

## Demos

See demo.selgrid for launching a full hub/node grid configuration for selenium testing on remote machines.
