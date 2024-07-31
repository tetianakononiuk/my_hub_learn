# 1.
# Напишите программу, которая открывает файл, считывает из него два числа и выполняет операцию
# их деления. Если число отрицательное, выбросите исключение ValueError с сообщением ("Число должно быть "
# "положительным"). Обработайте исключение и выведите соответствующее сообщение.


# def read_numbers_from_file(filename):
#     try:
#         with open(filename, 'r') as file:
#             num1, num2 = map(float,file.readline().split())
#             if num1 < 0 or num2 < 0:
#                 raise ValueError('Число должно быть положительным')
#             result = num1 / num2
#             print(f'Результат деления:{result:.2f}')
#     except FileNotFoundError:
#         print(f'Файл "{filename}" не найден.')
#     except ValueError as e:
#         print(f'Ошибка: {e}')
#
# filename = 'numbers.txt'
# read_numbers_from_file(filename)


# 2. Напишите программу, которая открывает файл, считывает его содержимое и выполняет операции над числами
# в файле. Обработайте возможные исключения при открытии файла (FileNotFoundError) и при выполнении операций
# над числами (ValueError, ZeroDivisionError). Используйте конструкцию try-except-finally для обработки
# исключений и закрытия файла в блоке finally.

def read_numbers_from_file(filename):
    try:
        with open(filename, 'r') as file:
            num1, num2 = map(float, file.readline().split())
            result = num1 / num2
            print(f'Результат деления: {result: 2f}')
    except FileNotFoundError:
        print(f'Файл "{filename}" не найден.')
    except ZeroDivisionError:
        print('Деление на ноль недопустимо.')
    finally:
        file.close()
filename = 'numbers.txt'
read_numbers_from_file(filename)
