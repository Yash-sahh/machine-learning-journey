class Student:
    def __init__(self,name,cgpa):    #__init__method is constructor which is called automatically when we define an object and if we didnt create init method it is automatically created by python and we create init method by our self if we want to initialise some attributees with some values while creating object and self is current instance of the class class ke andar ke attributes ko self ki help se use kar sakte hai and we have to passs it with every methods we create in class
        print("this is the constructor")
        self.name = name
        self.cgpa = cgpa
stu1 = Student("Yash",9.15)
stu2 = Student("Yash ki behen",9.25)
stu3 = Student("Yash ka bhai",9.0)
print(stu1.name,stu1.cgpa)
print(stu2.name,stu2.cgpa)
print(stu3.name,stu3.cgpa)