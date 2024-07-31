# Задание 1

# a = int(input('Введите первое число: '))
# b = int(input('Введите второе число: '))
# c = int(input('Введите третье число: '))
#
# if b < a > c and b > c:
#     print (c, b, a)
# elif a < b > c and a > c:
#     print (c, a, b)
# elif a < c > b and a > b:
#     print (b, a, c)
# elif c < a > b and c > b:
#     print (b, c, c)
# elif c < b > a and c > a:
#     print (a, c, b)
# else:
#     print (a, b, c)

# Задание 2

x = int(input('Введите год: '))
if (x % 4 == 0 and x % 100 != 0) or (x % 400 == 0) :
    print ('Год является высокосным')
else:
    print ('Год является не высокосным')