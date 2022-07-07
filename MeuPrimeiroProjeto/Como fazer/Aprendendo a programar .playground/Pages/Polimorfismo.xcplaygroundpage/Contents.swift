//Polimorfismo nada mais é Que 	 agente poder alterar um funcionamento, oQue um metodo tem oQue ele faria
// 2 tipos de polimorfismo
//1: Em tempo de compilação
//2: Em tempo de execução é uma sobrecarga de metodo
import Foundation

func addNums(a: Int, b: Int) -> Int{
    return a + b
}
func addNums(a: Int, b: Int, c: Int) -> Int{
    return a + b + c
}
print(addNums(a:10, b: 20))
print(addNums(a: 10, b: 20, c: 30))

//Classe mae Quando eu altero o scopo dela eu estou fazendo polimorfismo

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

var animal: Animal = Cat()
animal.makeNoise()

animal = Dog()
animal.makeNoise()

animal = Animal()
animal.makeNoise()
