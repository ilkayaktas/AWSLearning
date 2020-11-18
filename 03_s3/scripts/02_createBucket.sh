#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws s3 mb s3://$1
fi


