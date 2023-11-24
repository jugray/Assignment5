//
//  ViewController.swift
//  Assignment5
//
//  Created by Justin Gray on 11/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdField: UITextField!
    
   
    var usdValue : Double = 0.0
    
    var conversion = ConversionLogic()  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func euroSwitch(_ sender: UISwitch) {
        conversion.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func yenSwitch(_ sender: UISwitch) {
        conversion.setYenSwitch(sender.isOn)
    }
    
    @IBAction func poundSwitch(_ sender: UISwitch) {
        conversion.setPoundSwitch(sender.isOn)
    }
    
    @IBAction func francSwitch(_ sender: UISwitch) {
        conversion.setFrancSwitch(sender.isOn)
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        usdValue = NumberFormatter().number(from: usdField.text!)?.doubleValue ?? 0.0
        
        if usdValue != 0.0 {
            conversion.convert(usdValue)
        }
        
    }
}

