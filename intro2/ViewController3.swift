//
//  ViewController3.swift
//  intro2
//
//  Created by ISSC_611_2023 on 22/02/23.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var texto2: UITextField!
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var texto1: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func suma(_ a:Double, _ b:Double)->Double {
        return a + b
    }

    @IBAction func calcular(_ sender: Any) {
        let t1:Double = Double(texto1.text!) ?? 0.0
        let t2:Double = Double(texto2.text!) ?? 0.0
        
        let res = suma(t1,t2)
        
        resultado.text = String(res)
    }

}

