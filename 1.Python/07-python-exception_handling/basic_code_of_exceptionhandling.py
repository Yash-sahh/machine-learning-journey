try:#intry block we write the line of code jisme error aa sakta hai  
    x = int(input("enter x : "))   # isme error aa sakta hai yadi input integer type na do
    ans = 10/x    #isme error aa sakta hai yadi x ki value 0 ho

except ZeroDivisionError:    # there multiple except posssible jaha par ham likhte hai wo exception matlab wo condition jiske karan errror aa rha hai 
    print(f"Divide by 0 is not allowed")

except ValueError:   #ye value error hai means yadi x ki input value apan int nhi dete hai to ye error show hoga
    print(f"Invalid input")
    
else:     # ye else block hai jo execute hoga yadi except wali condition nhi aayi
    print(f"ans = {ans}")

finally:   # ye finally keyword isme likha code execute hoga hi hoga yadi except chala ho to bhi or else chala ho to bhi
    print("End of python programm")
