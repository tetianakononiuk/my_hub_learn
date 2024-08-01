# 1. Напишите программу, которая запрашивает у пользователя URL-адрес веб-страницы, использует
# библиотеку Beautiful Soup для парсинга HTML и выводит список всех ссылок на странице.


# (Пример: https://www.pixpa.com/ru/blog/best-website-designs)



import requests
from bs4 import BeautifulSoup

url = input('enter URL: ')
html = requests.get(url).text
soup = BeautifulSoup(html, "html.parser")
links = soup.find_all("a")

for link in links:
    href = link.attrs.get('href')
    if href and href.startswith("http"):
        print(href)


# 2. Напишите программу, которая запрашивает у пользователя URL-адрес веб-страницы и уровень заголовков,
# а затем использует библиотеку Beautiful Soup для парсинга HTML и извлекает заголовки нужного уровня
# (теги h1, h2, h3 и т.д.) с их текстом.


# (Пример:https://pogoda.interia.pl/prognoza-szczegolowa-berlin,cId,46145)



from bs4 import BeautifulSoup
import requests

url = input("enter URL: ")
header_level = input("Enter heading level(h1, h2, h3): ")

page = requests.get(url)

soup = BeautifulSoup(page.content, 'html.parser')

headers = soup.select(header_level)

for header in headers:
    print(header.text)