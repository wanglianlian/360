#!/bin/bash
#root身份登录远程主机，假设免密码登录
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
