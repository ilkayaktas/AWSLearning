#!/usr/bin/env bash

cmd=$(
    aws iam add-user-to-group --user-name $1 --group-name $2
)

if [ $# -ne 2 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi
