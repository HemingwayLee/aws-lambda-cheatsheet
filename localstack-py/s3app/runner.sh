#!/bin/bash

# create
aws --endpoint-url=http://localhost:4566 s3 mb s3://demo-bucket
aws --endpoint-url=http://localhost:4566 s3api put-bucket-acl --bucket demo-bucket --acl public-read

# update
aws --endpoint-url=http://localhost:4566 s3 cp test.txt s3://demo-bucket/
aws --endpoint-url=http://localhost:4566 s3 ls
aws --endpoint-url=http://localhost:4566 s3 ls s3://demo-bucket



