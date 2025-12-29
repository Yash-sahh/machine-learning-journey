# design and create an online store for Products(name,price).
# Track total products being created.
# create  static method to calculate discount on each product based on a % parameter.

class Product:
    Total_product = 0

    def __init__(self,name,price):
        self.name = name
        self.price = price 
        Product.Total_product += 1  # we cant write it as self.Total_product if we do so there will new variable will create for that perticular instance and we want it should be of class ;evel so we can add 1 if any new product is created thats why we use class name

    def get_info(self):
        print(f"original price of {self.name} is {self.price}")
    
    @classmethod
    def total_product(cls):
        print(f"total products = {cls.Total_product}")
    
    @staticmethod
    def discounted_price(price,percentage):
        print(f"discounted price = {price - (price*percentage/100)}")
p1 = Product("phone", 10_000)
p2 = Product("laptop",50_000)
p3 = Product("pen",10)

p1.get_info()
Product.total_product()

p1.discounted_price(p1.price,20)


