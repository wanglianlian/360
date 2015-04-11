#!/bin/bash
user=root
while read command
do 
for IP in $@
do
ssh $user@$IP
$command
exit
done
done
