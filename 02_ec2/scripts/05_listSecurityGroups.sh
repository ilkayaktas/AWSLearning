#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    aws ec2 describe-security-groups 
    exit 0
else 
    aws ec2 describe-security-groups --group-names $1
fi


