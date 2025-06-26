#!/bin/bash
LOGFILE="time_log.csv"
touch $LOGFILE
case "$1" in
  --start)
    echo "$2,START,$(date '+%F %T')" >> $LOGFILE
    ;;
  --stop)
    echo "$2,STOP,$(date '+%F %T')" >> $LOGFILE
    ;;
  --report-week)
    echo "Weekly summary:"
    awk -F, '{print $1,$2,$3}' $LOGFILE | grep "$(date +%F -d '7 days ago')"
    ;;
  *)
    echo "Usage: --start taskname | --stop taskname | --report-week"
    ;;
esac
