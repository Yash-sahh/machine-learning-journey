import json

json_str = ' {"name": "Yash","isCoder": true}' 

py_obj = json.loads(json_str) # converts json object to python dict

print(type(py_obj),py_obj)
