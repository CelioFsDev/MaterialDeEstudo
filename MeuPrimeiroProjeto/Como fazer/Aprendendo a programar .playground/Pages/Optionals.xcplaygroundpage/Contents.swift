//: [Previous](@previous)

import Foundation
import UIKit

var greeting: String
var age: Int
var result: Int?

greeting = "Hello, world"
age = 29

result = Int(greeting)

if let result = result {
    result * 2
}else {
    "Sem Valor"
}

class ViewController: UIViewController {
    var label: UILabel?
}

var optionalString: String? = "Hello"

//Assim e ele tenta desembrulhar caso não consiga manda o valor Default depois do ??
var haveResult = optionalString ?? "Hey"

if let unwrapped = optionalString {
    haveResult = unwrapped
} else {
    haveResult = "Hey"
}
print()

// guard let
func getPerson( person: String?) {
    guard let name = person else {
        print("No person!")
        return
    }
    print("Hello, \(name)")
}
//getPerson(person: "Célio")
getPerson(person: nil)


var imageView = UIImageView()
imageView.image = UIImage(named: "nomeDaImage")

//Colocando
let imageSize = imageView.image?.size
