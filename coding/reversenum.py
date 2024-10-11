# Reverse Digits of A Number



def revFun(digit):
    rev_num=0
    n=digit
    while n>0:
        lst_digit=n%10
        rev_num=rev_num*10+lst_digit
        n = n // 10
    return rev_num


print(revFun(9897))

