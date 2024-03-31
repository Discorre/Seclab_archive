def check_movement(n, m, s)
  x = 0 # начальная позиция по горизонтали
  y = 0 # начальная позиция по вертикали

  s.each_char do |move|  # Перебор каждого символа в строке ходов
    case move  # Проверка текущего символа
    when 'L'  # Если ход влево
      if x < n / 2 && x > -(n / 2)  # Проверка, что новая позиция по горизонтали находится в пределах доски
        x -= 1  # Движение влево
      else
        return 'No' # выход за пределы доски
      end
    when 'R'  # Если ход вправо
      if x < n / 2 && x > -(n / 2)  # Проверка, что новая позиция по горизонтали находится в пределах доски
        x += 1  # Движение вправо
      else
        return 'No' # выход за пределы доски
      end
    when 'U'  # Если ход вверх
      if y < m / 2 && y > -(m / 2)  # Проверка, что новая позиция по вертикали находится в пределах доски
        y += 1  # Движение вверх
      else
        return 'No' # выход за пределы доски
      end
    when 'D'  # Если ход вниз
      if y < m / 2 && y > -(m / 2)  # Проверка, что новая позиция по вертикали находится в пределах доски
        y -= 1  # Движение вниз
      else
        return 'No' # выход за пределы доски
      end
    else
      return 'Invalid Command' # некорректная команда
    end
  end

  "(#{x},#{y})"  # Возвращаем текущие координаты
end

# Пример использования функции
print "Введите N и M: "
n1, m1 = gets.chomp.split.map(&:to_i)  # Ввод размеров доски
print "Введите последовательность ходов: "
s1 = gets.chomp  # Ввод последовательности ходов
puts check_movement(n1, m1, s1)  # Вывод результата
