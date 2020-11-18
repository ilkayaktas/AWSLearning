#!/usr/bin/env bash

 aws ec2 describe-regions --query "Regions[].[RegionName]" --output text | xargs -I{} aws --region {} ec2 describe-availability-zones --query "AvailabilityZones[].ZoneName" --output text

 