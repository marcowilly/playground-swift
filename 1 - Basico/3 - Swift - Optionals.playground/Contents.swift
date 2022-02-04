import UIKit

//Swift - Optionals ?

/**
 Manipular objeto que ainda não está pronto para ser usado.
 */

var rg: Int = 3476228
var driverLicense: Int?

print(driverLicense)

driverLicense = 64578288

/**
 (unwrap) ! - Desembrulha um optional de maneira insegura pode causar crash
 */
print("A minha carteira de motorista é: ", driverLicense!)

/**
 Optional Binding - Desembrula um optional de maneira segura if let{ }
 */
if let driverL = driverLicense {
    print("A minha carteira de motorista é: ", driverL)
}else{
    print("Não possuo carteira de motorista")
}

var adressNumber = Int("100A")

if let adressNumber = adressNumber{
    print(adressNumber)
}

//Nil coalising operator (Operator de coalscência nula) ??
let number: String = "578"
let adressNumber2 = Int(number) ?? 0

//Implicit unWrapped Optionals
var name: String!
if name != nil{
    print(name)
}
