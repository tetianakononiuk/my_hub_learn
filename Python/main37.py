# 1. В базе данных ich_edit три таблицы. Users с полями (id, name, age), Products с полями
# (pid, prod, quantity) и Sales с полями (sid, id, pid).
# Программа должна запросить у пользователя название таблицы и вывести все ее строки или
# сообщение, что такой таблицы нет.

# import mysql.connector
#
# dbconfig = {'host': 'ich-db.ccegls0svc9m.eu-central-1.rds.amazonaws.com',
#             'user': 'ich1',
#             'password': 'password',
#             'database': 'ich_edit'}
# connection = mysql.connector.connect(**dbconfig)
#
# table_name = input('Enter table name(users, products, sales): ')
# cursor = connection.cursor()
#
# cursor.execute(f"select * from {table_name}")
# print(cursor.fetchall())
#
# results = cursor.fetchall()

# 2.В базе данных ich_edit три таблицы. Users с полями (id, name, age), Products с полями
# (pid, prod, quantity) и Sales с полями (sid, id, pid).
# Программа должна вывести все имена из таблицы users, дать пользователю выбрать одно из них
# и вывести все покупки этого пользователя.

import mysql.connector


dbconfig = {
    'host': 'ich-db.ccegls0svc9m.eu-central-1.rds.amazonaws.com',
    'user': 'ich1',
    'password': 'password',
    'database': 'ich_edit'
}

connection = mysql.connector.connect(**dbconfig)
cursor = connection.cursor()
cursor.execute('SELECT * FROM users')
result = cursor.fetchall()
for i in result:
    print(i)
into = input('Введите имя человека что бы просмотреть его заказы: ')
cursor.execute(
    f"""
    select u.name, u.age, p.prod
from users as u
join sales as s
on s.id = u.id
join product as p
on p.pid = s.pid
where u.name  in ("{into}")
""")
result = cursor.fetchall()
print(result)
