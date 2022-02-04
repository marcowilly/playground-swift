import UIKit

//Swift - Structs

let age: Int = 20
let name: String = "Marco"

struct Person {
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Olá")
    }
    
    mutating func incrementAge(){
        age += 1
    }
}

var person = Person(name: "Marco", age: 21)
person.sayHello()
person.name = "João"
print(person.name!)

var newPerson = Person(name: "Marco")
newPerson.age = 39
newPerson.incrementAge()

//Computed Properties (Propriedades computadas)

struct Temperature{
    var celsius: Double
    var farenheint: Double {
        return celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.farenheint)
