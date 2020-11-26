#!/usr/bin/env bash

# ubuntu ami-0a91cd140a1fc148a
# amazon linux ami-0b0f4c27376f8aa79
aws ec2 run-instances \
        --image-id ami-0a91cd140a1fc148a \
        --count 1 \
        --instance-type t2.micro \
        --key-name OpenfireKeyPair \
        --associate-public-ip-addres \
        --security-group-ids sg-0d9a1875bfcb1cde7s \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Openfire}]'


