#!/usr/bin/env bash

if [ $# -ne 2 ]
then
    echo "Missing argument. (file, bucket-name)"
    exit 0
else 
    aws s3 cp $1 s3://$2
fi


