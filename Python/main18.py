# 1. Написать программу, вычисляющую факториал числа.
# Решить задачу с помощью рекурсии.

# def factorial (n):
#     if n == 0:
#         return 1
#     else:
#         return n * factorial(n-1)
# num = int(input('Введите число: '))
# result = factorial(num)
# print(f'Факториал числа {num} равен {result}')

# 2. Напишите программу, которая использует рекурсию для вычисления суммы цифр числа.
# Создайте функцию sum_digits, которая принимает один аргумент - число, для которого
# нужно вычислить сумму цифр. Используйте условие выхода из рекурсии, когда число
# состоит из одной цифры. Выведите результат на экран.

def sum_digits(num):
    if num < 10:
        return (num)

    else:
        return num % 10 + sum_digits(num // 10)

user_input = int(input('введите число: '))
result = sum_digits(user_input)
print(f'Сумма цифр числа {user_input} равна {result}')


