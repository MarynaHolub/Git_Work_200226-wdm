#!/bin/bash

echo "Enter process name:"
read process_name

if tasklist | grep -i "$process_name" > /dev/null
then
    echo "Process $process_name is running"
else
    echo "Process $process_name is NOT running"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Process $process_name is NOT running" >> process_monitor.log
fi
