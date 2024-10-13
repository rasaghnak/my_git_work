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


def reverse_number(number):

    str_number = str(number)
    

    reversed_str = ''.join(reversed(str_number))

    return int(reversed_str)

number = int(input("Enter a number to reverse: "))
reversed_num = reverse_number(number)
print(f"Reversed number is: {reversed_num}")
