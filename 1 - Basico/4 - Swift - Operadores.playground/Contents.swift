import UIKit

//Swift - Operadores

/**
 Operador Unário - Aplicado somente a um operando
 Operador Binário - Aplicado a dois operandos
 Operador Ternário - Aplicado a três operandos
 */

/**
 Operador de atribuição unica : =
 Operador de atribuição multipla (...) = (...)
 */

//Operador Binário
    let gravity = 9.81
    var (name, age) = ("Eric", 39)
    print(name)
    print(age)

    /**
     Operadores aritiméticos - Essas operações so podem acontecer quando valores tiverem tipos iguais
        Soma + , Subtração - , Multiplicação * , Divisão / , Módulo %
        Precedência: * / + -
     */

    //Soma - Resultado amontante de 2 ou mais valores
    var num1 = 45
    var num2 = 56
    let sum = num1 + num2

    //Subtração - Resultado de valor diminuido de outros valores
    let minus = num1 - num2

    //Multiplicação - Resultado de valor x vezes outros valores
    let multiply = minus * num1

    //Divisão - Resultado final de um valor repartido x vezes
    let division = multiply / minus

    //Módulo - Resto de uma divisão
    let module = num2 / num1

    /**
     Operadores Compostos - Atribui e opera ao mesmo tempo
        += Valor atual mais valor a direita
        -= Valor atual menos valor a direita
        /= Valor atual dividindo pelo valor a direita
        %= Valor atual modulo valor a direita
     */

    //num1 = num1 + num2
    num1 += num2

    //num1 = num1 - num2
    num1 -= num2

    //num1 = num1 / num2
    num1 /= num2

    //num1 = num1 % num2
    num1 %= num2

    /**
    Operadores de comparação - Fazem comparação entre valores (sempre retornam um Bool)
        > Maior que
        < Menor que
        >= Maior ou igual
        <= Menor ou igual
        == Igualdade
        != Desigualdade
     */

    // >
    let grade1 = 7.5
    let grade2 = 9.8
    var betterTThanFriend = grade1 > grade2

    // <
    var grade = 8.9
    let minimumGrade = 7.0
    var reproved  = grade < minimumGrade

    // <=
    reproved = grade <= minimumGrade

    // >=
    betterTThanFriend = grade1 >= grade2

    // ==
    let teacherName = "Eric"
    let studentName = "eric"
    var sameNames = teacherName.uppercased() == studentName.uppercased()

    // !=
    sameNames = teacherName.uppercased() != studentName.uppercased()

    /**
     Operadores Lógicos - Fazem verificações sobre um ou mais operandos, retornam Bool
        && - Operador E
        || - Operador OU
     */

    //&&
    let boughtBanana: Bool = true
    var boughtTomato: Bool = true
    var boughtApple = false
    var isHappy = boughtApple && boughtBanana && boughtTomato

    //||
    let likesMeat = false
    let likesBeer = true
    var canInviteBarbecue = likesBeer || likesMeat

//Operador Unário

    /**
     Operador de negação (NOT): !
        Esquerdo: Negação
        Direito: Desembrulhar
     */
    var knowSwift = false
    var enrolSwiftCourse = !knowSwift

//Operador Ternário

    /**
     Opera sobre três operandos
        ? true : false
     */
    grade = 7.95
    var gradeResult = (grade >= 7.0) ? "Aprovado" : "Reprovado"

    let number = 11
    let type = (number % 2 == 0) ? "Par" : "Impar"


