//
//  ViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Celio Ferreira on 06/06/22.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: UIButton) {
//        label.text = "Mudando minha variavel"
//        button.setTitle("Clicado", for: .normal)
        performSegue(withIdentifier: "second", sender: nil)
        
    }
    @IBAction func unwindToFist(segue: UIStoryboardSegue){
        
    }

}

