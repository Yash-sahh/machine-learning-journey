import json

py_obj = {
    "name": "Yash",
    "isCoder": True
}

json_str = json.dumps(py_obj) # coverts python object(dict) to json object
print(type(json_str),json_str)

# if we are dealing with string then loads and dumps and if dealing with file then load and dump
