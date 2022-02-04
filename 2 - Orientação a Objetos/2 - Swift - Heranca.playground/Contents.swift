import UIKit

//Swift - Orientação a Objetos

//Herança
/**
    Possibilidade de um onjeto herdar as caractéristicas  de outro objeto, ou seja, suas propriedades e métodos
 */

/**
 1 - Desgineted initializer deve chamar outro designated da sua classe mãe
 2 - Um convinience initializer deve chamar outro initializer da mesma classe
 3 - Um convinience initializer deve chamar, no final, outro designated initializer
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
}

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "Sabiá")

billy.emiteSound()
zeCarioca.emiteSound()
