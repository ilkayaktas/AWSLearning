#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws ec2 create-security-group --group-name $1 --description "Deneme amacli olusturulan security group."
fi
