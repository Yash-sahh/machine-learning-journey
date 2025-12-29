#search python exist or not if yes then in which line
with open("1.Python/06-python-files/sample.txt","r") as f:
    count = 1
    while(True):
        data = f.readline()
        if(data==""):
            print("python didnt exist")
            break
        elif('python' in data):
            print(f"python word exist in line number {count}")
            break
        else:
            count+=1
