# 1. Напишите программу, которая принимает матрицу (вложенный список)
# от пользователя и находит сумму всех элементов в матрице. Используйте
# вложенные списки и циклы для обхода элементов матриц.
def sum_matrix(matrix):
    total_sum = 0
    for row in matrix:
        for element in row:
            total_sum += element
    return total_sum

matrix = []
rows = int(input('Введите количество строк в матрице: '))
columns = int(input('Введите количество столбцов в матрце: '))
print('Введите элементы матрицы: ')
for i in range(rows):
    row = list(map(int, input().split()))
    matrix.append(row)
result = sum_matrix(matrix)
print(result)


# Напишите программу, которая принимает список чисел от пользователя и сортирует его
# в порядке убывания, используя метод sort() и параметр reverse = True.Выведите
# отсортированный список на экран.
# Пример вывода:
# Введите список чисел, разделенных пробелами: 5 2 8 1 3
# Отсортированный список чисел: [8, 5, 3, 2, 1]

# numbers = input('Введите числa разделенное пробелом: ').split()
# numbers = list(map(int, numbers))
# numbers.sort(reverse = True)
# print(numbers)