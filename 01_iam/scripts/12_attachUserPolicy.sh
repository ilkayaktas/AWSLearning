#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws iam attach-user-policy --user-name $1 --policy-arn arn:aws:iam::aws:policy/IAMUserChangePassword
fi

# List Attached User Policies
echo "List Attached User Policies"
./11_listAttachedUserPolicies.sh $1