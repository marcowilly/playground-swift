import UIKit

//Swift - Tratamento de erros

enum loginError: Error {
    case wrongLogin, wrongPassword, noInternetConnection
}

func login(username: String, password: String) throws -> Bool {
    if checkInternetConection() {
        if !username.elementsEqual("marco"){
            throw loginError.wrongLogin
        }else if !password.elementsEqual("123456"){
            throw loginError.wrongPassword
        }else{
            return true
        }
    }else{
        throw loginError.noInternetConnection
    }
}

func checkInternetConection() -> Bool {
    return true
}

do{
    let loginResult = try login(username: "marco", password: "1234567")
} catch loginError.wrongLogin {
    print("Nome inválido!")
} catch loginError.wrongPassword {
    print("Senha inválida!")
} catch loginError.noInternetConnection {
    print("Sem conexão!")
}

//Retorna nil em caso de erro
let loginResult = try? login(username: "marco", password: "1234567")
