import UIKit

//Swift - Dictionary

/**
 Coleção NÃO ORDENADA de objetos d mesmo tipo, que são acessados através de uma chave
 */
var states = [
    "AC":"Acre",
    "AL":"Alagoas",
    "AP":"Amapá",
    "AM":"Amazonas",
    "BA":"Bahia",
    "CE":"Ceará",
    "DF":"Distrito Federal",
    "ES":"Espirito Snato"
]

var stundsGrade: [String: Double] = [:]

//Insere valor no dictionary
states["GO"] = "Goiaz"

//Modifica valor no dicionary e retorna valor anterior
let olgGo = states.updateValue("Goiás", forKey: "GO")

if olgGo != nil {
    print(olgGo!)
}

let myState = states["MG"]

if let state = myState {
    print(state)
}

//Remove chave - valor do dictionary
states["GO"] = nil
print(states)

//Retorna quantidade de itens no dictionary
print(states.count)

//Retorna todas as chaves do dictionary
let keys = Array(states.keys)
print(keys)

//Retorna todos os valores do dictionary
let values = Array(states.values)
print(values)
