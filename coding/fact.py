def factorial(n):
    if n == 0: 
        return 1
    return n*factorial(n-1)


print(factorial(3))


# input
xlist = [1,2,'r',9.0,'your',True,'s',90]

# expected output
output = [1,2,90]


def only_ints(xlist):
    # case 1: if list is [] return []
    # case 2: if first element is integer i will save my first element and [xlist[0]]+ return rest [1: ]
    # case 3: if first element is not integer i will return a empty list []+ return rest[1: ]

    if xlist==[]:
        return []
    elif type(xlist[0])==int: 
        return [xlist[0]] + only_ints(xlist[1:])
    else: 
        return []+ only_ints(xlist[1:])
    
print(only_ints([1,2,'r',9.0,'your',True,'s',90]))


# multiplication = 5*4*3*2*1
def tail_factorial(n, a=1):

    if n==0:
        return a
    else: 
        return tail_factorial(n-1,a=n*a)
    
print(tail_factorial(5,a=1 ))


def tail_only_ints(xlist, a=[]):

    if xlist==[]:
        return a
    elif type(xlist[0]) != int:
        return tail_only_ints([]+ xlist[1:], a=a)
    else:
        return tail_only_ints(xlist[1:], a=[xlist[0]]+a)
print(tail_only_ints([1,2,'r',9.0,'your',True,'s',90],a=[]))