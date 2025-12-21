# Type Conversion -> Ek type ke data ko dusre type ke data me convert karna and this can be done between compatible data type 
  # means "123" string can be converted to integer
  # but string "abs12" cant be converted into integer
  # it is implicit -> python khud kar deta hai for example code is
a=5
b=2
print(type(a/b)) # -> float a is int b is int and a/b is float this is converted inplicitly from int to float 
# but there is another type of conversion that is 
# TYPE CASTING -> this is explicit means we have to do it for ex
str = '123' # ->string
str_=int(str)
print(type(str_))

val = bool(-10) # all non zero will convert to true and zero will convert to false
print(type(val),val)

