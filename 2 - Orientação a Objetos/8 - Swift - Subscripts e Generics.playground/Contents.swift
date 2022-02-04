import UIKit

//Swift - Orientação a Objetos

//Subscripts e Generics

/**

 */

//Subscript
class Car {
    var licensePlate: String
    
    subscript(index: Int) -> String {
        get{
            return String(Array(licensePlate)[index])
        }
        set{
            var array = Array(licensePlate)
            array[index] = Character(newValue)
            self.licensePlate = String(array)
        }
    }
    
    init(licensePlate: String){
        self.licensePlate = licensePlate
    }
}

let car = Car(licensePlate: "EXP-8722")
car[7] = "A"
print(car.licensePlate)

//Generics

/**
    inout - serve para modificar valores passados via referência
    & - serve para passar referência de uma struct invés de uma copia
 */
func swapInts(_ a: inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}
var intA = 10
var intB = 20
swapInts(&intA, &intB)

/**
    T - Representa tipo genêrico
 */

func swapValues<T>(_ a: inout T, _ b: inout T){
    let tempA = a
    a = b
    b = tempA
}

var a = 10.0
var b = 20.0

swapValues(&a, &b)
