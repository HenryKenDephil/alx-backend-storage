#!/usr/bin/env python3
#change school topics

def update_topics(mongo_collection, name, topics):
    '''python function that changes
    all topics of school documents
    based on the name
    '''

    return mongo_collection.updateMany(
        {"name": name},
        {"$set": {
            "topics": topics
         }
        })