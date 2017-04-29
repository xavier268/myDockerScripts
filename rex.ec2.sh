#! /bin/bash
# Wrapper command for remote ssh execution or arbitrary command file.

if [[ $# -ne 3 ]]; then
	echo "Wrong number of parameters (requires exacly 3)"
	echo "Correct syntax is :"
	echo "$0 key.pem    ec2-user@hostNameOrIP     fileToExecuteRemotely.sh"
	exit 1
fi

if ! [[ -f $1 ]] ; then
	echo "The ssh key file  ($1) you specified cannot be found !?"
	exit 1
fi

if ! [[ -f $3 ]] ; then
	echo "The command file  ($3) you specified cannot be found !?"
	exit 1
fi

echo ">>>>>>>>>>>>>>  Connecting to $2 to execute $3 >>>>>>>>>>>>>>" | tee -a history.ec2.log
echo "Local time is : $(date) " | tee -a history.ec2.log

# * without the quotes here, we get an 'ambiguous redirect error
# * -T option suppress the warning message about not being able to allocate a pseudo-terminal for stdin
# Adjust authentication ssh parameters below as needed ...


ssh -T -i $1 $2 < "$3" | tee -a history.ec2.log

echo "<<<<<<<<<<<<<  Disconnected  <<<<<<<<<<<<<<<<<<" | tee -a history.ec2.log
