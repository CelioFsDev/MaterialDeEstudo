//: [Previous](@previous)

import Foundation

var greeting = "Olá"

//say é o parametro
func printGreet(say: String, name: String )  {
    print(say  + " - " + name)
}

//greeting é o argumento, Que são os valores
printGreet(say: greeting, name: "Célinho")


// _ omitindo o parametro chamando somente o argumento
func greet (_ person: String, from hometown: String){
    print("Hello \(person), from \(hometown). ")
}

//FIcando dessa forma não aparece o parametro somente o argumento
greet( "Célinho", from: "Trindade")


func printGreet (_ say: String, _ nome: String) -> String {
    return say + " - " + nome
}

var test: String = printGreet( greeting, "Célio")


//So pode passar por uma função com inout uma variavel, não pode ser valores literais, e não pode ser constante e pra fechar tem Que ter & antes da variavel
 
func printTeste(_ text:  inout String) -> String {
    print(text)
    text = "TESTEEEEE"
    return text
}

print(printTeste(&test))
print(test)
