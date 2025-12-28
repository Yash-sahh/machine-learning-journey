# 1 self parameter
class Laptop:
    storage_type = "ssd"

    def __init__(self,RAM,storage):
        self.RAM = RAM
        self.storage = storage
    def get_info(self):    #instance method
        print(f"laptop has {self.RAM} RAM & {self.storage} {self.storage_type}")   # self parameter can access class as well as instance attribute
l1 = Laptop("16gb","512gb")
l2 = Laptop("8gb","256gb")
l1.get_info()