class Student:
    college_name = "ABC College" # class attribute
    pi=3.1
    def __init__(self,name,gpa):
        self.name = name #instance attribute
        self.gpa = gpa #instance attribute
        self.pi = 3.14
stu1 = Student("Yash",9.2)
print(stu1.name)
print(stu1.college_name)
print(Student.college_name) #we  can access class attribute with both object and class 
# but instance attributes can be only accessed by object 

#if there are two attributes with same name class and instance then higher priority will be of instance
print(stu1.pi)
print(Student.pi)  # but if we are accessing it with class name it will always give class attribute because instance attributes can only be accessed by object 