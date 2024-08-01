# 1. Создайте класс Rectangle для представления прямоугольника.
# Класс должен иметь атрибуты width (ширина) и height (высота) со значениями по умолчанию, а также
# методы calculate_area() для вычисления площади прямоугольника и calculate_perimeter() для вычисления
# периметра прямоугольника.
# Переопределить методы __str__, __repr__.
# Затем создайте экземпляр класса Rectangle и выведите информацию о нем,его площадь и периметр.

class Rectangle:
    def __init__(self, width = 0, height = 0):
        self.width = width
        self.height = height
    def calculate_area(self):
        return self.width * self.height
    def calculate_perimeter(self):
        return 2 * (self.width + self.height)
    def __str__(self):
        return f"Прямоугольник: ширина {self.width}, высота{self.height}"
    def __repr__(self):
        return f"Rectangle ({self.width}, {self.height})"

rectangle = Rectangle(5,10)

print(rectangle)
print("Площадь прямоугольника: ", rectangle.calculate_area())
print("Периметр прямоугольника: ", rectangle.calculate_perimeter())




# 2. Создайте класс BankAccount для представления банковского счета. Класс должен иметь атрибуты
# account_number (номер счета) и balance (баланс), а также методы deposit() для внесения денег на счет
# и withdraw() для снятия денег со счета. Затем создайте экземпляр класса BankAccount, внесите на счет
# некоторую сумму и снимите часть денег. Выведите оставшийся баланс. Не забудьте предусмотреть вариант,
# при котором при снятии баланс может стать меньше нуля. В этом случае уходить в минус не будем, вместо
# чего будем возвращать сообщение "Недостаточно средств на счете".

class BankAccount:
    def __init__(self, account_number):
        self.account_number = account_number
        self.balance = 0

    def deposit(self, amount):
        self.balance += amount

    def withdraw(self, amount):
        if self.balance >= amount:
            self.balance -= amount
        else:
            print("Недостаточно средств на счете")

account_instance = BankAccount(account_number="12345")

account_instance.withdraw(300)

print(f"Остаток на счете : {account_instance.balance}")
