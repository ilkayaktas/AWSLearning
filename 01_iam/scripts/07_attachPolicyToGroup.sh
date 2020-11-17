#!/usr/bin/env bash


cmd=$(
    aws iam attach-group-policy --group-name $1 --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
)

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi

# After attaching, list attached policies
echo "Query Attached Policies"
./04_listGroupPolicies.sh $1