//
//  ViewController.swift
//  tipCalculator
//
//  Created by Sabrina on 9/26/19.
//  Copyright © 2019 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
    @IBOutlet weak var checkAmount: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var tipDue: UILabel!
    @IBOutlet weak var totalDue: UILabel!
    @IBOutlet weak var totalDuePerPerson: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func updatePeople(_ sender: Any) {
        if peopleStepper.value == 1 {
            peopleLabel.text = "1 person"
        }
        else {
            peopleLabel.text = String(format: "%.0f", peopleStepper.value) + " people"
        }
        updateTipTotals()
    }
    
    func updateTipTotals() {
        var amount:Float //check amount
        var pct:Float //tip percentage
        
        if checkAmount.text!.isEmpty {
            amount = 0.0	
        }
        else {
            amount = Float(checkAmount.text!)!
//            amount = Float(checkAmount.text!) as! Float //as! Float forces to be a float or have to force unwrap (!)
        }
        if tipPercent.text!.isEmpty {
            pct = 0.0
        }
        else {
            pct = Float(tipPercent.text!)!/100
        }
        
        let numberOfPeople = peopleStepper.value
        let tip=amount*pct
        let total=amount+tip
        var personTotal : Float = 0.0 //specify float so itsn not a double
        if numberOfPeople > 0 {
            personTotal = total / Float(numberOfPeople)
        }
        else {
            //create uialert controlelr object
            let alert=UIAlertController(title: "Warning", message: "The number of people must be greater than 0", preferredStyle: UIAlertController.Style.alert)
            //create a uialertacdtion objecd for the button
            let cancelAction=UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(cancelAction) //adds the aler taction to teh alert objectd
            let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:
                {action in
                self.peopleStepper.value = 1
                self.peopleLabel.text? = "1 person"
                self.updateTipTotals()
            })
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        } //end else
        
        //format results as currency
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle=NumberFormatter.Style.currency
        //set number style
        tipDue.text=currencyFormatter.string(from: NSNumber(value: tip))
        //returns formatted stirng
        totalDue.text=currencyFormatter.string(from: NSNumber(value: total))
        totalDuePerPerson.text=currencyFormatter.string(from: NSNumber(value: personTotal))
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateTipTotals()
    }
    
    override func viewDidLoad() {
        checkAmount.delegate=self
        tipPercent.delegate=self  //self references the class its in
        // Do any additional setup after loading the view.
        //initialization you want only done one time, do before super
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
        }
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

