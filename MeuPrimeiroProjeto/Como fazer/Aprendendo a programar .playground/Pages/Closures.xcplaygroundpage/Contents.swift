import Foundation

//Pode ser feito a mesma coisa dessas maneiras  Closures
var multiplyAnomynous = {(a: Int, b:  Int) -> Int in
    return a * b
}
multiplyAnomynous = {(a: Int, b:  Int) -> Int in a * b }
multiplyAnomynous = {(a, b) -> Int in a * b }
multiplyAnomynous = {$0 * $1 }

let result = multiplyAnomynous(2,5)

var plays: [String] = ["celio","Marcos","Duglas","Felipe","Mario"]
//Pego cada letra do nome e ordeno pelo Que tem mais letra para oQue tem menos
let stringLong = plays.sorted {
    $0.count > $1.count
}
print("\(stringLong) \n")
//Pega e retorna cada nome
plays.forEach{
    print("\($0)")
}

//Retorna os nomes com letras maiusculas
let mapName = plays.map { $0.uppercased()}
print("\n\(mapName)\n")

//filtra os nomes Que contem mais de o tanto de letras Que eu definir
let contadorDeLetra = 5
let filterName = plays.filter {$0 .count > contadorDeLetra}
print("\(filterName)")
