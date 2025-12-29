class Employee:
    start_time = "10am"
    end_time = "6pm"

class AdminStaff(Employee):
    def __init__(self,role):
        self.role = role

class Accountant(AdminStaff):
    def __init__(self,salary,role):   # role is passed beacuse its parent class AccountStaff has role parameter in its init function
        #to assign role we have to call the constructor of its parent classs adminstaff for that we do 
        super().__init__(role)
        self.salary = salary

acc1 = Accountant(25_000,"CA")

print(acc1.role,acc1.salary,acc1.start_time,acc1.end_time)