#!/usr/bin/env python3

'''
list all documents in python
'''

#from pymongo import MongoClient
#client = MongoClient("mongodb://127.0.0.1:27017")

def list_all(mongo_collection):
    '''
        function to list all documents in python
    '''
    if not  mongo_collection:
        return []

    documents = mongo_collection.find()
    return [item for item in documents]