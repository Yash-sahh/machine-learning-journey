#wrapping up data & functions into single unit in oops while creating class it is a incapsulation it is binding methods and attributes in single unit class

""" DATA HIDING
1.) public -> accessible everywhere inside the class as well as outside the class
2.) protected -> can be accessible inside the class and in subclasses
3.) private -> can only be accesssible inside that class only
"""
class BankAccount:
    def __init__(self,name,balance,account_no):
        self.name = name     #public    # by default public attributes are created
        self.__balance = balance  # private  # if we apply _ (underscore) befor attributes it became protected and if we apply __ (double underscore) then it became privatee
        self._account_no = account_no  # protected

    def get_balance(self):  #getter
        return self.__balance
    
    def set_balance(self,balance):
        self.__balance = balance

acc1 = BankAccount("Rahul Kumar",100_000,123)

print(acc1.name)

print(acc1.get_balance())
acc1.set_balance(200_000)
print(acc1.get_balance())


# protected can be accessed outside by 
print(acc1._account_no)

#private can be accessed outside by
print(acc1._BankAccount__balance)

# generally private attributes are not accessible outside the class but if we want to give there access outside then we use special methods called getters and setters

# in python there is no true protected and true private they used by developer for convention that if it is privatee mean we have not to access it outisde the class without getter and setter and so for protected