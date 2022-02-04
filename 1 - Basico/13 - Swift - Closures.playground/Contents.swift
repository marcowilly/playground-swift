import UIKit

//Swift - Closure (Anônima) Lambdas

/**
 É um pedaço de auto contido de códigos e funcionalidades que podem ser repassados e utilizados em seu código
 */

//Fução que recebe uma função anônima
    typealias Op = (Int, Int) -> Int
    func calculate(_ a: Int, _ b: Int, operation: Op) -> Int {
        return operation(a, b)
    }
    calculate(10, 20, operation: {(a: Int, b: Int) -> Int in
        return a * b
    })
    calculate(10, 20, operation: {a, b in
        return a * b
    })
    calculate(10, 20, operation: {
        return $0 * $1
    })
    calculate(10, 20, operation: {$0 * $1})
    calculate(10, 20, operation: *)
    calculate(10, 20) {$0 * $1}

import Foundation
var invalidNames = [
    "  Alessandra   ",
    "   Jéssica  ",
    "    Anderson  ",
    "   Demys  ",
    "  Harley  "
]
//Map
let correctedNames = invalidNames.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correctedNames)

let upperCassedNames = correctedNames.map({$0.uppercased()})
print(upperCassedNames)

let britos = correctedNames.map({$0 + " Brito"})
print(britos)

//Filter
let newNames = correctedNames.filter({$0.count < 7})
print(newNames)

//Reduce
let sumLetters = correctedNames.reduce(0, {$0 + $1.count})
