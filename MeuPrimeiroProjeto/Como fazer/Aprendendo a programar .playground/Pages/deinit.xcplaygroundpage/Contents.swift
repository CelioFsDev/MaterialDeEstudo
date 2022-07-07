import Foundation
class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
   
    //remove da memoria		
    deinit {
        print("\(name) is removed")
    }
}

var dog: Animal? = Animal(name: "dog")
print (dog! .name)
dog = nil
