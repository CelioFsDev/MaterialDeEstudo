//
//  SecondViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Celio Ferreira on 07/06/22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func voltar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "terceiraTela" {
            let controller = segue.destination as? ThirdViewController
            controller?.modalPresentationStyle = .fullScreen
        
            //controller?.receivedValue = "Hello !!"
        }
    }
    
    @IBAction func terceiraTela(_ sender: UIButton) {
        
    }
}
