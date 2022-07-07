//: [Previous](@previous)

import Foundation

let rawString = #"Teste com raw String \(sem interpolação). Esse é um dos ussos"#
print(rawString)

//Não altera a string ele puxa um dado bruto,
let interpolacao = " Assim pega a interpolação"
let rawStringComInterpolacao = #"Teste com raw String \#(interpolacao)."#
print(rawStringComInterpolacao)
