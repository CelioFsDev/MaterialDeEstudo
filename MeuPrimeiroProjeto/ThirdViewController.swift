//
//  ThirdViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Celio Ferreira on 07/06/22.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    var receivedValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // label.text = receivedValue
//        print("receivedValue => \(receivedValue)")
    }
    
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    
    @IBAction func alphaLabel(_ sender: Any) {
        label.alpha = CGFloat(alphaSlider.value)
    }
    
}
