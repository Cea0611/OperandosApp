//
//  ViewController.swift
//  intro2
//
//  Created by ISSC_611_2023 on 22/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var entrada: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //boton.isEnabled = false
        //etiqueta.text = ":D"
    }

    @IBAction func onClick(_ sender: UIButton) {
        //sender.isEnabled = false
        print(entrada.text ?? "")
    }
    
}

