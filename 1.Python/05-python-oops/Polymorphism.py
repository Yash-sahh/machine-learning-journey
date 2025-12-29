# many-forms  -> multiple function with same name but they are different functions

#ex operator overloadding -> ex + is used to add numbers ass well as concatenate two strings
print(1+2)
print("hello"+"world")

# function overriding -> it happens where inheritance involved -> it means redifining parent class function in child class

class Employee:
    def __get_designation(self):
        print("designation = Employee")

class Teacher(Employee):
    def get__designation(self):
        print("designation = Teacher")

t1= Teacher()
t1.get__designation()