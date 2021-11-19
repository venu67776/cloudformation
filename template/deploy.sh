#!/usr/bin/env bash

STACK_NAME=$1
PASSWORD=$2

if [ -z "$1" ]
  then
    echo "No STACK_NAME argument supplied"
    exit 1
fi

DIR="$(cd $(dirname $BASH_SOURCE) && pwd)"


echo "Creating stack..."
  aws cloudformation create-stack \
  --stack-name ${STACK_NAME} \
  --template-body file://${DIR}/new2.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=Username,ParameterValue=venu-aws \
    	ParameterKey=Bucketname,ParameterValue=venuvenu \
      ParameterKey=Password,ParameterValue=${PASSWORD} 
    




