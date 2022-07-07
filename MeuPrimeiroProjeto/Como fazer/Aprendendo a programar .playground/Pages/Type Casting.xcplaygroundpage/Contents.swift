import Foundation

class Animal {
    func makeNoise() {
        print("Durrr")
    }
}

class Cat: Animal{
    override func makeNoise() {
        print("Miauuu")
    }
}
class Dog: Animal {
    override func makeNoise() {
        print("Au aua au")
    }
}

let pets = [Dog(), Cat(),Dog(), Cat(),]

for pet in pets {
    //Type casting e usar a palavra reservada as? para ver se é oQue voce Quer ou se nao for retorna nil
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
    //Outra forma de fazer um type casting
    switch pet {
    case let dog as Dog:
        dog.makeNoise()
    case let cat as Cat:
        cat.makeNoise()
    default:
        break
    }
}
