import UIKit

//Swift - Orientação a Objetos

//Protocol - Protocolo
/**
    Contrato que algo que implementa, deve usar
 */

protocol ACapable {
    var hasAC: Bool {get set}
    func turnAC(on: Bool)
}

enum FuelType {
    case gasoline, etanol, diesel, flex
}

class Vehicle {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: FuelType) {
        self.brand = brand
        self.fuelType = fuelType
    }
}

class Car: Vehicle, ACapable {
    var numberOfDoors: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {
        if on {
            print("Ligando ar-condionado")
        } else {
            print("Desligando ar-condicionado")
        }
    }
}

class Bike: Vehicle {
    var cc: Int
    
    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
}

class Airplane: Vehicle, ACapable {
    var numberOfEngine: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfEngine: Int) {
        self.numberOfEngine = numberOfEngine
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {
        if numberOfEngine > 1 {
            print("Aviões mono-motores não podem ligar ar-condicionado")
        } else {
            if on {
                print("Ligando ar-condionado")
            } else {
                print("Desligando ar-condicionado")
            }
        }
    }
}
