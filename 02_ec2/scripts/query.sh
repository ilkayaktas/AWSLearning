#!/usr/bin/env bash

aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,ImageId,State.Name,Placement.AvailabilityZone,InstanceType, PublicDnsName,PublicIpAddress]'
