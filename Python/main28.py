# 1.Напишите программу, которая принимает список слов от пользователя и использует генераторное
# выражение (comprehension) для создания нового списка, содержащего только те слова, которые начинаются
# с гласной буквы. Затем программа должна использовать функцию map, чтобы преобразовать каждое слово
# в верхний регистр. В результате программа должна вывести новый список, содержащий только слова,
# начинающиеся с гласной буквы и записанные в верхнем регистре.


print("Слова, начинающиеся с гласной буквы и записанные в верхнем регистре: ")
def filter_vowels(words):
    vowels = "aeiouyAEIOUY"
    return [word.upper() for word in words if word[0] in vowels]
user_words = input("Введите список слов через пробел: ").split()
filtered_words = filter_vowels(user_words)
print(filtered_words)


# 2.Напишите программу, которая принимает список чисел от пользователя и использует функцию reduce
# из модуля functools, чтобы найти произведение всех чисел в списке. Затем программа должна использовать
# функцию itertools.accumulate для накопления произведений чисел в новом списке. В результате программа
# должна вывести список, содержащий накопленные произведения.

import functools
import itertools

user_input = input("Введите числа через пробел: ")
numbers = [int(num) for num in user_input.split()]
product = functools.reduce(lambda x, y: x * y, numbers)
accumulated_products = list(itertools.accumulate(numbers, lambda x, y: x * y))

print("Произведение всех чисел: ", product)
print("Накопление произведения: ", accumulated_products)
