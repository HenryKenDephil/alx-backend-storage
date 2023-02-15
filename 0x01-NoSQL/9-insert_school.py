#!/usr/bin/env python3
'''insert a document in python'''
import pymongo 

def insert_school(mongo_collection, **kwargs):
    '''a function that inserts a document in a collection'''
    data = mongo_collection.insertOne(kwargs)
    return data.insert_id 
    