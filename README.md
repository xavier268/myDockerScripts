# A collection of various scripts to handle remotely docker containers

## Design

**remoteExecute** is a wrapper to execute locally on a remote machine any random command file. It can be adjusted/cloned to provide deployement ability to any remote, docker-enabled, host.

It can be adjusted to allow for execution on a local host on the network, or on amzon ec2. 
In both case, the key requirement, is that ssh is able to log into the instance as a wheel user, 
that can sudo without password.




