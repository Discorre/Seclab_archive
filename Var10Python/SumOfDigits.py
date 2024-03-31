# Функция для вычисления суммы цифр числа
def sum_of_digits(num):
    sum = 0  # Инициализация переменной для хранения суммы цифр
    # Если число отрицательное, меняем знак
    if num < 0:
        num *= -1  # Изменение знака числа на положительный
    while num != 0:  # Пока число не равно нулю
        sum += num % 10  # Добавляем последнюю цифру числа к сумме
        num //= 10  # Удаляем последнюю цифру числа
    return sum  # Возвращаем сумму цифр числа


def main():
    n = int(input("Enter the number of numbers: "))  # Ввод количества чисел
    print("Enter numbers separated by space:")  # Вывод приглашения для ввода чисел
    numbers = list(map(int, input().split()))  # Чтение чисел, разделенных пробелами, и создание списка

    for number in numbers:  # Перебор каждого числа в списке
        # Проверяем, что сумма цифр числа состоит из одной цифры
        if sum_of_digits(number) < 10 and number > -10:
            print(number, end=" ")  # Вывод числа, удовлетворяющего условию


if __name__ == "__main__":
    main()  # Вызов основной функции при запуске скрипта
