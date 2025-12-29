# walks like a duck & quaks like a duck

class Teacher():
    def get_designation(self):
        print("designation = Teacher")

class Accountant():
    def get_designation(self):
        print("designation = Accountant")

# both classes are not related but because both classes have a function jo ki same kam karta hai we are making function in btoh with same name

acc1 = Accountant()
acc1.get_designation()

t1 = Teacher()
t1.get_designation()