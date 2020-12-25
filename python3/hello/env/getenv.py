import os

def handler(event, context):
    variable = os.environ["variable"]
    
    return f"hello, {variable}"
