#!/usr/bin/env bash

aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId]' --output text
