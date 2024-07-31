# 1. Напишите программу, которая принимает список чисел от пользователь
# и передает его в функцию modify_list, которая изменяет элементы списка.
# Функция должна умножить нечетные числа на 2, а четные числа разделить на 2.
# Выведите измененный список на экран. Объясните, почему изменения происходят
# только внутри функции и как работают изменяемые и неизменяемые параметры.
# Пример вывода:
# Введите список чисел, разделенных пробелами: 1 2 3 4 5
# Измененный список чисел: [2, 1, 6, 2, 10]

def modify_list(a):
    for i in range(len(a)):
        if a[i] % 2 == 0:
            a[i] //= 2
        else:
            a[i] *= 2
b = list(map(int,input('Введите список чисел через пробел: ').split()))
modify_list(b)
print(b)



# 2. Напишите программу, которая принимает произвольное количество аргументов от
# пользователя и передает их в функцию calculate_sum, которая возвращает сумму всех
# аргументов. Используйте оператор * при передаче аргументов в функцию. Выведите результат
# на экран.
# Пример вывода:
# Введите числа, разделенные пробелами: 1 2 3 4 5
# Сумма чисел: 15


# calculate_sum = lambda *a: sum(a)
# b = list(map(int,input('Введите список чисел через пробел: ').split()))
# print(calculate_sum(*b))