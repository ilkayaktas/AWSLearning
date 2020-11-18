#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws ec2 authorize-security-group-egress --group-id $1 --protocol tcp --port 9090 --cidr 0.0.0.0/0
fi


