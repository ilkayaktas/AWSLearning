#!/usr/bin/env bash

cmd=$(
    aws iam create-login-profile --user-name $1 --password $2
)

if [ $# -ne 2 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi
