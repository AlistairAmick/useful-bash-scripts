#!/bin/bash
# Set var for update command to be used
SUpdate='sudo apt-get update'
# Prompt user for no. of packages to install
echo How many packages do you want to install?
read numPckgs

	# Set counter var to 0
	i=0
	# for loop to install no. packages provided by user 
	while [ $i -lt $numPckgs ] 
	do
		echo Name of package $i? 
		read pckgName
		pckgs[$i]=$pckgName
		echo ${pckgs[i]}
		i=$[$i+1]
	done
	$SUpdate	
	# Reset counter to 0
	i=0
	# for loop to install no. packages provided by user 
	while [ $i -lt $numPckgs ] 
	do
		sudo apt-get -y install ${pckgs[i]} 
		i=$[$i+1]
	done
# Update
$SUpdate
# Upgrade
sudo apt-get upgrade
