#!/bin/bash
present_date=$(date +"%Y-%m-%d : %H-%M")

echo "present date and time is : $present_date "
START_TIME=$(date +%s)

sleep 10 

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script executed in : $TOTAL_TIME  seconds"
current_date=$(date +"%Y-%m-%d : %H-%M")

echo "Current date and time is : $current_date"

