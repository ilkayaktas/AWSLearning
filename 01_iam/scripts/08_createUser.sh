#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws iam create-user --user-name $1
fi
