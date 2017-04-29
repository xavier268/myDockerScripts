#! /bin/bash
# Wrapper command for remote ssh execution or arbitrary command file.

if [[ $# -ne 1 ]]; then
	echo "Wrong number of parameters"
	echo "Correct syntax is :"
	echo "$0 fileToExecuteRemotely.sh"
	exit 1
fi

if ! [[ -f $1 ]] ; then
	echo "The file ($1) you specified cannot be found !?"
	exit 1
fi

echo ">>>>>>>>>>>>>>  Connecting to execute on ec2 : $1 >>>>>>>>>>>>>>" | tee -a history.ec2.log
echo "Local time is : $(date) " | tee -a history.ec2.log

# * without the quotes here, we get an 'ambiguous redirect error
# * -T option suppress the warning message about not being able to allocate a pseudo-terminal for stdin
# Adjust authentication ssh parameters below as needed ...

# ssh  -T xavier@emachines < "$1" 
ssh -T -i testk.pem ec2-user@52.213.100.11 < "$1" | tee -a history.ec2.log

echo "<<<<<<<<<<<<<  Disconnected  <<<<<<<<<<<<<<<<<<" | tee -a history.ec2.log
