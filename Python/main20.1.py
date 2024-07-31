# Напишите функцию merge_dicts, которая принимает произвольное количество словарей
# в качестве аргументов и возвращает новый словарь, объединяющий все входные словари.
# Если ключи повторяются, значения должны быть объединены в список. Функция должна использовать
# аргумент **kwargs для принятия произвольного числа аргументов словаря.
# Пример ввода:
# {'a': 1, 'b': 2}
# {'b': 3, 'c': 4}
# {'c': 5, 'd': 6}

# def merge_dicts(**kwargs):
#     result = {}
#     for dictionary in kwargs.values():
#         for key, value in dictionary.items():
#             if key in result:
#                 if isinstance(result[key], list):
#                     result[key].append(value)
#                 else:
#                     result[key] = [result[key], value]
#             else:
#                 result[key] = value
#     return result
#
# dict1 = {'a': 1, 'b': 2}
# dict2 = {'b': 3, 'c': 4}
# dict3 = {'c': 5, 'd': 6}
#
# merge_dicts = merge_dicts(dict1 = dict1, dict2 = dict2, dict3 = dict3)
# print(merge_dicts)

# 2. Напишите программу, которая принимает строку от пользователя и подсчитывает
# количество уникальных символов в этой строке. Создайте функцию count_unique_chars,
# которая принимает строку и возвращает количество уникальных символов. Выведите результат на экран.
# Пример вывода:
# Введите строку: hello
# Количество уникальных символов: 4

# def count_unique_chars(s):
#     char_freg = {}
#     for char in s:
#         char_freg[char] = char_freg.get(char, 0) + 1
#     return len(char_freg)
# user_input = input('Введите строку: ')
# result = count_unique_chars(user_input)
# print(f'Количество уникальных символов: {result}')


# 3. Напишите программу, которая создает словарь, содержащий информацию о студентах и их оценках.
# Ключами словаря являются имена студентов, а значениями - списки оценок. Создайте функцию
# calculate_average_grade, которая принимает словарь с оценками студентов и вычисляет средний
# балл для каждого студента. Функция должна возвращать новый словарь, в котором ключами являются
# имена студентов, а значениями - их средний балл. Выведите результат на экран.
# Пример словаря с оценками
# grades = {'Alice': [85, 90, 92],
# 'Bob': [78, 80, 84],
# 'Carol': [92, 88, 95]}
# Пример вывода:
# {'Alice': 89.0, 'Bob': 80.66666666666667, 'Carol': 91.66666666666667}

def calculate_average_grade(student_grades):
    average_grades = {}
    for student, grades in student_grades.items():
        average = sum(grades) / len(grades)
        average_grades[student] = average
    return average_grades
student_grades = {'Alice': [85, 90, 92],
'Bob': [78, 80, 84],
'Carol': [92, 88, 95]}

average_grades_result = calculate_average_grade(student_grades)
for student, avg_grade in average_grades_result.items():
    print(f'{student}:Средний бал - {avg_grade:.2f}')