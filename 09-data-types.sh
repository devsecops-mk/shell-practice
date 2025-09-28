#!/bin/bash

# everything in shell is considered as string

NUMBER1=100
NUMBER2=300
NAME=DevOps

SUM=$(($NUMBER1+$NUMBER2))

echo "SUM of the numbers is : $SUM"

# size = 3 Max index = 2

LEADERS=("MODI" "PUTIN" "TRUDO")

echo "All Leaders : ${LEADERS[@]}"

echo "First leader is : ${LEADERS[0]}"

echo "Second Leader is : ${LEADERS[1]}"

echo "Thirt Leader is : ${LEADERS[2]}"

