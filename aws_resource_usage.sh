#!/bin/bash
###############
# Name: Arni Johry
# Date: 6 March, 2026
# Version: 2.0
# This shell Script is used to monitor the AWS Resources
###############

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

set -x

echo "print list of s3 buckets"
aws s3 ls

echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "print list of lambda function"
aws lambda list-functions

echo "print list of IAM Users"
aws iam list-users
