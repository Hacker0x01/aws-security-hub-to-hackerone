# Security Hub to HackerOne

1. `aws cloudformation deploy --template-file eventbridgerule.yml --stack-name <STACK_NAME> --capabilities CAPABILITY_IAM`
1. Navigate to [AWS Security Hub > Settings > Custom Actions](https://console.aws.amazon.com/securityhub/home#/settings/actions)
1. Click *Create custom action*
1. Choose any Action Name and Description
1. Set *Custom action ID* to `SendFindingToH1` ⚠️ Important: you must use this ID in order to connect to the rule in the template ⚠️
