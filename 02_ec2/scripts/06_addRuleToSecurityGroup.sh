#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Missing argument"
    exit 0
else 
    aws ec2 authorize-security-group-ingress --group-name $1 --protocol tcp --port 22 --cidr 0.0.0.0/0
    echo "SSH 22 rule is added."
    aws ec2 authorize-security-group-ingress --group-name $1 --protocol tcp --port 8080 --cidr 0.0.0.0/0
    echo "TCP 8080 rule is added."
    echo "For more information (ELB, VPC, IP Range): aws ec2 authorize-security-group-ingress help"
fi


