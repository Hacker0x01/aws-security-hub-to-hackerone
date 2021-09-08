#!/bin/bash
echo "Enyer your HackerOne identifier (NOT the API Key)"
read H1ID
echo "Enter your HackerOne API Key"
read H1APIKey
echo "Enter a stack name"
read STACK_NAME
aws cloudformation deploy --template-file eventbridgerule.yml --stack-name $STACK_NAME --capabilities CAPABILITY_IAM --parameters [{"ParameterKey": "HackerOneApiId", "ParameterValue": $H1ID, "UsePreviousValue": true},{"ParameterKey":"HackerOneApiToken","ParameterValue": $H1APIKey, "UsePreviousValue": true}]
