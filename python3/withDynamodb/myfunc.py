import json
import boto3

def dynamodb_handler(event, context):
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table('Students')
    res = table.scan()
    items = res['Items']
    return items
