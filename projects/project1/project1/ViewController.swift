//
//  ViewController.swift
//  project1
//
//  Created by Sabrina on 9/24/19.
//  Copyright © 2019 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var vacAdj1: UITextField!
    @IBOutlet weak var vacAdj2: UITextField!
    @IBOutlet weak var vacAdj3: UITextField!
    @IBOutlet weak var vacationView: UITextView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func createStory() {
        var vacationArray = [String]()
        if vacAdj1.text!.isEmpty {
            vacationView.text = "adjective"
        }
        else {
            for count in 0... vacationBlanks{
                
            }
            vacationView.text = "A vacation is when you take a trip to some " + String(vacAdj1.text!) + " place."
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        createStory()
    }
    
    override func viewDidLoad() {
        vacAdj1.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

