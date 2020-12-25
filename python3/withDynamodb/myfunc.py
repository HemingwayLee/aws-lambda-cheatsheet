import os
import json
import boto3

# With localstack, the Lambda is running in a separate Docker container 
#  by default that container has no access to LocalStack via localhost
#  but using the host in the environment variable LOCALSTACK_HOSTNAME
def dynamodb_handler(event, context):
    dynamodb = boto3.resource(
        'dynamodb', 
        endpoint_url=f"http://{os.environ['LOCALSTACK_HOSTNAME']}:4566",
        region_name='us-west-2')
    table = dynamodb.Table('Students')
    res = table.scan()
    items = res['Items']
    return items
