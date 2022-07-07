import Foundation

var count = 2

while count  < 10{
    print(count)
    count += 1    
}

var count2 = 1

while true {
    print(count2)
    count2 += 1
    
    if count2 == 11 {
        break
    }
}


//A diferença Que o reapeat vai executar a ação, ou seja entra no bloco pra depois ver e fazer a condição de loop
repeat {
    print(count)
    count += 1
}while count < 7

let range = 0...4
print(range)

for tabuada in 0...10 {
    print(tabuada * 2)
}

var sum = 0
for _ in 0..<count{
    var c = count + 1
    sum += c
}
print(sum)

let valor = 4
switch valor {
case 0 :
    print("0")
case 2 :
    print("olha é 2")
case 3...7 :
    print("entre 3 e 7")
default:
    print("default")
}

var text = ""
switch valor {
case 0 :
    text = "0"
case 2, 3, 4:
    text = "resposta está aQui"
case 5...7 :
    text = "entre 3 e 7"
default:
    text = "default"
}
print(text)
