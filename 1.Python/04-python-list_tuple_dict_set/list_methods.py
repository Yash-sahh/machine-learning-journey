#methods are functions but they are class specific

lst=[1,2,3]
print(lst)

#append one elements at end
lst.append(4)
print(lst)

#insert element at index
lst.insert(1,0) # 1 index me 0 insert karna
print(lst)

#sort -> arrange in increasing order
lst.sort()
print(lst)

#reverse the order
lst.reverse()
print(lst)

# they all change in original list doesnt return a copy after changing