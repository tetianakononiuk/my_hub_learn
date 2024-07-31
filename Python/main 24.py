# 1.Напишите генератор, который будет принимать на вход числа и возвращать их сумму. Генератор
# должен использовать инструкцию yield для возврата текущей суммы и должен продолжать принимать
# новые числа для добавления к сумме. Если генератор получает на вход число 0, он должен прекращать
# работу и вернуть окончательную сумму. Напишите программу, которая будет использовать этот генератор
# для пошагового расчета суммы чисел, вводимых пользователем.

# def sum_generator():
#     total = 0
#     while True:
#         num = yield total
#         if num == 0:
#             return total
#         total += num
#
# gen = sum_generator()
# next(gen)
# while True:
#     try:
#         user_input = float(input('Введите число (0 для завершения): '))
#         result = gen.send(user_input)
#         print(f"Текущая сумма: {result}")
#     except ValueError:
#         print('Некоректный ввод. Пожалуйста введите число.')
#     except StopIteration as e:
#         print(f'Окончательная сумма: {e.value}')
#         break

# 2. Напишите генератор, который будет генерировать арифметическую прогрессию

start = 1
end = 10
step = 2
progression = [start + i * step for i in range((end - start) // step + 1)]
print(progression)
