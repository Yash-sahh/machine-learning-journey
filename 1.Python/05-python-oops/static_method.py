# no compulsory parameter inside static method infect not self and not cls
# they cannnot access class attribute and neither they cant access instance attributes
# to create a static method we use a decorator called @staticmethod

class Laptop:
    
    @staticmethod
    def calc_discount(price,discount):
        final_price = price - (discount*price/100)
        print(f"discounted price = {final_price}")

l1 = Laptop()
l1.calc_discount(40_000, 10)  # 40_000 = 40000 underscore is ignored 