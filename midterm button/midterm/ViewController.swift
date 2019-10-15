//
//  ViewController.swift
//  midterm
//
//  Created by Sabrina on 10/15/19.
//  Copyright © 2019 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var commuteMiles: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var gasLabel: UILabel! //gallons to purchase
    @IBOutlet weak var gasLeftLabel: UILabel!
    @IBOutlet weak var monthlySwitch: UISwitch!
    @IBOutlet weak var modeControl: UISegmentedControl!
    @IBOutlet weak var modeImage: UIImageView!
    @IBOutlet weak var gasLeftValue: UISlider!
    
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func calculateCommute() {
        var miles:Float //miles travelled
        if(commuteMiles.text!.isEmpty){
            miles = 0.0
        }
        else{
            //dist = rate * time, time = dist/rate miles
            miles = Float(commuteMiles.text!)!
        }
        
        if modeControl.selectedSegmentIndex == 0 { //car
            if monthlySwitch.isOn{
                let speed : Float = 20
                let mpg : Float = 24
                let workDays : Float = 20
                var timeTotal : Float = 0.0 // = 20 //in miles per hour
                var gallons : Float = 0.0// = 24 //in miles per gallon
                //  var monthlyMiles=miles*workDays
                
                timeTotal = workDays * (miles / speed) //time in hours, need to mult by 20 to get total monthly commute time
                gallons = workDays * (miles / mpg) // mult by 20 to get amnt of gas per month for work miles/mpg = gal
                timeLabel.text = String(format: "%.2f", timeTotal) + " hours"
                gasLabel.text = String(format: "%.2f", gallons) + " gallons"
            }
            else {
                let speed : Float = 20
                let mpg : Float = 24
                var timeTotal : Float = 0.0 // = 20 //in miles per hour
                var gallons : Float = 0.0// = 24 //in miles per gallon
                
                timeTotal = 60 * (miles / speed) //time in minutes, need to mult by 60 go get minutes
                gallons = miles / mpg //  miles/mpg = gal
                
                if gasLeftValue.value >= gallons {
                    timeLabel.text = String(format: "%.2f", timeTotal) + " mins"
                    gasLabel.text = String(format: "%.2f", gallons) + " gallons"
                }
                else {
                    let alert=UIAlertController(title: "Warning", message: "You don't have enough gas for your commute", preferredStyle: UIAlertController.Style.alert)
                    //create a uialertacdtion objecd for the button
                    let cancelAction=UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                    alert.addAction(cancelAction) //adds the aler taction to teh alert objectd
                    let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:
                    {action in
                        self.gasLeftValue.value = gallons
                        self.calculateCommute()
                    })
                    alert.addAction(okAction)
                    present(alert, animated: true, completion: nil)
                }
            }
        }
        else if modeControl.selectedSegmentIndex == 1{ //bus
            if monthlySwitch.isOn{
                let speed : Float = 12
                let wait : Float = 10
                let workDays : Float = 20
                var timeTotal : Float = 0.0 // = 20 //in miles per hour
                let gallons : Float = 0.0// = 24 //in miles per gallon
                //  var monthlyMiles=miles*workDays
                
                timeTotal = workDays * (wait + (miles / speed)) //time in hours, need to mult by 20 to get total monthly commute time
                timeLabel.text = String(format: "%.2f", timeTotal) + " hours"
                gasLabel.text = String(format: "%.2f", gallons) + " gallons"
            }
            else {
                let speed : Float = 12
                let wait : Float = 10 //wait time, 5min each way
                var timeTotal : Float = 0.0 // = 20 //in miles per hour
                let gallons : Float = 0.0
                
                timeTotal = wait + (60 * (miles / speed))  //time in minutes, need to mult by 60 go get minutes and add wait time
                timeLabel.text = String(format: "%.2f", timeTotal) + " mins"
                gasLabel.text = String(format: "%.2f", gallons) + " gallons"
            }
        }
        else if modeControl.selectedSegmentIndex == 2 {
            if monthlySwitch.isOn {
                let speed : Float = 10
                // let mpg : Float = 24
                let workDays : Float = 20
                var timeTotal : Float = 0.0 // = 20 //in miles per hour
                let gallons : Float = 0.0// = 24 //in miles per gallon
                
                timeTotal = workDays * (miles / speed) //time in hours
                timeLabel.text = String(format: "%.2f", timeTotal) + " hours"
                gasLabel.text = String(format: "%.2f", gallons) + " gallons"
            }
            else {
                let speed : Float = 10
                // let mpg : Float = 24
                var timeTotal : Float = 0.0 // = 20 //in miles per hour
                let gallons : Float = 0.0// = 24 //in miles per gallon
                
                timeTotal = 60 * (miles / speed) //time in minutes, need to mult by 60 go get minutes
                //   gallons = miles / mpg //  miles/mpg = gal
                timeLabel.text = String(format: "%.2f", timeTotal) + " mins"
                gasLabel.text = String(format: "%.2f", gallons) + " gallons"
            }
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //calculateCommute()
    }
    
    func updateImage() {
        if modeControl.selectedSegmentIndex == 0 {
            modeImage.image=UIImage(named: "car_icon")
        }
        else if modeControl.selectedSegmentIndex == 1 {
            modeImage.image=UIImage(named: "bus_icon")
        }
        else if modeControl.selectedSegmentIndex == 2 {
            modeImage.image=UIImage(named: "bike_icon")
        }
    }
    
    func updateMonthlyCommute(){
        calculateCommute()
    }
    
    @IBAction func updateMode(_ sender: UISegmentedControl) {
        updateImage()
        calculateCommute()
    }
    
    @IBAction func gasLeft(_ sender: UISlider) {
        let gallonsLeft=sender.value
        gasLeftLabel.text="Gas in tank " + String(format: "%.0f", gallonsLeft) + " gallons"
        
    }
    
    @IBAction func updateCommute(_ sender: UISwitch) {
        updateMonthlyCommute()
    }
    
    @IBAction func calculateCommute(_ sender: UIButton) {
        //call func to calculate totals
        calculateCommute()
    }
    
    
    override func viewDidLoad() {
        commuteMiles.delegate=self
        super.viewDidLoad()
        
        //hide keyboard on tap outside,  https:\//stackoverflow.com/questions/24126678/close-ios-keyboard-by-touching-anywhere-using-swift
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

