# 1. Напишите функцию find_longest_word, которая будет принимать список слов
# и возвращать самое длинное слово из списка. Аннотируйте типы аргументов и
# возвращаемого значения функции.
# Пример вызова функции и ожидаемого вывода:
# words = ["apple", "banana", "cherry", "dragonfruit"]
# result = find_longest_word(words)
# print(result)  # Ожидаемый вывод: "dragonfruit"



def find_longest_word(word_list: list[str]) -> str:
        return max(word_list, key=lambda s: len(s))

words = ["apple", "banana", "cherry", "dragonfruit"]
result = find_longest_word(words)
print(result)


# 2. Напишите программу, которая будет считывать данные о продуктах из файла и использовать аннотации
# типов для аргументов и возвращаемых значений функций. Создайте текстовый файл "products.txt", в котором
# каждая строка будет содержать информацию о продукте в формате "название, цена, количество". Например:
# Apple, 1.50, 10
# Banana, 0.75, 15
# В программе определите функцию calculate_total_price, которая будет принимать список продуктов и возвращать
# общую стоимость. Продумайте, какая аннотация должна быть у аргумента! Считайте данные из файла, разделите
# строки на составляющие и создайте список продуктов. Затем вызовите функцию calculate_total_price с этим
# списком и выведите результат.


from typing import List, Tuple

def calculate_total_price(products: List[Tuple[str,float,int]]) -> float:
        total_price = 0
        for product in products:
                total_price += product[1] * product[2]
        return total_price
products = []
with open ('products.txt', 'r') as file:
        for line in file:
                name, price, quantity = line.strip().split(',')
                products.append((name,float(price), int(quantity)))

total_price = calculate_total_price(products)
print(f'Общая стоимость продуктов: {total_price}')