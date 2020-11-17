#!/usr/bin/env bash


cmd=$(
    aws iam list-attached-group-policies --group-name $1
    )

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi
