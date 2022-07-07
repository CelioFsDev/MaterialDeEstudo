import Foundation

//enum MoveDirection {
//    case forward
//    case back
//    case left
//    case right
//}

// Pode ser feito assim ou assim

enum MoveDirection {
    case forward, back, left, right
}

var move = MoveDirection.left

switch move {
case .forward:
    print("Movemos para frente")
case .back:
    print("Movemos para tras")
case .left:
    print("Movemos para esQuerda")
case .right:
    print("Movemos para direita")
}

func doMove(_ movement: MoveDirection){
    switch move {
    case .forward:
        print("Movemos para frente")
    case .back:
        print("Movemos para tras")
    case .left:
        print("Movemos para esQuerda")
    case .right:
        print("Movemos para direita")
    }
}

doMove(.left)


//Outro exemplo com numeros
enum MoveDirection2: Int {
   case forward = 1
   case back
   case left
   case right
}
var move2: MoveDirection2 = .left
print("Valor escolhido é \(move2.rawValue)")


//Enum de Valores associados
enum Medir {
    case peso(Double)
    case idade(Int)
    case tamanho(width: Double, height: Double)
}

//var medir = Medir.idade(29)
var medir =  Medir.tamanho(width:19, height: 20)


var medir2 = Medir.peso(91.5)

func printEnum( _ medir: Medir) {
    switch medir {
    case .idade(let age):
        print("Minha idade é : \(age)")
    case .peso(let weight):
        print("Meu peso é: \(weight)")
    case .tamanho(let size):
        print("Minha altura é : \(size.height), meu comprimento é \(size.width) ")
    }
}

printEnum(medir)
printEnum(medir2)
