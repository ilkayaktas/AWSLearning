#!/usr/bin/env bash

cmd=$(
    aws iam create-user --user-name $1
)

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi
