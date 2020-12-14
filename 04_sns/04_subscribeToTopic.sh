#!/usr/bin/env bash

if [ $# -ne 2 ]
then
    echo "Missing argument"
    exit 0
else 
    aws sns subscribe --topic-arn $1 --protocol email --notification-endpoint $2
fi

