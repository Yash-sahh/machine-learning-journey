#condition ke andar condition
username = input("enter username : ")
password = input("enter password : ")

if(username == 'admin' and password == 'pass'):
    print("LOGIN Successful")
else:
    if(username != 'admin' and password == 'pass'):
        print("wrong username")
    elif(username == 'admin' and password!= 'pass'):
        print("Wrong password")
    else:
        print("wrong username and password")
# elif and else is always written with if akela else nhi likhte akela elif nhi likhte if ke sath likhte hai but akela if likh sakte hai 