# if we open a file by using with keyword then by default file get closed at the end we dont have to close it explicitely
with open("D:/Machine learning/machine-learning-journey/machine-learning-journey/1.Python/06-python-files/sample.txt","r") as f:
    data = f.read()
    print(data)
    print(len(data))