#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
aws ec2 stop-instances --instance-ids $1
