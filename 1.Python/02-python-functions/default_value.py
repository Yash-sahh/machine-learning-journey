#while defiening the function we can create default values  for parameter
# means if no value is passed for that parameter it will take that default value

def sum(a,b=1): # non default parameter pahle and default parameter last me likhe jate hai
    return(a+b)
print(sum(5,4))
print(sum(4))