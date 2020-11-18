#!/usr/bin/env bash

aws ec2 run-instances \
        --image-id ami-0a91cd140a1fc148a \
        --count 1 \
        --instance-type t2.micro \
        --key-name OpenfireKeyPair \
        --associate-public-ip-addres \
        --security-group-ids sg-0d9a1875bfcb1cde7 \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Aselsan Machine}]'


