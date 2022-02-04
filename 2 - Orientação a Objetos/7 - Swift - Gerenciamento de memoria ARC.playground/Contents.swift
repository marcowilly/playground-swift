import UIKit

//Swift - Orientção a Objetos

//Gerênciamento de memória ARC

//Semelhanças entre Class e Struct
/**
    Ambas possuem propriedades para armazenar valores
    Ambas podem implementar método para adionar mais funcionalidades
    Podem trabalhar com subscript
    Definem inicializadores para configurar seus valores iniciais
    Podem ser estendidas para expandir suas funcionalidades
    Ambas podem implemetar protocolos
 */

//Diferenças entre Class e Struct
/**
    Somente classes trabalham herança, ou seja, podem herdar e serem herdadas
    Type Casting só funciona com classes
    Possuem, além de contrutores, os métodos desconstrutores, que permitem remover da memória qualquer recurso que a classe esteja consumindo
    Permitem que eu possa ter mais de uma referência para a mesma classe
 */

//Class vs Struts
struct Student {
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    //Referência fraca - Previne (Memory Leak)
    weak var friend: Person?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    deinit {
        print("\(name) foi desalocado da memória")
    }
}

//Struct - Cria copia (Value type)
var student = Student(name: "Zeca", age: 22)
var student2 = student

student.name = "Alisson"
student.age = 33

print(student2.name, student2.age)

//=========================================//

//Class - Cria referência de memória (Reference type)
var person1: Person? = Person(name: "Felipe", age: 27)
var person2: Person?  = Person(name: "Henrique", age: 44)

person2!.friend = person1
person1!.friend = person2

print(person2!.name, person2!.age)

person2 = nil
person1 = nil

var array: [Int] = [1,1,2,131,43,4214,1,41,51,51,65,165,16,1,61,61,61]

//Copy On Write
/**
    Ao criar uma copia o swift não cria imediatamente... ele cria após modificar algum dos objetos copiados
 */
var array2 = array
array[0] = 45
