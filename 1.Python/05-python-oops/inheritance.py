# reussing attributes and methods from parent(Base) class
# let we have a class name car in which we have its milage and then we have class name hondacar and buggaticar then both car should have attributes millage so rather ten creating new attributes we can inherite from the parent class car if we make hondacar and buggaticar child classes of car class via inheritance

class Employee:           #parent class
    start_time = "10am"
    end_time = "6pm"
    
    def change_time(self,new_end_time):
        self.end_time = new_end_time

class Teacher(Employee):   # child class of Employee class
    def __init__(self,subject):
        self.subject = subject

class AdminStaff(Employee):
    def __init__(self,role):
        self.role = role
t1 = Teacher("math")

print(t1.subject,t1.start_time,t1.end_time)
t1.change_time("5pm")
print(t1.end_time)

staff1 = AdminStaff("manager")

print(staff1.role,staff1.start_time,staff1.end_time)