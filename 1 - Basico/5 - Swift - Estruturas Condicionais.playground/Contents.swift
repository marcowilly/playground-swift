import UIKit

//Swift - Estruturas Condicionais

/**
 Usado para verificar se uma estrutura e verdadeira e tomar uma decisão
 */

//If Else
    var hasHeadache: Bool = false
    var humor: String = ""
    if hasHeadache {
        humor = "Muito p** da vida"
    } else {
        humor = "Felizão"
    }
    print("Humor: ",humor)

    let number = 11
    if number % 2 == 0 {
        print("O número ",number," é par")
    } else {
        print("O número ",number," é impar")
    }

//If Else If
    var temperature = 18
    var climate = ""
    if temperature <= 0 {
        climate = "Frio pra car..."
    } else if temperature < 14 {
        climate = "Está frio"
    } else if temperature < 21 {
        climate = "Clima agradavél"
    } else if temperature < 30 {
        climate = "Um pouco qunte"
    }else{
        climate = "Muito quente"
    }
    print(climate)

    let letter  = "i"
    var letterType = ""

    if letter.lowercased().elementsEqual("a") || letter.lowercased().elementsEqual("e") || letter.lowercased().elementsEqual("i") || letter.lowercased().elementsEqual("o") || letter.lowercased()
        .elementsEqual("u") {
        letterType = "Vogal"
    } else {
      letterType = "Consoante"
    }
    print("Tipo de letra: ",letterType)

//Switch
    switch letter.lowercased() {
    case "a", "e", "i", "o", "u":
        letterType = "Vogal"
    default:
        letterType = "Consoante"
    }

    let speed = 95.0
    let speedResult: String?
    switch speed {
        case 0..<20.0:
            speedResult = "Primeira marcha"
        case 20..<40.0:
            speedResult = "Segunda marcha"
        case 40..<50.0:
            speedResult = "Terceira marcha"
        case 50..<90.0:
            speedResult = "Quarta marcha"
        default:
            speedResult = "Quinta marcha"
    }
    if speedResult != nil {
        print("Velocidade ",speedResult!)
    }

//Operador Closed Range e Half-Closed Rage
    /**
     ... (Closed Range) - contagem de um número até outro
     */
    let range0_10 = 0...10

    /**
     ..< (Half-Closed Range) - contagem de um numero ate seu antecessor
    */
    let range0_9 = 0..<10

    let fisrtLetter = "e"
    let letterMessage: String?
    switch fisrtLetter.lowercased() {
        case "a"..."f":
            letterMessage = "Você está no primeiro trimestre"
        case "g"..."l":
            letterMessage = "Você está no segundo trimestre"
        case "m"..."r":
            letterMessage = "Você está no terceiro trimestre"
        default:
            letterMessage = "Você está no quarto trimestre"
    }
    if letterMessage != nil {
        print(letterMessage!)
    }
