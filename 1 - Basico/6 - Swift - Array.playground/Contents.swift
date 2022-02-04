import UIKit

// Swift - Array

/**
 Coleção ORDENADA de objeto do mesmo tipo
 */

var names = ["Fulano", "Ciclano", "Beltrano"]
var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]

var loteryNumbers: [Int] = []
var phoneNumbers: [String]?

var ages: [UInt8] = [9, 7, 12, 15, 22] //UInt8

var guests = ["João", "Paula", "Alexandre", "Patrícia", "Sandra"]

//Retorna a quantidade de itens no array
print(guests.count)

//Retorna se o array é vazio
print(guests.isEmpty)

//Retorna segundo elemento do array
print(guests[1])
guests[0] = "Henrique"
print(guests)

//Remove primeiro e segundo elemento adicionando valores abaixo
guests[0...1] = ["Eric", "Roberto", "Joana", "Bia"]
print(guests)

//retorna primeiro elemento do array
if !guests.isEmpty {
    print(guests.first!)
}

//Retorna ultimo elemento do array
if !guests.isEmpty {
    print(guests.last!)
}

//Adiciona elementos após ultimo índice
guests += ["Sandra", "Elena", "Elen"]
guests.append("Edina")

//Adiciona elemento em índice específico
guests.insert("Romildo", at: 2)
print(guests)

//Verificica se array contem elemento
if guests.contains("Elena") {
    print("A Elena foi convidada!!")
}

//Remove primeiro elemento
guests.removeFirst()

//Remove segundo elemento
guests.removeLast()

//Remove elemento de acordo com o index
guests.remove(at: 2)

//Remove todos
guests.removeAll()
