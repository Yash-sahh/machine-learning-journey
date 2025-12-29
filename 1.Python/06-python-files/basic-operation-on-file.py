# open file
f = open("D:/Machine learning/machine-learning-journey/machine-learning-journey/1.Python/06-python-files/sample.txt","r")  # here we write path of the file or file name if file is in same folder and mode "r" for read means file will open we can perform only read operation

# when file opens it returns file object
"""mode 
"r" = read
"w"= write """

# read operation
data = f.read()  # it reads whole 
print(data)
print(type(data))

data2 = f.readline()  # it reads line by line
print(data2)

data3 = f.readline()
print(data3)
# after all work done we close that file
f.close()