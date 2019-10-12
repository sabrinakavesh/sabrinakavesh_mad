//
//  ViewController.swift
//  favorites
//
//  Created by Sabrina on 10/3/19.
//  Copyright © 2019 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    var user=Favorite()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){
        bookLabel.text=user.favBook
        authorLabel.text=user.favAuthor
    }

}

