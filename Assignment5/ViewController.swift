//
//  ViewController.swift
//  Assignment5
//
//  Created by Justin Gray on 11/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdField: UITextField!
    
    var enableEuro = true
    var enableYen = true
    var enablePound = true
    var enableFranc = true
    var usdValue : Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func euroSwitch(_ sender: UISwitch) {
        if sender.isOn {
            enableEuro = true
        }
        else {
            enableEuro = false
        }
    }
    
    @IBAction func yenSwitch(_ sender: UISwitch) {
        if sender.isOn {
            enableYen = true
        }
        else {
            enableYen = false
        }
    }
    
    @IBAction func poundSwitch(_ sender: UISwitch) {
        if sender.isOn {
            enablePound = true
        }
        else {
            enablePound = false
        }
    }
    
    @IBAction func francSwitch(_ sender: UISwitch) {
        if sender.isOn {
            enablePound = true
        }
        else {
            enablePound = false
        }
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        
    }
}

