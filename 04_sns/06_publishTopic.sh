#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws sns publish --topic-arn $1 --message Selam --subject CustomSubject
fi

