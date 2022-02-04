import UIKit

//Swift - Enum (Enumeradores)

enum CompasPoint {
    case north
    case east
    case west
    case south
}

var direction = CompasPoint.north
var direction2: CompasPoint = .north

direction = .south

enum SeatPosition: String{
    case aisle = "corredor", middle = "meio", window = "janela"
}

var passengerSeat = SeatPosition.window
var message: String?
switch passengerSeat {
    case .aisle:
        message = "O passageiro está sentado no \(passengerSeat.rawValue)"
    case .middle:
        message = "O passageiro está sentado no \(passengerSeat.rawValue)"
    case .window:
        message = "O passageiro está sentado na \(passengerSeat.rawValue)"
}

if message != nil {
    print(message!)
}
print(passengerSeat.rawValue)


enum Mouth: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, decamber
}
print(Mouth.august.rawValue)


//Valores associados (Associated Values)
enum Mesuare {
    case weight(Double), age(Int), size(weight: Double, height: Double)
}

let measure: Mesuare = .size(weight: 0.6, height: 1.71)
switch measure {
case .weight(let weight):
    print("O seu peso é: \(weight)")
case .age(let age):
    print("A sua idade é: \(age)")
case .size(let size):
    print("As suas medidas de tamanho são: \(size.weight) e \(size.height) m de altura")
}
