#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws iam attach-group-policy --group-name $1 --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
fi

# After attaching, list attached policies
echo "Query Attached Policies"
./04_listGroupPolicies.sh $1