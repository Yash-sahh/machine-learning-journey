# cls just like self in instance method in class method we have cls
# unlike self parameter that can access both class and instance attribute, cls parameter can only access class attribute not instance attribute
# kisi function ko yadi class method bananaa hai to uske uper @classmethod decorator use karte hai 
class Laptop:
    storage_type = "ssd"

    def __init__(self,RAM,storage):
        self.RAM = RAM
        self.storage = storage
    
    @classmethod           # it is an decorator jo ki iske neeche likhe function ka behaviour change karta hai, it is changing the behaviour of neeche likha function and making it class method 
    def get_storage_type(cls):  # class method
        print(f"storage type = {cls.storage_type}")

Laptop.get_storage_type()
l1 = Laptop("16gb", "512gb")

l1.get_storage_type()

# class method can be called by class name as well as object name meanwhile instance methodn can only be call  by object name 