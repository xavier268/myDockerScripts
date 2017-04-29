#! /bin/bash
# Wrapper command for remote ssh execution or arbitrary command file.

if [[ $# -ne 2 ]]; then
	echo "Wrong number of parameters (requires 2 exactly)"
	echo "Correct syntax is :"
	echo "$0 username@hostname  fileToExecuteRemotely.sh"
	exit 1
fi

if ! [[ -f $2 ]] ; then
	echo "The file ($2) you specified cannot be found !?"
	exit 1
fi

echo ">>>>>>>>>>>>>>  Connecting to $1 to execute $1 >>>>>>>>>>>>>>" | tee -a history.log
echo "Local time is : $(date) " | tee -a history.log

# * without the quotes here, we get an 'ambiguous redirect error
# * -T option suppress the warning message about not being able to allocate a pseudo-terminal for stdin
# Adjust authentication ssh parameters below as needed ...

ssh -T "$1" < "$2" | tee -a history.log

echo "<<<<<<<<<<<<<  Disconnected  <<<<<<<<<<<<<<<<<<" | tee -a history.log
