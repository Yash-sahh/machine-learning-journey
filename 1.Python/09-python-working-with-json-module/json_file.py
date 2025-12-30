# json.load() -> if we want to read data from json file
# json.dump() -> if we want to write data in json file

import json


data = {
    "name":"Yash",
    "age":21,
    "isTeacher":False,
    "isCoder":True,
    "subject":['python','AI/ML','Mathematics']
}
with open("1.Python/09-python-working-with-json-module/data.json","w+") as f:
    json.dump(data, f,indent=4,sort_keys=True)

with open("1.Python/09-python-working-with-json-module/data.json","r") as f:
    py_obj = json.load(f)
    print(py_obj)