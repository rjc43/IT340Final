#!/usr/bin/env bash


LogFile="$1"

Days="$2"

Current=$(date '+%b %d')

Last=$(date -d $DAYS+' days ago' '+%b %d')

echo Finished!




ErrorCounter=$(awk "/$Last/,/$Current/" $LogFile | grep -i -c 'error')

echo 'For file  ' $LogFile ' through ' $(date -d $Days+' days ago' '+%b %d') ' You have this many errors: ' $ErrorCounter >> /var/log/scriptlog.log

