#!/usr/bin/env bash

cmd=$(
    aws iam get-group --group-name $1
)

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi


