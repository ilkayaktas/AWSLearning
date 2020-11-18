#!/usr/bin/env bash

if [ $# -ne 2 ]
then
    echo "Missing argument"
    exit 0
else 
    aws iam create-login-profile --user-name $1 --password $2
fi
