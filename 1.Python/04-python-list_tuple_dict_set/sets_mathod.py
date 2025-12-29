s={1,2,3}


print(f"original set s {s}")
#add method
s.add(4)
print(f"s after add {s}")

#remove element
s.remove(2)
print(f"s after remove {s}")

#removes a random element
s.pop()
print(f"s after pop {s}")

s2={10,11}
#return new set with union
su=s.union(s2)
print(f"union of {s} and {s2} is {su}")

s1={1,3,4}
s3={1,3,6}
#returns new set with intersection
si=s1.intersection(s3)
print(f"intersection of {s1} and {s3} is {si}")

#empties the set
s.clear()
print(f"s after clear {s}")