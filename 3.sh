#!/bin/bash
#定时任务如下
#crontab -e
#00 02 * * * /bin/bash jobname1
#00 02 * * * /bin/bash jobname2
#00 02 * * * /bin/bash jobname3

case $2 in
	--stop)
	$1 stop
	;;
	--start)
	$1 start
	;;
	--list)
	crontab -l| grep -n "$2"  
	;;
esac
