#!/bin/bash


aws --endpoint-url=http://localhost:4566 iam create-role \
  --role-name lambda-ex \
  --region us-west-2 \
  --assume-role-policy-document '{
    "Version": "2012-10-17",
    "Statement": [{ 
      "Effect": "Allow", 
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "dynamodb.amazonaws.com"
        ]
      }, 
    "Action": "sts:AssumeRole"
    }]
  }'



zip myfunc.zip myfunc.py

aws --endpoint-url=http://localhost:4566 lambda create-function \
  --function-name mydyanmodbfunc \
  --zip-file fileb://myfunc.zip \
  --handler myfunc.dynamodb_handler \
  --environment Variables="{AWS_ACCESS_KEY_ID=test,AWS_SECRET_ACCESS_KEY=test}" \
  --runtime python3.8 \
  --role arn:aws:iam::000000000000:role/lambda-ex \
  --region us-west-2 

aws --endpoint-url=http://localhost:4566 lambda invoke \
  --function-name mydyanmodbfunc out \
  --log-type Tail \
  --region us-west-2 

