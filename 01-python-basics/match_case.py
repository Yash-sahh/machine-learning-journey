# match case = alternating for if,elif,else
color = input("enter color of trafic light : ")
color=color.lower()

match color:
    case "green":
        print("Go")
    case "yellow":
        print("Ready")
    case "red":
        print("Stop")
    case _: # default case
        print("Wrong color")