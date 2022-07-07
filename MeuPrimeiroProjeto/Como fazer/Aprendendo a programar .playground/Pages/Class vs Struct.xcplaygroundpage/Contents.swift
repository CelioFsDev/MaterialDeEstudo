import Foundation

 
//A principal diferença entre os doias é Que a Classe é do tipo referencia
//Structs são objetos do tipo value.

//Exemplo Value Reference
class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var dog = Animal(name: "Dog")
var cat = dog //eu referencio dog no cat, passou a referencia do local na memoria

print(dog.name)
print(cat.name)

dog.name = "bird"
print(cat.name)

/* -------------------------------------------------------------------- */
//typer value
struct Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var dog = Animal(name: "Dog")
var cat = dog //eu copio dog no cat

print(dog.name)
print(cat.name)
dog.name = "bird"
print(cat.name)
