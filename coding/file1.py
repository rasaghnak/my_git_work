# pattern 3 A to Z sheet

for i in range(1,10):
    for j in range(0,i):
        print(i, end="")
    print()

# pattern 2

for i in range(1,10):
    for j in range(1,i+1):
        print(j,end="")
    print()

# pattern 5 

for i in range(5,1,-1):
    for j in range(1,i):
        print(j,end='')
    print()


for i in range(10,1,-1):
    for j in range(1,i):
        print('*',end='')
    print()