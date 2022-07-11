import Foundation

//Protocols é nada mais Que uma lista de métodos e propriedade
//Em protocols não pode repassar valores para os parametros
//Tem so a assinatura sem inclusão dos parametros
enum Direction{
    case left
    case right
}
protocol Vehicle {
    func accelerate()
    func stop()
    
}
protocol ActionVehicle{
    func turn(direction: Direction)
    var name: String{get set}
    init(initialVehicle: String)
}
class Bike: Vehicle{
    var peddling = false
    var brakesApplied = false
    var name: String
    var direction: Direction

    required init(initialVehicle: String) {
        name = initialVehicle
        direction = .right
    }
    
    func turn(direction: Direction) {
        print("Virou")
        
    }
    
    func accelerate() {
        print("Acelerar")
        peddling = true
        brakesApplied = false
    }
    
    func stop() {
        print("Parar")
        peddling = true
        brakesApplied = false
    }
    
}
extension Bike: ActionVehicle {
    
    func turn(_ direction: Direction) {
        self.direction = direction
        print(direction)
    }
}

var bike = Bike(initialVehicle: "Caloi")
bike.accelerate()
bike.turn(.left)
print(bike.peddling)
