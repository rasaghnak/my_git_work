# def fact(n):
#     if n==0: 
#         return 1
#     else: 
#         return n*fact(n-1)


# print(fact(3))


# def only_ints(xlist):
#     if xlist == []:
#         return []
#     elif type(xlist[0]) != int:
#         return [] + only_ints(xlist[1:])
#     else:
#         return [xlist[0]] + only_ints(xlist[1:])
# print(only_ints([4,'hello','l',0.9,'p','l',9,8]))


def tail_factorial(n, a=1):
    if n == 0:
        return a # return accumulator
    else:
        return tail_factorial(n-1, a=a*n)

print(tail_factorial(4))