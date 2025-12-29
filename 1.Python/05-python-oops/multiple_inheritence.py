class Teacher:
    def __init__(self,salary):
        self.salary=salary

class Student:
    def __init__(self,gpa):
        self.gpa = gpa

class TA(Teacher,Student):
    def __init__(self,salary,gpa,name):
        super().__init__(salary)   #if we are calling from super then we diddnt need to pass self  #pehla wala call hoga super se
        Student.__init__(self,gpa)  #but if we are passing from class name then pass self
        self.name=name

ta1 = TA(50_000,9.3,"Yash")

print(ta1.name,ta1.salary,ta1.gpa)