a=5
b=10
sum=a+b
# two ways
#1 format function
#i) normal formatting
print("sum of {} and {} is {}".format(a,b,sum))
#ii) index based formatting
print("sum of {1} and {0} is {2}".format(a,b,sum))
#iii) value based formating
print("values of vars {x} and {y}".format(x=7,y=14)) #assign values 
#2 fstring
print(f"sum of {a} and {b} is {sum}")
print(f"avg of {a} and {b} is {(a+b)/2}")