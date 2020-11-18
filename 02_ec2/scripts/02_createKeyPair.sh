#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws ec2 create-key-pair --key-name $1 --query 'KeyMaterial' --output text > ..\pem\$1.pem
fi
