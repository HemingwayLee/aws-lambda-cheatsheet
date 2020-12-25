#!/bin/bash


# aws --endpoint-url=http://localhost:4566 iam create-role \
#   --role-name lambda-ex \
#   --region us-west-2 \
#   --assume-role-policy-document '{
#     "Version": "2012-10-17",
#     "Statement": [{ 
#       "Effect": "Allow", 
#       "Principal": {
#         "Service": "lambda.amazonaws.com"
#       }, 
#     "Action": "sts:AssumeRole"
#     }]
#   }'

zip function2.zip hello2.py

aws --endpoint-url=http://localhost:4566 lambda create-function \
  --function-name my-function2 \
  --zip-file fileb://function2.zip \
  --handler hello2.handler \
  --runtime python3.8 \
  --role arn:aws:iam::000000000000:role/lambda-ex \
  --region us-west-2 

aws --endpoint-url=http://localhost:4566 lambda invoke \
  --function-name my-function2 out \
  --log-type Tail \
  --region us-west-2 

