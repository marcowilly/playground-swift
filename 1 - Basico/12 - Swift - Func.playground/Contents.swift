import UIKit

//Swift - Func
/**
func nome(parametro: Tipo) -> tipoRetorno {
    codigos e comandos
    return tipoRetorno
}
*/

//Funçoes sem tipo de retorno por padrão retorna void
    func sayHello() -> Void {
        print("Hello")
    }
    sayHello()

//Função de um paramêtro retorno voi
    func say(message: String){
        print(message)
    }
    say(message: "Boa Tarde!!")

//Função de dois paramêtros retorno void
    func say(message: String, to: String){
        print(message, to)
    }
    say(message: "Boa Tarde!!", to: "Marco")

//Função de dois paramêtros retorna String
    func sayReturn(message: String, to: String) -> String{
        return message+" "+to
    }
    print(sayReturn(message: "Boa Tarde!!", to: "Marco"))

//Função que paramêtro não precisa ser digitado na chamada _
    func sum(_ a: Int,_ b: Int) -> Int{
        return a + b
    }
    print(sum(10, 20))


//Função que paramêtro não precisa ser digitado na chamada _
    func multiply(_ number1: Int,by number2: Int) -> Int{
        return number1 * number1
    }
    print(multiply(10, by: 20))

//Função que paramêtro não precisa ser digitado na chamada _
    func sum(initialValue: Int,withValues values: Int...) -> Int{
        var resultValue = initialValue
        values.forEach{value in resultValue += value}
        return resultValue
    }
    print(sum(initialValue: 10, withValues: 20, 30, 40, 50))

//Função que retorna dois valores
    import Foundation

    let studentData = "Marco Willy Azevedo Gomes:21"

    func getStudentInfo(_ data: String) -> (name: String, age: Int) {
        let info = data.components(separatedBy: ":")
        let studentName = info[0]
        let studentAge = Int(info[1])
        return (studentName, studentAge!)
    }

    let student = getStudentInfo(studentData)
    print(student.name)
    print(student.age)

//First Class Citizen (???)
    func subtract(_ a: Int,_ b: Int) -> Int{
        return a + b
    }
    func divide(_ a: Int,_ b: Int) -> Int{
        return a / b
    }
    func multiple(_ a: Int,_ b: Int) -> Int{
        return a * b
    }

//Função que recebe uma função como paramêtro
    typealias Op = (Int, Int) -> Int
    func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int {
        return operation(a, b)
    }
    let result = applyOperation(20, 10, operation: divide)

//Função que recebe uma String e retorna uma função
    func getOperation(_ operation: String) -> Op {
        switch operation{
            case "soma":
                return sum
            case "subtração":
                return subtract
            case "multiplicação":
                return multiply
            default:
                return divide
        }
    }
    var operation = getOperation("subtração")
    operation(30, 15)
