import UIKit

//SWift Tipos de dados (LINGUAGEM TIPADA)

/**
 Int - Números sem ponto flutuante (Ex: 1000) - 32 bits
 Float - Números com ponto flutuante (Ex: 1.5) - 32 bits
 Double - Números com ponto flutuante (Ex: 1.5555) - 64 bits
 Character - Letra unica - 8 bits
 String -  Vários Characters - Variable bits
 Bool - Verdadeiro ou falso - 1 bit
 */

/**
 Na lingugem swift não precisamos colocar o tipo de dado... Ela faz a inferêcia automaticamente.
 */

//Boleanos (Bool)
var isFistTime: Bool = true
var likesFruits = true

//Inteiros (Int) Signed(+-)
var temperatura = -12

//UInt //Unsigned Int (+)
var age: UInt = 39

//Float
var dolar: Float = 5.3

//Double
var crazyNumber = 1000.85444785

//Character
var gender: Character = "M" //"F"
var enter: Character = "\n"
var aspas: Character = "\""

//String
var newGender = "M"
var stundentName = "Marco Willy Azevedo Gomes"
print(stundentName)
/**
 Concatenar String +
 */
let firstName = "Marco"
let secondName = "Willy"
var fullName = firstName + " " + secondName
print("Concatenado: " + fullName)
/**
 Interpolar String \( )
 */
fullName = "\(firstName) \(secondName) - Idade: \(age) anos"
print("Interpolado: " + fullName)
print("A variável fullName tem \(fullName.count) caracteres")
let text = """
Olá, espero que esteja gostando do curso.
Ainda tem muito mais pela frente.
        Fim!!!
"""
print(text)
