import Foundation

var players: [String] = ["celio","Marcos","Duglas","Felipe","Mario"]
if players.count < 5 {
    print("Array tem \(players.count) itens")
}else{
    print("Array é maior Que 4 ela tem \(players.count)")
}
print(players.count)

var firstPlayer = players.first
var lastPlayer = players.last
var minPlayer = players.min()
var maxPlayer = players.max()
print(firstPlayer)

//O INDEX  É DIFERENTE DO PROPRIO VALOR
print([1,2,3].first) //o index 0 pega o valor 1 e assim por diante

firstPlayer = players[0]

let numberPlayersSlice = players[1...2] //aQui estou pegando o indice 1 e 2 e colocando nesta constante
print(numberPlayersSlice)
var hasPlayer = players.contains("celio")// aQui estou vendo se contem este item na array
//add no array
players.append("Maria")
print(players)
//add no array
players += ["Claudio"]
//adiciono onde eu Quero
players.insert ("Mauricio", at: 1)

//COMO REMOVER ELEMENTOS DO ARRAY

var removeElem = players.removeLast()
print("Antes \(removeElem)")
removeElem = players.remove(at: 3)
print("Depois \(removeElem)")


var getIndexPlayer1 = players.firstIndex(of: "Marcos")

//Modo seguro de fazer unwrapped
var removePlayer: String = ""
if let getIndexPlayer = getIndexPlayer1{
     removePlayer = players.remove(at: getIndexPlayer)
}

print("Remove PLayer \(removePlayer)")



//Atualizar array
var plays: [String] = ["celio","Marcos","Duglas","Felipe","Mario"]

print("Antes de atualizar\(plays)")

plays [0] = "Célio"
print("Atualizado Célio\(plays)")

plays[0...2] = ["Pedro", "Luan", "Marcinho"]

print("Atualizado\(plays)")


//MOVENDO ELEMENTOS
//let playerNewFist = plays.remove(at: 1)
//plays.insert(playerNewFist, at: 0)
//print("Movendo luan para o lugar de pedro\(plays)")



/*-----------Dessa forma seria a forma mais usada em um app real ------------------------------------*/
var indexNewFisrt = plays.firstIndex(of: "Luan")
var indexOtherPlayer = plays.firstIndex(of:"Pedro")

if let indexNewFisrt = indexNewFisrt,  let indexOtherPlayer = indexOtherPlayer {
    plays.swapAt(indexNewFisrt, indexOtherPlayer)
}
print("Usando unwrapped com swapAt para mover Arrays\(plays)")

//Todas essas linhas de codigo acima se resumem em 1 swapAt
plays.swapAt(0, 1)
print("Movendo pedro para o lugar de luan\(plays)")


plays.sort()
print("Assim fica em ordem alfabetica \(plays)")//


// Usando for para apresentar os arrays
for playss in plays {
    print(playss)
}


//DICTIONARY

//ARRAY var plays: [String] = ["celio","Marcos","Duglas","Felipe","Mario"]

// dictionary
	
var playsDictionary: [String: Double] = ["celio": 20.0,"HenriQue": 30.0,"Joao":25.0,"Sandra": 15.0]
print(playsDictionary)
//playsDictionary = [:]// Transforma em vazio
//playsDictionary.isEmpty //Para saber se é vazio
//playsDictionary.count para contar dicionario
print(playsDictionary)

if let pointsPlayers = playsDictionary["HenriQue"] {
    print(pointsPlayers)
}

//Remove Chave e valor
//playsDictionary ["HenriQue"] = nil //remover
playsDictionary.removeValue(forKey: "HenriQue")
print(playsDictionary)

//Atualizar Dictionary
//playsDictionary["HenriQue"] = 150.0
let oldPoint = playsDictionary.updateValue(52.0, forKey: "HenriQue")

if let oldPoint = oldPoint {
    print(oldPoint)
}
print(playsDictionary)


for(playsDictionary, points) in playsDictionary {
    print("Players => \(playsDictionary) - points => \(points)")
}

for players in playsDictionary.keys {
    print("Players => \(players)")
}
