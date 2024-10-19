# x=[1,2,3]
# y=[2]
# for i in x:
#     y=[y[0]+x[i-1]]
# print(y)


a,b=1,9
s=(a,b),a*b
for i in range(a,b):
    for j in range(a,b):
        if i+j==10:
            if i*j>s[1]:
                s=(i,j),i*j
print(s)


def first_two(lst):
    result=len(lst)>1
    if result:
        a,b=lst[]