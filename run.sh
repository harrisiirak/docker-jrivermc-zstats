#!/bin/bash
while :
do
    echo "Run ZStats and calculate stats"
    mono ZStats.exe
    echo "Next run in ${RUN_INTERVAL_IN_SECONDS} seconds"
    sleep $RUN_INTERVAL_IN_SECONDS
done
