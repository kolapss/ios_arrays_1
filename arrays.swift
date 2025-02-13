// 1. Массив с количеством дней в каждом месяце
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// 2. Массив с названиями месяцев
let monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь",
                  "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

// 3. Вывод количества дней в каждом месяце без имен
print("Количество дней в месяцах:")
for days in daysInMonths {
    print(days)
}

print("\nКоличество дней в месяцах с названиями:")
for i in 0..<monthNames.count {
    print("\(monthNames[i]): \(daysInMonths[i]) дней")
}

// 4. Использование массива кортежей (tuple)
let monthsWithDays = zip(monthNames, daysInMonths).map { ($0, $1) }

print("\nИспользуем кортежи:")
for (name, days) in monthsWithDays {
    print("\(name): \(days) дней")
}

// 5. Вывод дней в обратном порядке (но порядок в массиве не меняем)
print("\nВывод в обратном порядке:")
for i in (0..<monthNames.count).reversed() {
    print("\(monthNames[i]): \(daysInMonths[i]) дней")
}

// 6. Количество дней от начала года до произвольной даты
let targetMonth = 6   
let targetDay = 15    

let daysBeforeTarget = daysInMonths.prefix(targetMonth - 1).reduce(0, +) + targetDay
print("\nКоличество дней с начала года до \(targetDay) \(monthNames[targetMonth - 1]): \(daysBeforeTarget)")
