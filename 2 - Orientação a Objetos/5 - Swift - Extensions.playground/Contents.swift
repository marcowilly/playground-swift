import UIKit

//Swift - Orientação a Objetos

//Extensões - Extensions

var name = "Marco Willy Azevedo Gomes"

extension String {
    var vowels: [Character] {
        var list: [Character] = []
        self.forEach{character in
            switch String(character).lowercased() {
            case "a","e","i","o","u":
                list.append(character)
            default:
                break
            }
        }
        return list
    }
    
    func initials() -> String {
        return String(self.components(separatedBy: " ").map{$0.first!})
    }
}

print(name.vowels)
print(name.initials())

class Acount {
    var number: String
    var balance: Double = 0
    
    init(number: String){
        self.number = number
    }
}

extension Acount {
    convenience init(number: String, balance: Double){
        self.init(number: number)
        self.balance = balance
    }
}


let acount = Acount.init(number: "12345-6")
