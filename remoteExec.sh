#! /bin/bash


echo "**********************************************************"
echo "   Remote file execution with ssh"
echo " 	 Syntax :  remoteExec.sh fileToExecuteRemotely.sh"
echo "**********************************************************"

echo ">>>>>>>>>>>>>>  Connecting to execute : $1 >>>>>>>>>>>>>>"
date

# * without the quotes here, we get an 'ambiguous redirect error
# * -T option suppress the warning message about not being able to allocate a pseudo-terminal for stdin
# Adjust authentication ssh parameters as needed ...

ssh  -T xavier@emachines < "$1"
# ssh -T -i anSshKey.pem ec2-user@MyEc2Instance < "$1"

echo "<<<<<<<<<<<<<  Disconnected  <<<<<<<<<<<<<<<<<<"
