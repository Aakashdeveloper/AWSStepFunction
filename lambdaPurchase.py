from __future__ import print_function
import json
import urllib
import boto3
import datetime

print('loading function')

def process_purchase(message, context):
    
    print("Recived message from step functions: ")
    print(message)
    
    # TODO implement
    response = {}
    response['TransactionType'] = message['TransactionType']
    response['Timestamp'] = datetime.datetime.now().strftime("%Y-%m-%d %H-%M-%S")
    response['Message'] = 'Hello from lambda land inside the ProcessPurchase function'
    
    return response