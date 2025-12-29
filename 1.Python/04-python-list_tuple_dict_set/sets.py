#sets -> collection of unique elements 

# set itself is mutable but its elements are immutable
# python set apne aap me mutable hota hai but iske elements immutable hote hai
# set cant have elements list and dictionary but can have elemnt int string float tuple 

set={1,2,3,4,1}
print(set)

print(len(set))
# it is unordered

# new element can be add as 
set.add(5)
print(set)

# there is not any indexing in set

# empty set cant be created normally 
lst=[] #->empty list
tup=()#->empty tuple
dict={}#->empty dictionary
empty_set=set() #->empty set => set() is an constructor function which we are calling to create an empty set