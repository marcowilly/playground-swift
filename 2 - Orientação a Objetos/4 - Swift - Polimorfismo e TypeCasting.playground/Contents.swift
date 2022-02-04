import UIKit

//Swift - Orientação a Objetos

//Polimorfismo
/**
    Capacidade de um objeto modificar os comportamentos herdados do objeto pai, alterando suas propriedades e métodos
 */

    class Animal {
        let color: String
        let gender: Character
        let breed: String
        
        init(color: String, gender: Character, breed: String){
            self.color = color
            self.gender = gender
            self.breed = breed
        }
        
        func emiteSound(){
            print("...")
        }
    }

    class Dog: Animal {
        func run() {
            print("O cachorro está correndo")
        }
        
        override func emiteSound() {
            print("au au au")
        }
    }

    class Bird: Animal {
        
        let canFly: Bool
        
        //Designeted Initializer
        init(color: String, gender: Character, breed: String, canFly: Bool){
            self.canFly = canFly
            super.init(color: color, gender: gender, breed: breed)
        }
        
        //Convience Initializer
        convenience init(color: String, breed: String) {
            self.init(color: color, gender: "M", breed: breed, canFly: true)
        }
        
        func fly() {
            if canFly {
                print("O pássaro está voando")
            }else{
                print("Este passaro não voa")
            }
        }
        
        override func emiteSound() {
            print("🎶 🎶 🎶 🎶 🎶")
        }
    }

    class Duck: Bird {
        
        init(color: String, gender: Character, breed: String) {
            super.init(color: color, gender: gender, breed: breed, canFly: true)
        }
        
        override func emiteSound() {
            print("Quack, Quack, Quack")
        }
    }

    let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
    let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
    let maleBird = Bird(color: "Black", breed: "Sabiá")
    let donald = Duck(color: "Branco", gender: "M", breed: "Disney")

    billy.emiteSound()
    zeCarioca.emiteSound()

//TypeCasting

/**
    Tratar um tipo como se fosse outro tipo
 */

    let animals: [Animal] = [
        Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
        Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
        Dog(color: "Marrom", gender: "M", breed: "PitBull"),
        Duck(color: "Brando", gender: "F", breed: "Silvestre"),
        Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
    ]

    print("============================")
    animals.forEach{animal in
        animal.emiteSound()
        
        //Maneira forçada de typeCasting
        if animal is Dog {
            (animal as! Dog).run()
        }
        
        if animal is Duck {
            (animal as! Duck).fly()
        }
                
        //Maneira segura de typeCasting
        if let dog = animal as? Dog {
            dog.run()
        }
        
        switch animal {
            case let dog as Dog:
                dog.run()
            case let bird as Bird:
                bird.fly()
            default:
                break
        }
    }
