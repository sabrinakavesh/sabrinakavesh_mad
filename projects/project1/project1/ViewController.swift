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
    @IBOutlet weak var vacNoun1: UITextField!
    @IBOutlet weak var vacNoun2: UITextField!
    @IBOutlet weak var vacPnoun1: UITextField!
    @IBOutlet weak var vacGame1: UITextField!
    @IBOutlet weak var vacPnoun2: UITextField!
    @IBOutlet weak var vacVerb1: UITextField!
    @IBOutlet weak var vacVerb2: UITextField!
    @IBOutlet weak var vacPnoun3: UITextField!
    @IBOutlet weak var vacVerb3: UITextField!
    @IBOutlet weak var vacNoun3: UITextField!
    @IBOutlet weak var vacPlant1: UITextField!
    @IBOutlet weak var vacBody1: UITextField!
    @IBOutlet weak var vacPlace1: UITextField!
    @IBOutlet weak var vacVerb4: UITextField!
    @IBOutlet weak var vacNum1: UITextField!
    @IBOutlet weak var vacPnoun4: UITextField!
    
    @IBOutlet weak var vacationView: UITextView!
    
    @IBOutlet weak var hakAdj1: UITextField!
    @IBOutlet weak var storyControl: UISegmentedControl!
    
    @IBAction func clearFieldsButton(_ sender: UIButton) {
       //reload/clear text field contents
        let allTextField = getTextfield(view: self.view)
        for txtField in allTextField
        {
           txtField.text = ""
        }
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func hideTextFields(){
        let allTextField = getTextfield(view: self.view)
        for txtField in allTextField
        {
            txtField.isHidden = true
        }
    }
    
    func switchStory(){
        if storyControl.selectedSegmentIndex == 0 {
            vacAdj1.isHidden=false
            vacAdj2.isHidden=false
            vacAdj3.isHidden=false
            vacNoun1.isHidden=false
            vacNoun2.isHidden=false
            vacPnoun1.isHidden=false
            vacGame1.isHidden=false
            vacPnoun2.isHidden=false
            vacVerb1.isHidden=false
            vacVerb2.isHidden=false
            vacPnoun3.isHidden=false
            vacVerb3.isHidden=false
            vacNoun3.isHidden=false
            vacPlant1.isHidden=false
            vacBody1.isHidden=false
            vacPlace1.isHidden=false
            vacVerb4.isHidden=false
            vacNum1.isHidden=false
            vacPnoun4.isHidden=false
        }
        else if storyControl.selectedSegmentIndex == 1 {
            hakAdj1.isHidden=false
        }
        else if storyControl.selectedSegmentIndex == 2 {
            
        }
    }
    
    func createStory() {
//        var vacationBlanks = [var]()
//        vacationBlanks.append
        //var adj = vacAdj1.text!
//        for count in 0...vacationBlanks {
//            if count.text!.isEmpty {
//                count.text! = " "
//            }
//        }
//
//        if vacAdj1.text!.isEmpty {
//            vacationView.text = "adjective"
//        }
//        else {
//           // for count in 0... vacationBlanks{
//
//            }
        
        //create story from user inputs
        //       story from: http:\//www.madlibs.com/content/uploads/2016/04/VacationFun_ML_2009_pg15.pdf
        if storyControl.selectedSegmentIndex == 0 {
           
            vacationView.text = "A vacation is when you take a trip to some " + String(vacAdj1.text!) + " place with your " + String(vacAdj2.text!) + " family."

                vacationView.text += " Usually you go to some place that is near a/an " + String(vacNoun1.text!) + " or up on a/an " + String(vacNoun2.text!) + ". A good vacation place is one where you can ride " + String(vacPnoun1.text!) + " or play " + String(vacGame1.text!) + " or go hunting for " + String(vacPnoun2.text!) + ". "

                vacationView.text += "I like to spend my time " + String(vacVerb1.text!) + " or " + String(vacVerb2.text!) + ". When parents go on a vacation, they spend their time eating three " + String(vacPnoun3.text!) + " a day, and fathers play golf, and mothers sit around " + String(vacVerb3.text!) + ". "

                vacationView.text += "Last summer, my little brother fell in a/an " + String(vacNoun3.text!) + " and got poison " + String(vacPlant1.text!) + " all over his " + String(vacBody1.text!) + ". My family is going to go to (the) " + String(vacPlace1.text!) + ", and I will practice " + String(vacVerb4.text!) + ". "

                vacationView.text += "Parents need vacations more than kids because parents are always very " + String(vacAdj3.text!) + " and because they have to work " + String(vacNum1.text!) + " hours every day all year making enough " + String(vacPnoun4.text!) + " to pay for the vacation."
            
//            vacationLabel.text="A vacation is when you take a trip to some " + String(vacAdj1.text!) + " place with your " + String(vacAdj2.text!) + " family. Usually you go to some place that is near a/an " + String(vacNoun1.text!) + " or up on a/an " + String(vacNoun2.text!) + ". "
//
        }
    }
    
    @IBAction func changeStory(_ sender: UISegmentedControl) {
        hideTextFields()
        switchStory()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        createStory() //currently updates after each entry, do so only shows when done
    }
    
//     func textFieldShouldClear(_ textField: UITextField) -> Bool{
//        textField.resignFirstResponder()
//        return true
//    }
//
    
    
    override func viewDidLoad() {
        vacAdj1.delegate=self
        vacAdj2.delegate=self
        vacAdj3.delegate=self
        vacNoun1.delegate=self
        vacNoun2.delegate=self
        vacPnoun1.delegate=self
        vacGame1.delegate=self
        vacPnoun2.delegate=self
        vacVerb1.delegate=self
        vacVerb2.delegate=self
        vacPnoun3.delegate=self
        vacVerb3.delegate=self
        vacNoun3.delegate=self
        vacPlant1.delegate=self
        vacBody1.delegate=self
        vacPlace1.delegate=self
        vacVerb4.delegate=self
        vacNum1.delegate=self
        
    //covacPnoun4de to get all textfields, func getTExtField is below as well https:\//stackoverflow.com/questions/40908471/how-to-get-all-the-textfields-from-a-view-in-swift/40909069
        let allTextField = getTextfield(view: self.view)
        for txtField in allTextField
        {
            txtField.isHidden = true
        }
        
        super.viewDidLoad()
 
        //hide keyboard on tap outside,  https:\//stackoverflow.com/questions/24126678/close-ios-keyboard-by-touching-anywhere-using-swift
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    @objc func getTextfield(view: UIView) -> [UITextField] {
        var results = [UITextField]()
        for subview in view.subviews as [UIView] {
            if let textField = subview as? UITextField {
                results += [textField]
            } else {
                results += getTextfield(view: subview)
            }
        }
        return results
    }

    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

