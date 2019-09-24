//
//  ViewController.swift
//  lab3
//
//  Created by Sabrina on 9/22/19.
//  Copyright © 2019 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nationalParkImage: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var colorSwitch: UISwitch!
    
    
    
    func updateImage(){
        if imageControl.selectedSegmentIndex == 0{
            imageLabel.text="Rocky Mountain National Park"
            nationalParkImage.image=UIImage(named: "rockies")
        }
        else if imageControl.selectedSegmentIndex == 1{
            imageLabel.text="Glacier National Park"
            //checks for this specific text and not textbox area
            nationalParkImage.image=UIImage(named: "glacier")
        }
        else if imageControl.selectedSegmentIndex == 2{
            imageLabel.text="Olympics National Park"
            //checks for this specific text and not textbox area
            nationalParkImage.image=UIImage(named: "olympics")
        }
    }
    
    func updateCaps(){
        if capitalSwitch.isOn{
            imageLabel.text = imageLabel.text?.uppercased()
        } else {
            imageLabel.text = imageLabel.text?.lowercased()
        }
    }
    
    func updateColor(){
        if colorSwitch.isOn{
            imageLabel.textColor = UIColor.blue
        }
        else {
            imageLabel.textColor = UIColor.black
        }
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    
    @IBAction func changeFontColor(_ sender: UISwitch) {
        updateColor()
//        let fontColorUIColor = UIColor.blue
//        imageLabel.textColor=UIColor.blue
    }
    
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize = sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        imageLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

