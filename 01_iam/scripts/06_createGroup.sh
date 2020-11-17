#!/usr/bin/env bash


cmd=$(
    aws iam create-group --group-name $1
    )

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    echo $cmd
fi

# After creation, list attached policies
echo "Query Attached Policies"
./04_listGroupPolicies.sh $1