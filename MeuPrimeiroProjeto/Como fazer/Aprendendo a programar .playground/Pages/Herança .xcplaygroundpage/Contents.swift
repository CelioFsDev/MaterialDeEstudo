
import Foundation

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
			
