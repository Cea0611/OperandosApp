//
//  ViewController2.swift
//  intro2
//
//  Created by ISSC_611_2023 on 22/02/23.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var a: UIButton!
    
    @IBAction func botones(_ sender: UIButton) {
        print(sender.currentTitle ?? "")
    }
    

}
