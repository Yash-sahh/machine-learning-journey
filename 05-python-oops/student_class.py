class Student:  # class is actually a blurprint jiski koi memory location nhi hoti hai
    subject = "python"        # these are attributes of class
    college = "ABC"        # these are attributes of class
    year = "4th year"        # these are attributes of class
    
    def print_hello(self):     # this is method-> a function defined inside the class is called method
        print("hello")            # while creating method we always pass self keyword 

a=10
stu1=Student()      # this is how we create object of a class     ,    object of class is the real object jiski memory location hoti hai 
stu2=Student()      # this is how we create object of a class     ,    object of class is the real object jiski memory location hoti hai 
print(stu1.subject,stu1.college,stu1.year)
print(stu2.subject,stu2.college,stu2.year)

stu1.print_hello()

#list, tuple , set all these are inbuild classes present in class
#when we create aclass we defines its attributes and methods