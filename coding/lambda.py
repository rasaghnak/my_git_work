# example 1
sqr= (lambda x:x**2)
print(sqr(2))


# example 2
cubic_root= (lambda y : y**3)
print(cubic_root(2)) 


# syntax (lambda variable_name: func_equation)(actual_parameters)
roots= (lambda a,b,c,x : a*(x**2)+(b*x)+c)(1,2,1,1)
print(roots)
# test
my_2dList = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
print(my_2dList[2][1])