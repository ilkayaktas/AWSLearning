#!/usr/bin/env bash

echo `aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId]' --output text`
