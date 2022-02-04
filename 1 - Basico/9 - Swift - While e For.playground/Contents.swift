import UIKit

//Swift - While e For

/**
 Usado para percorrer de um valor ou elemento até o fim
 */

//FOR IN - (Para cada)

    //Varre de 1 até 30
    for day in 1...30 {
        print("Estou no dia \(day) de novembro")
    }

    //Varre de 1 até 5
    for _ in 1...5 {
        print("Dedique-se ao curso de desenvolvimento IOS")
    }

    let students = [
        "João Francisco",
        "Pedro Henrique",
        "Gustavo Oliveira",
        "Janaina Santos",
        "Francisco José"
    ]

    //Varre todos os elementos de uma Colection
    students.forEach{
        student in print("O aluno \(student) veio na aula de hoje.")
    }

    //Varre letra por letra
    let name = "Marco Willy Azevedo Gomes"
    for letter in name {
        print(letter)
    }

    //Varre letra por letra e retorna uma tupla
    for (index, letter) in name.enumerated() {
        print(index, letter)
    }

    let people = [
        "Paulo": 25,
        "Renata": 18,
        "Kleber": 33,
        "Eric": 39,
        "Carol": 36
    ]

    for person in people {
        print(person.key, person.value)
    }

    for (name, age) in people {
        print(name, age)
    }

//WHILE - (Enquanto)

    /**
     Executa enquanto determinada condição não é atendida
     */

    var life = 10
    while life > 0 {
        print("O Jogador está com \(life) vidas")
        life -= 1
    }

    import Foundation

    //Gera números aleatorios para a Mega Sena
    var megaSena: [Int] = []
    while megaSena.count < 6 {
        let number = Int(arc4random_uniform(60)+1)
        if !megaSena.contains(number){
            megaSena.append(number)
        }
    }
    print(megaSena.sorted())

    /**
     Não sai do laço enquanto valor do dado não for 6
        Conta quantas vezes foram necessarias para tirar esse número
     */
    var tries = 0
    var diceNumber = 0
    repeat{
        tries += 1
        diceNumber = Int(arc4random_uniform(6)+1)
    }while diceNumber != 6
    print("Você tirou 6 após \(tries) tentaivas")


    let grades = [10.0, 9.0, 8.5, 7.0, 9.5, 5.0, 1.0, 6.5, 10.0, 7.0, 8.0]
    for grade in grades {
        print(grade)
        if grade < 0.0 || grade > 10.0 {
            print("Nota inválida")
            break
        }
    }
