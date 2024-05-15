import pymongo as pm

client = pm.MongoClient()
db = client.test
collection = db.test_collection
collection.insert_one({"x": 1})
