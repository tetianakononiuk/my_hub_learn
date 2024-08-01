# 1. Напишите программу, которая принимает в качестве аргумента командной строки путь к файлу .py
# и запускает его. При запуске файла программа должна выводить сообщение "Файл <имя файла> успешно запущен".
# Если файл не существует или не может быть запущен, программа должна вывести соответствующее сообщение
# об ошибке.

import sys
import os

if len(sys.argv) < 2:
    print("Пожалуйста, укажите путь к файлу в качестве аргумента командной строки.")
    sys.exit(1)
file_path = sys.argv[1]

if not os.path.exists(file_path):
    print(f'Файл {file_path} не существует.')
    sys.exit(1)
try:
    os.system(f'python {file_path}')
    print(f'Файл {file_path} успешно запущен.')
except Exception as e:
    print(f'Ошибка при запуске файла {file_path}: {e}')





# 2. Напишите программу, которая принимает в качестве аргумента командной строки путь к директории и выводит
# список всех файлов и поддиректорий внутри этой директории. Для этой задачи используйте модуль os и его
# функцию walk. Программа должна выводить полный путь к каждому файлу и директории.


import os
import sys

def list_files_and_subdirectories(directory_path):
    try:
        for root, dirs, files in os.walk(directory_path):
            for file in files:
                file_path = os.path.join(root, file)
                print(file_path)
            for subdir in dirs:
                subdir_path = os.path.join(root, subdir)
                print(subdir_path)
    except Exception as e:
        print(f"Error: {e}")
if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Use: python list ")

