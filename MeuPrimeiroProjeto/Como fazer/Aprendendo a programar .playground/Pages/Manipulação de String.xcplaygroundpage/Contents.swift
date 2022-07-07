import Foundation

var greeting = "Hello"

print(greeting.count)

let index = greeting.startIndex
let index2 = greeting.index(before: greeting.endIndex)

let char = greeting[index]
let char2 = greeting[index2]
print(char)
print(char2)

/*--------------------------------------------*/
//Manipulação de String

let name = "Célio Ferreira"
let spaceIndex = name.firstIndex(of: " ")!
let firstName = name [..<spaceIndex]
print(firstName)
let lastName = name [name.index(after: spaceIndex)...]
print(lastName)
