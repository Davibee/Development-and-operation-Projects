#!/bin/bash


###########
#Script Author - David
#Script purpose- To generate a report of EC2 instance, s3 buckets and Iam users in AWS services
###########


#List s3 buckets
echo "This are the list of s3 buckets"
aws s3 ls

#List Ec2 Instance and filter to just the Instance Id
echo "Ec2 instance ID"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List of Lambda functions
echo "List of lambda functions"
aws lambda list-functions
