# 1.Напишите функцию, которая принимает на вход список чисел и возвращает сумму квадратов
# только четных чисел из списка, используя функциональные подходы (например, map, filter и reduce).
# Пример вывода:
# Введите числа: 4, 6, 3, 4, 2, 3, 9, 0, 7
# Результат: 72

def sum_of_even_squares(numbers):
    even_numbers = filter(lambda x: x % 2 == 0, numbers)
    squared_numbers = map(lambda x: x ** 2, even_numbers)
    total_sum = sum(squared_numbers)

    return total_sum

my_numbers = [4, 6, 3, 4, 2, 3, 9, 0, 7]
result = sum_of_even_squares(my_numbers)
print(f'Сумма квадратов четных чисел: {result}')


# 2.Напишите функцию, которая принимает на вход список функций и значение, а затем применяет композицию
# этих функций к значению, возвращая конечный результат.
# Пример использования:
# add_one = lambda x: x + 1
# double = lambda x: x * 2
# subtract_three = lambda x: x - 3
# functions = [add_one, double, subtract_three]
# compose_functions(functions, 5) должно вывести 9

def compose_functions(functions, value):
    result = value
    for func in functions:
        result = func(result)
    return result

add_one = lambda x: x + 1
double = lambda x: x * 2
subtract_three = lambda x: x - 3
function = [add_one, double, subtract_three]

print(compose_functions(function, 5))




