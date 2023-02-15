#!/usr/bin/env python3
#where can I learn python?

import pymongo
def schools_by_topic(mongo_collection, topic):
    '''function that returns the list
    of school having a specific topic
    '''
    return mongo_collection.find({"topics":  {"$in": [topic]}})

