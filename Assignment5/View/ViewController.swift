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
        usdValue = NumberFormatter().number(from: usdField.text!)?.doubleValue ?? -1.0
        
        if usdValue >= 0.0 {
            usdField.textColor = .black
            conversion.convert(usdValue)
            self.performSegue(withIdentifier: "toConversion", sender: self)

        }
        else {
            usdField.text = "Invalid Entry!"
            usdField.textColor = .red
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toConversion" {
            let navigation = segue.destination as! ConversionView
            navigation.usdAmount = usdValue
            navigation.euroAmount = conversion.getEuros()
            navigation.yenAmonut = conversion.getYen()
            navigation.poundAmount = conversion.getPound()
            navigation.francAmount = conversion.getFranc()
        }
    }
}

