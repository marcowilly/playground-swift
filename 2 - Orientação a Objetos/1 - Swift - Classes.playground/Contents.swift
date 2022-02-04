import UIKit

//Swift - Orientação a objetos

//Classes
/**
    Representação de um objeto - Modelo
    Obrigatório método construto
 */

class Person {
    var name: String
    var gender: Character
    var age: Int = 0
    
    //Constutor
    init(name: String, gender: Character){
        self.name = name
        self.gender = gender
    }
    
    func speak(sentence: String){
        if age < 3{
            print("Gugu dada")
        }else{
            print(sentence)
        }
    }
    
    func introduce(){
        speak(sentence: "Olá meu nome é \(name)")
    }
}

class Job {
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}

let joao = Person(name: "João", gender: "M")
let clara = Person(name: "Clara", gender: "F")
let fabio = Person(name: "Fabio", gender: "M")

joao.age = 34
clara.age = 27
fabio.age = 1

joao.introduce()
clara.introduce()
fabio.introduce()

class Vehicle {
    //Variável com observador de propriedade
    var speed: Double = 0 {
        didSet {
            speed = min(speed, maxSpeed)
        }
    }
    var model: String
    
    //Variável de classe - Não precisa ser instânciado
    static let speedUnit = "Km/h"
    
    var maxSpeed: Double {
        return 250
    }
    
    //Variável computada usando get e set atraves de newValue
    var speedMilesPerHour: Double {
        get{
            return speed / 1.60934
        }
        set{
            speed = newValue * 1.60934
        }
    }
    
    //Construtor
    init(model: String) {
        self.model = model
    }
    
    func descript() -> String {
        return "Veiculo \(model), velocidade atual: \(speed)"
    }
    
    //Função de classe - Não precisa ser instânciado
    class func aler() -> String {
        return "Se beber, não digija!!"
    }
}
print(Vehicle.aler())
print(Vehicle.speedUnit)

let car = Vehicle(model: "City")
car.speed = 500
print(car.speed)
