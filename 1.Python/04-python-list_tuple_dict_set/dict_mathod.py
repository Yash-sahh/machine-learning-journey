dict={
    'name' : 'yash',
    'cgpa' : 9.3,
    'subjects' : ['machine learning', 'data science']
}

#returns all key
print(dict.keys())

#returns all values
print(dict.values())

#returns (key,val) pairs
print(dict.items())

#return value acc. to key
print(dict.get('name'))   # dict[key] isse yadi key exist na kare to error aayega but dict.get(key) yeha per yadi key exist na kare to error nhi aayega it will return none 

#adds new item to dict
dict.update({"city":"delhi"})

print(dict)