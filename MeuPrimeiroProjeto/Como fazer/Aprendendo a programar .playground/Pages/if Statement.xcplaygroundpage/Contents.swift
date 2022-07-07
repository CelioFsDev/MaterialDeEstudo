import Foundation

let yes: Bool = true
let no: Bool = false

if yes {
    print("É True")
}else {
    print("É falsa")
}

var name = "Célio"
var secondName = "Ferreira"

if name == "Célio" && secondName == "Ferreira"{
    print("Meu nome é \(name) \(secondName)")
}else {
    print("Não sei Qual meu nome")
}

//if ternario
var x = name == "Célio" ? "Célio" : "Ferreira"
//Se a variavel nome for igual a "Célio" printa "Celio" se nao for printa "Ferreira"
print(x)

let day = 10

if day > 9 {
    print("Dia maior Que 9 ")
} else if day < 2 {
    print("Dia menor Que 9 ")
}else {
    print("Não sei Que dia é")
}

