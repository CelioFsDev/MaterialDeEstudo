import UIKit

//implicito o tipo String
var greeting = "Hello, playground"

//Explicito o tipo Int
var number: Int = 10

//Explicito o tipo String
var name: String = ""

//So consigo fazer pQ são do mesmo tipo String
greeting = name

var count: Double = 5.77

//Peguei o valor de um double e converti para um int assim não da erro
number = Int(count)
print(number)

//IndiQuei Que count2 é um double
var count2 = 3 as Double
print(type(of: count2))

//OPERADORES
/*
 += Incremento
 -= Decremento
 + Soma
 - Subtrai
 * Multiplica
 / Divide
 
 Logico
 Operador && esse e esse vai ser esse
 Operador || esse ou esse vai ser esse
 Operador ! de negação var eCoca = true
    !eCoca = false ele nega a variavel
 
 Operador de comparação == ele compara variavel
 var numero = 13
 var numero2 = 13
 numero == numero2 Está perguntando se é igual o primeiro com o segundo
 
 Operador de diferente !=
 numero != numero2 true
 ele ve se é diferente ou não
 */
//Compara o max e o minimo para saber Qual é o max e o min
max(100, 200)
min(100, 200)

2 + 3//soma
10 - 5//Diminuir
2 * 5//Multiplicar
10 / 3//Dividir
128 % 10 //restante
