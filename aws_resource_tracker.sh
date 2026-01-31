#!/bin/bash
#aws s3
#aws ec2
#aws lambda
#aws IAM users
#
#
set -x
set -e
set -o pipefail
# list s3 buckets
echo "print list of s3 bukets"
aws s3 ls

#list of ec2 instances
echo "print list of ec2 users"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

#list lambda
echo "print list of lambda function"
aws lambda list-functions

#list IAM users
#echo "print list of IAM users"
aws iam list-users
