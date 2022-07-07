//Encapsulamento uQando vc Quer proteger um codigo de ser reescrito
//private Acessivel apenas para o tipo de definição todos os tipos e extensoes aninhados nesse tupo dentro do mesmo arQuivo de origem
//fileprivate: Acessivel de QualQuer lugar dentro do arQuivo de origem no uQal esta definido.
//internal: Acessivel de QualQuer lugar dentro do modulo no Qual esta definido. Este nivel é o nivel de acesso padrao. Se você não escrever nada, é isso Que voce obtem.
//public: Acessivel de QualQuer lugar Que importe o modulo
//open: O mesmo Que public, com a capacidade adicional concedida para substituir o codigo em outro modulo

import Foundation

class Person {
    var hair: String
    var age: Double
    /*-----------------------------------------------------------------------------*/
    //privete pode ser usado somente na classe e na herença nao pode ser usado fora
    private var size: Double
    /*----------------------------------------------------------------------------*/
    var name: String
    var lastName: String
    var insta: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    
    //Na class precisamos dar a inicialização
    
    init(    hair: String, age: Double, size: Double, name: String, lastName: String, insta: String) {
        self.hair = hair
        self.age = age
        self.size = size
        self.name = name
        self.lastName = lastName
        self.insta = insta
    }
}
//Student é sub class de Person ou classe derivada, Person e superclass de Student ou classe base
class Student: Person{
    var grade: Double
    var course: String
    
    //Na class precisamos dar a inicialização
    init(grade: Double, course: String, hair: String, age: Double, size: Double, name: String, lastName: String, insta: String) {
        self.grade = grade
        self.course = course
        
        super.init(hair: hair, age: age, size: size, name: name, lastName: lastName, insta: insta)
    }
    
    convenience init(grade:Double, course: String) {
        self.init(grade: grade, course: course, hair: "", age: 0, size: 0, name: "Célio", lastName: "Ferreira", insta: "")
    }
    func getGrade() -> Double {
        return grade
    }
    
}

var student01 = Student(grade: 8.9, course: "iOS", hair: "Longo", age: 28, size: 1.86, name:"Célio", lastName: "Silveira", insta: "@Celiofs7")
print(student01.fullName)

var student02 = Student.init(grade: 10.0, course: "Swift")
print(student02.fullName)
print("Sua nota é \(student02.getGrade())")
            

class Account: Person {
    private var balance: Double = 0.0
    func getDeposito(value: Double) -> Double {
        return value + balance
    }
    func setBalance(value: Double) {
        balance = value
    }
}
var myAccount = Account(hair: "Curto", age: 29, size: 1.86, name: "Mario", lastName: "SiQueira", insta: "@Mario222")
myAccount.setBalance(value: 100.00)
var myValue = myAccount.getDeposito(value: 50)
print(myValue)
