//
//  ViewController.swift
//  helloWorld
//
//  Created by Sabrina Kavesh on 8/29/19.
//  Copyright © 2019 Sabrina Kavesh. All rights reserved.
//

import UIKit //apple framework that has everuthing for userinterface

class ViewController: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        messageText.text="Hello World!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

