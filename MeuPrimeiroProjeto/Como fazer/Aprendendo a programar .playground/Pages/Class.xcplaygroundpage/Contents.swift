import Foundation

//Trago class e nao Struct Quando é algo Que é do mundo real e Quero trazer no meu codigo
class Person {
    var hair: String
    var age: Double
    var size: Double
    var name: String
    var lastName: String
    var insta: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }			
    
    
    //Na class precisamos dar a inicialização
    
    init(	hair: String, age: Double, size: Double, name: String, lastName: String, insta: String) {
        self.hair = hair
        self.age = age
        self.size = size
        self.name = name
        self.lastName = lastName
        self.insta = insta
    }
}

var person01 = Person(hair: "Curtp", age: 28, size: 1.86, name: "Celio",lastName: "Ferreira",insta: "@Celiofs7")
var person02 = Person(hair: "Grande", age: 17, size: 1.75, name: "Luan", lastName: "Rodrigues de Souza", insta: "@luan007gyn")
var person03 = person01

person01.lastName = "Marcos"

print(person01.fullName)
print(person02.fullName)
print(person03.fullName)

//Quando estou fazendo uma classe eu passo a referencia da memoria onde esta a classe
//Quando estou fazendo a Struct eu passo o valor
