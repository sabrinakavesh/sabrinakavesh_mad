//
//  ViewController.swift
//  lab1
//
//  Created by Sabrina on 9/10/19.
//  Copyright © 2019 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func messageButton(_ sender: UIButton) {
        messageText.text = "Hello!"
    }
    
    @IBAction func imageButton(_ sender: UIButton) {
        imageView.image = UIImage(named: "flatirons")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

