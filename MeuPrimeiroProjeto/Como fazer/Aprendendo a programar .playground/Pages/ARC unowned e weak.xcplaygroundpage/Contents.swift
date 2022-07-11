import Foundation
//Tanto unowned e weak são palavras reservadas para referencia fraca para deslocamento de memoria
class Recipe {
    let title: String
    //unowned sempre vai existir a referencia
    unowned let cooker: Cooker
    //Para criar a variavel com a palavra reservada weak tem Que ser opcinal nem sempre vai existir esse
    weak var chef: Chef?
    
    
    init(title: String, cooker: Cooker) {
        self.title = title
        self.cooker = cooker
    }
    //lazy variavel preguiçosa so vai ser executada Quando ela for chamada
    lazy var description: () -> String	= { [weak self   ] in
        "(\(self?.title) by \(self?.cooker.name)"
    }
    
    deinit {
        print("Goodbye Recipe \(title)")
    }
}
class Chef {
    let name: String
    var repipes: [Recipe] = []
    
    init(name: String){
        self.name = name
    }
    deinit {
        print("GoodBye Chef \(name)!")
    }
}
class Cooker {
    let name: String
    var recipes: [Recipe] = [ ]
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Goodbye Cooker \(name)")
    }
}
let description: () -> String
do {
    let cooker = Cooker(name: "HenriQue")
    let recipe = Recipe(title: "Gerenciando Memoria", cooker: cooker)
    
  description = recipe.description

}
print(description())
