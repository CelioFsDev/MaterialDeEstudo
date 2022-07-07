//: [Previous](@previous)

import Foundation

// Int, Double, String, Bool, Boolean

let yes: Bool = true
let no: Bool = false

// == Comparação
var oneEQualTwo = (1 == 2)
print("1 é igual a 2 ? \(oneEQualTwo)")

// != não, diferente
var noOneEQualTwo = ( 1 != 2)

// ! valor de inversão troca o false pelo true ou true pelo false
var isTrue = !( 1 != 2)

// < menor, > maior Que
let isOneGreeterThanTwo = ( 8 > 9)
let isOneLessThanTwo = (8 < 9 )


//<= menor ou igual, >= maior ou igual
let isOneGreeterThanTwo2 = ( 8 >= 9)
let isOneLessThanTwo2 = (8 <= 9 )

// &&, and, é
let a = true && true
let b = true && false
let c = false && false

// || or, ou
let d = false || false
let e = true || true
let f = true || false

//toggle() altera o conteudo da variavel booleana esse toggle() muda o resultado de true para false ou vise versa	
var switchState = true
switchState.toggle()
switchState.toggle()
