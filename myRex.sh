#! /bin/bash
# Wrapper command for remote ssh execution or arbitrary command file.


# Password access ...
if [[ $# -eq 2 ]] && [[ -f "./command/$2" ]] ; then 
	
	echo ">>>>>>>>>>>>>>  Connecting to $1 to execute $2 >>>>>>>>>>>>>>" | tee -a history.log
	echo "Local time is : $(date) " | tee -a history.log

	# * without the quotes here, we get an 'ambiguous redirect error
	# * -T option suppress the warning message about not being able to allocate a pseudo-terminal for stdin
	ssh -T "$1" < "./command/$2" | tee -a history.log

	echo "<<<<<<<<<<<<<  Disconnected  <<<<<<<<<<<<<<<<<<" | tee -a history.log
	exit 0
	
fi

# ssh key access ...
if [[ $# -eq 3 ]] && [[ -f "./command/$3" ]] ; then 
	
	echo ">>>>>>>>>>>>>>  Connecting to $2 to execute $3 with key $1 >>>>>>>>>>>>>>" | tee -a history.log
	echo "Local time is : $(date) " | tee -a history.log

	# * without the quotes here, we get an 'ambiguous redirect error
	# * -T option suppress the warning message about not being able to allocate a pseudo-terminal for stdin
	ssh -T -i "$1" "$2" < "./command/$3" | tee -a history.log

	echo "<<<<<<<<<<<<<  Disconnected  <<<<<<<<<<<<<<<<<<" | tee -a history.log
	exit 0
	
fi


# Here, we display syntax and command list

echo ""
echo "Usage : $0 [ publickey.pem ] username@hostname  commandToExecuteRemotely"
echo ""
echo "Valid available commands are :"
ls ./command
echo ""
exit 1
