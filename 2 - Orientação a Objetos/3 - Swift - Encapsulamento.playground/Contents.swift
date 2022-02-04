import UIKit

//Swift - Orientação a Objetos

//Encapsulamento
/**
    Técnica que permite que detalhes internos do funcionamento de uma classe permaneçan inacessíveis a outros objetos
 
     Open e Public
     Permite que entidades sejam usadas dentro de qualquer arquivo dentro do seu módulo a também de um arquivo de outro que importe aquele modulo.
 
    Internal
    Permite que entidades sejam usadas dentro de qualquer arquivo do seu próprio módulo, mas não em arquivos de módulo fora. É o tipo padrão
 
    FilePrivate
    Restringe o uso de uma entidade somente dentro do seu próprio arquivo
 
    Private
    Restringe o uso de uma entidade somente dentro da sua próporia declaração e a extensão daquela declaração que etejam no mesmo arquivo
 */

class CreditCard {
    
    let number: String
    let limit: Double
    private var invoiceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double){
        self.number = number
        self.limit = limit
    }
    
    final func makePurchase(off value: Double, isInternational: Bool) -> Bool {
        let debit = isInternational ? value * (1 + iof/100) : value
        let finalValue = invoiceValue + debit
        if finalValue > limit {
            return false
        }else{
            invoiceValue = finalValue
            return true
        }
    }
    
    func getInvoice() -> Double {
        return invoiceValue
    }
}

let creditCard = CreditCard(number: "1234-4567-8910-1234", limit: 5000)
creditCard.makePurchase(off: 1500, isInternational: true)
print(creditCard.getInvoice())


class DebitCreditCard: CreditCard {
    
    private var balence: Double = 0
    
    func getBalence() -> Double {
        return balence
    }
    
    func makeTransaction(of value: Double){
        balence += value
    }
}

let debitCreditCard = DebitCreditCard(number: "1234-4567-8910-1234", limit: 5000)
debitCreditCard.makeTransaction(of: 500)
debitCreditCard.makeTransaction(of: -100)
print(debitCreditCard.getBalence())
