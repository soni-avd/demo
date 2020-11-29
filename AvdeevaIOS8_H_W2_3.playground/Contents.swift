import UIKit

//Задача 1
print("Задача 1")

/*
 Вы разрабатываете спутник для полета на Европу (спутник Юпитера). В вашей команде два ученых по космодинамике. Вы даете каждому из них задачу расcчитать количество топлива для достижения спутником цели.

 Данные, которые они получают — это вес спутника и длина полета. Они должны вам предоставить свои алгоритмы расчета расхода топлива (это ваши замыкания). А вы по готовности алгоритмов делаете обработку данных и сравниваете результат (это ваша функция).

 Алгоритм выполнения

 Написать функцию с входящим параметром — замыкание (тип указан выше). Функция должна выводить в консоль результат выполнения замыкания.
 Написать два замыкания (тип указан выше). Внутри должна быть математическая операция (на ваш выбор) над входящими значениями.
 Вызвать функцию для первого замыкания и потом для второго замыкания.
 Выполнить задание, не сокращая синтаксис языка.

 */

func flyingWay(_ weight: Double,_ distance: Double, closure: (Double,Double) -> Double) -> Double {
    let result = closure(weight, distance)
    print("The result is \(result)")
    return result
}
    var addingClosure = { (weight: Double, distance: Double) in return weight + distance }
    var multiplyingClosure = { (weight: Double, distance: Double) in return weight * distance }

var first = flyingWay(45.6, 654.6, closure: addingClosure)
var second = flyingWay(56.3, 765.3, closure: multiplyingClosure)


//Задача 2
print("Задача 2")

var add = flyingWay(45.6, 654.6, closure: { $0 + $1 })
var multiply = flyingWay(56.3, 765.3, closure: { $0 * $1 })

// Задача 3
print("Задача 3")

/*
 Вызвать функцию из задания 1, определив ей замыкание самостоятельно (не передавая).

Объяснить, куда и почему исчезло ключевое слово ('param' - в примере) для параметра.
*/
//
var newFunc = flyingWay(45.6, 654.6) { (weight: Double, distance: Double) in
                            return weight + distance }

// 'param' исчезает потому что мы просто вынесли замыкание за скобки

func newFunc(closure: (Double,Double) -> Double) {
    
}
newFunc {(weight: Double, distance: Double) in return weight + distance }

print("piu-piu")

