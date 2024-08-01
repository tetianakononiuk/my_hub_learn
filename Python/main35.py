# 1. Напишите функцию get_response(url), которая отправляет GET-запрос по заданному URL-адресу
# и возвращает объект ответа. Затем выведите следующую информацию об ответе:
# - Код состояния (status code)
# - Текст ответа (response text)
# - Заголовки ответа (response headers)
# Пример использования:
# url = "https://api.example.com"
# response = get_response(url)
# print("Status Code:", response.status_code)
# print("Response Text:", response.text)
# print("Response Headers:", response.headers)


import requests


def get_response(url):
    try:
        response = requests.get(url)
        return response
    except requests.exceptions.RequestException as e:
        print("An error occurred:", e)
        return None


url = "https://www.zara.com/de/en/"
response = get_response(url)
if response is not None:
    print("Status code:", response.status_code)
    print("Response Text:", response.text)
    print("Response Headers:", response.headers)

# 2. Напишите функцию find_common_words(url_list), которая принимает список URL-адресов и возвращает
# список наиболее часто встречающихся слов на веб-страницах. Для каждого URL-адреса функция должна получить
# содержимое страницы с помощью запроса GET и использовать регулярные выражения для извлечения слов. Затем
# функция должна подсчитать количество вхождений каждого слова и вернуть наиболее часто встречающиеся слова
# в порядке убывания частоты.

import requests
import re
from collections import Counter


def find_common_words(url_list):
    common_word = Counter()

    for url in url_list:
        try:
            response = requests.get(url)
            if response.status_code == 200:
                words = re.findall(r'\b\w+\b', response.text.lower())
                common_word.update(words)
        except requests.RequestException as e:
            print(f'request error {url}: {e}')

    return [word for word, _ in common_word.most_common()]


url_list = [
    "https://de.wikihow.com/Die-URL-einer-Webseite-ermitteln",
    "https://support.google.com/websearch/answer/118238?hl=de&co=GENIE.Platform%3DAndroid"
]
common_words_list = find_common_words(url_list)

print(common_words_list)
