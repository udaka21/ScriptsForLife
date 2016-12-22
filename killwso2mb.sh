#!/bin/bash
######################################################
#
# Kill all the currently running wso2 message brokers.
#
######################################################

brokerIds=( $(pgrep -f wso2) )
#Change wso2 name as what-ever program you want to stop
for (( i=0; i<${#brokerIds[@]}; i++ )); 
do 
	kill -9 ${brokerIds[$i]};
	echo "Killed : ${brokerIds[$i]}";

done

