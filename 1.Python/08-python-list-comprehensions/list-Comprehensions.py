# store squares of even number in  0-10  in a list

#Brute force approach

squares = []

for i in range(11):
    if(i%2==0):
        squares.append(i**2)

print(squares)

#by using list comprehensions

"""
we write as 
output   iterable               condition
i*i      for i in range(11)     if i%2==0"""

squares2 = [i*i for i in range(11) if i%2==0]  # if there is not any condition then we will write it like squares2 = [i*i for i in range(11)]
print(squares2)