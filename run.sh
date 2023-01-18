#!/bin/bash
while :
do
    echo "Run ZStats and calculate stats"
    mono ZStats.exe
    echo "Waiting for next run..."
    sleep 3600
done
