#!/usr/bin/env bash

cmd=$(
    aws iam attach-user-policy --user-name $1 --policy-arn arn:aws:iam::aws:policy/IAMUserChangePassword
)

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi

# List Attached User Policies
echo "List Attached User Policies"
./11_listAttachedUserPolicies.sh $1