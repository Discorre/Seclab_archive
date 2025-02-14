import Foundation

// Функция для вычисления суммы цифр числа
func sumOfDigits(_ num: Int) -> Int {
    var number = num // Присвоение значения переменной для обработки
    var sum = 0 // Инициализация счетчика суммы цифр

    // Если число отрицательное, меняем знак
    if number < 0 {
        number *= -1
    }

    var temp = number // Временная переменная для сохранения значения числа
    while temp != 0 { // Пока число не равно нулю
        sum += temp % 10 // Добавляем последнюю цифру к сумме
        temp /= 10 // Убираем последнюю цифру из числа
    }
    return sum // Возвращаем сумму цифр числа
}

func main() {
    print("Enter the number of numbers: ") // Печать приглашения для ввода количества чисел
    guard let n = Int(readLine() ?? "") else { // Чтение количества чисел, если возможно
        return // Выход из функции в случае ошибки чтения
    }
    
    print("Enter numbers separated by space: ") // Печать приглашения для ввода чисел
    guard let input = readLine() else { // Чтение ввода, если возможно
        return // Выход из функции в случае ошибки чтения
    }
    
    // Разделение введенной строки на числа и удаление нулевых значений
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    
    for number in numbers { // Перебор чисел из введенного списка
        // Проверяем, что сумма цифр числа состоит из одной цифры
        if sumOfDigits(number) < 10 && number > -10 {
            print("\(number)", terminator: " ") // Печать числа, если условие выполняется
        }
    }
    print() // Переход на новую строку после окончания печати чисел
}

main() // Вызов основной функции программы
