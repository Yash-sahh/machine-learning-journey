lst = [1,2,3,4,5,"y",0.9]

#list is mutable
lst[1]=8
print(lst)

#lst has indexing and slicing like string
print(lst[1:5])
print(lst[-1:-4:-1]) # step size -1 means ulta travel karne lag jayega mean - se ulta karne lag jaye and -1 with step size q and if -2 hai to ulta with step size 2
print(lst[-4:-1])