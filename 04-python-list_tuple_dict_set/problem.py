#given a list of tuples with info(name,subject):
#. list all unique course , list students enrolled in English, create dictionary(student,set of courses)

info = [ 
    ("alice","math"),
    ("bob","science"),
    ("alice","science"),
    ("charlie","math"),
    ("bob","math"),
    ("alice","english"),
    ("charlie","english")
]

empty_set = set()

for tup in info:
    empty_set.add(tup[1])
unique_courses=list(empty_set)

print(f"list of unique courses are {unique_courses}")
print("\n\n\n")
st_in_eng=[]

for tup in info:
    if(tup[1]=="english"):
        st_in_eng.append(tup[0])

print(f"list of students enrolled in english are {st_in_eng}")
print("\n\n\n")
st_course = {}

for tup in info:
    if(st_course.get(tup[0])==None):
        st_course.update({tup[0]:{tup[1]}})
    else:
        st_course[tup[0]].add(tup[1])

print(f"dictionary with (student,set of courses) {st_course}")