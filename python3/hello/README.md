# Install
```
pip3 install python-lambda-local
```

# How to run
```
python-lambda-local -f handler -t 5 hello.py event.json
python-lambda-local -f handler -t 5 hello2.py event.json
python-lambda-local -f lambda_handler -t 5 response.py event.json
```

* `-t`: timeout

# Note
the `event.json` must be provided

# Deployment (to localstack)
* Create `.zip`
```
zip function.zip hello.py
```

* Create Role
```
aws --endpoint-url=http://localhost:4566 iam create-role --role-name lambda-ex --region us-west-2 --assume-role-policy-document '{"Version": "2012-10-17","Statement": [{ "Effect": "Allow", "Principal": {"Service": "lambda.amazonaws.com"}, "Action": "sts:AssumeRole"}]}'
```

* Deploy
```
aws --endpoint-url=http://localhost:4566 lambda create-function --function-name my-function --zip-file fileb://function.zip --handler hello.handler --runtime python3.8 --role arn:aws:iam::000000000000:role/lambda-ex --region us-west-2 
```

* Invoke
```
aws --endpoint-url=http://localhost:4566 lambda invoke --function-name my-function out --log-type Tail --region us-west-2 
```
