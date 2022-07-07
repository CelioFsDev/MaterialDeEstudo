import Foundation

class Person {
    var hair: String
    var age: Double
    var size: Double
    var name: String
    var lastName: String
    var insta: String

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

extension Person {
    func getFullName () -> String {
        return "\(name) \(lastName)"
    }
}
var person = Person(hair: "Longo", age: 24, size: 1.86, name: "Cleidio", lastName: "SeioQy", insta: "@Cleidio")

print(person.getFullName())


extension String {
    func replace(target: String, withString: String) -> String{
        return self.replacingOccurrences(of: target, with: withString)
                                         
    }
    
    var length: Int {
        get{
            return self.count
        }
    }
    
}
let newString = "The old String".replace(target: "Old", withString: "New")
print(newString)
print(newString.length)
