import Foundation

struct User {
    let firstName: String
    let lastName: String
    var email: String
    var isActive: Bool
    var age: Int
    
    //Essa é um exemplo de propriedades computadas pois pega dados de 2 variaveis armazenadas e retorna
    var fullName: String {
        return "\(firstName) \(lastName)\n"
    }
    
    func printFullName() {
        print(user.fullName)
    }
    
   mutating func activeUser(){
        isActive = true
    }
}

var user = User(firstName: "Célio", lastName: "Silveira", email: "Email@gmail.com", isActive: false, age: 29  )

print(user.firstName)
print(user.fullName)

//Para chamar a função
user.printFullName()

user.email = "Meu@email.com"
print(user.email)

user.activeUser()
print(user.isActive)

//Struct é diferente das classes pQ ela passa valor por tipo valor não por tipo referencia
