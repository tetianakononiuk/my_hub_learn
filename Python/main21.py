# 1. Напишите программу, которая подсчитывает количество вхождений каждого слова в тексте
# и выводит на экран наиболее часто встречающиеся слова. Для решения задачи используйте класс
# Counter из модуля collections. Создайте функцию count_words, которая принимает текст в качестве
# аргумента и возвращает словарь с количеством вхождений каждого слова. Выведите наиболее часто
# встречающиеся слова и их количество.
# Пример вывода:
# Введенный текст: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed lacinia est.
# sed: 2
# Lorem: 1

from collections import Counter
import re

def count_words(text):
    words = re.findall(r'\b\w+\b', text.lower())
    word_counts = Counter(words)
    return word_counts

def main():
    input_text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed lacinia est.'
    word_count_dict = count_words(input_text)

    print('Введите текст: ', input_text)
    most_common_words = word_count_dict.most_common(2)
    for word, count in most_common_words:
        print(f'{word}: {count}')

if __name__ == '__main__':
    main()

# 2. Напишите программу, которая создает именованный кортеж Person для хранения информации
# о человеке, включающий поля name, age и city. Создайте список объектов Person и выведите
# информацию о каждом человеке на экран.
# Пример вывода:
# Name: Alice, Age: 25, City: New York
# Name: Bob, Age: 30, City: London
# Name: Carol, Age: 35, City: Paris

# from collections import namedtuple
#
# Person = namedtuple('Person', ['name', 'age', 'city'])
#
# person1 = Person(name='Alice', age='25', city='New York')
# person2 = Person(name='Bob', age='30', city='London')
# person3 = Person(name='Carol', age='35', city='Paris')
#
# people = [person1, person2, person3]
#
# for person in people:
#     print(f'name: {person.name}, age: {person.age}, city:{person.city}')

# 3. Напишите программу, которая принимает словарь от пользователя и ключ, и возвращает значение
# для указанного ключа с использованием метода get или setdefault. Создайте функцию get_value_from_dict,
# которая принимает словарь и ключ в качестве аргументов, и возвращает значение для указанного ключа,
# используя метод get или setdefault в зависимости от выбранного варианта. Выведите полученное значение
# на экран.
# Пример словаря:
# my_dict = {'apple': 5, 'banana': 6, 'cherry': 7}
# Пример вывода:
# Введите ключ для поиска: banana
# Использовать метод get (y/n)? y
# Значение для ключа 'banana': 6



# def get_value_from_dict(dictionary, key):
#     use_get_method = input('Использовать метод get (y/n)?').lower() == 'y'
#
#     if use_get_method:
#         value = dictionary.get(key)
#     else:
#         default_value = input('Введите значение по умолчанию: ')
#         value = dictionary.setdefault(key, default_value)
#     return value
#
# my_dict = {'apple': 5, 'banana': 6, 'cherry': 7}
# search_key = input('Введите ключ для поиска: ')
# result = get_value_from_dict(my_dict, search_key)
# print(f'значение для ключа "{search_key}": {result}')