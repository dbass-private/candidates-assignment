#!/usr/bin/env bash

#
#Usage
if [[ $# -lt 2 ]]
then
	echo "supply correct arguments"
	exit 1
fi
#
#Split command line arguments

array=( $@ )
len=${#array[@]}
RFOLDER=${array[$len-1]}
LFILES=${array[@]:0:$len-1}
#
# Hostname
LHOST=`hostname`
if [[ $LHOST == server1 ]] 
then 
	RHOST=server2
else
	RHOST=server1
fi

#scp command
#
scp -q $LFILES $RHOST:$RFOLDER 

#count bytes
BCOUNT=0
for i in  $LFILES ; do
	let "BCOUNT=`stat -c "%s"  $i` + $BCOUNT"
done
echo $BCOUNT
