//
//  ConversionView.swift
//  Assignment5
//
//  Created by Justin Gray on 11/24/23.
//

import UIKit

class ConversionView: UIViewController {

    @IBOutlet weak var finalUSDLabel: UILabel!
   
    @IBOutlet weak var finalEuroLabel: UILabel!
    
    @IBOutlet weak var finalYenLabel: UILabel!
    
    @IBOutlet weak var finalPoundLabel: UILabel!
    
    @IBOutlet weak var finalFrancLabel: UILabel!
    
    @IBOutlet weak var yenTextLabel: UILabel!
    
    @IBOutlet weak var euroTextLabel: UILabel!
    
    @IBOutlet weak var poundTextLabel: UILabel!
    
    @IBOutlet weak var francTextLabel: UILabel!
    
    
    
    var usdAmount = 0.0
    var euroAmount = 0.0
    var yenAmonut = 0.0
    var poundAmount = 0.0
    var francAmount = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enableLables()
        
        finalUSDLabel.text = "USD Value: \(usdAmount.formatted(.currency(code: "USD")))"
        finalEuroLabel.text = "\(euroAmount.formatted(.currency(code: "EUR")))"
        finalYenLabel.text = "\(yenAmonut.formatted(.currency(code: "JPY")))"
        finalPoundLabel.text = "\(poundAmount.formatted(.currency(code:"GBP")))"
        finalFrancLabel.text = "\(francAmount.formatted(.currency(code:"SFr")))"
        // Do any additional setup after loading the view.
    }
    
    func enableLables() {
        if euroAmount <= 0 {
            euroTextLabel.isHidden = true
            finalEuroLabel.isHidden = true
        }
        else {
            euroTextLabel.isHidden = false
            finalEuroLabel.isHidden = false
        }
        if yenAmonut <= 0 {
            yenTextLabel.isHidden = true
            finalYenLabel.isHidden = true
        }
        else {
            yenTextLabel.isHidden = false
            finalYenLabel.isHidden = false
        }
        if poundAmount <= 0.0 {
            poundTextLabel.isHidden = true
            finalPoundLabel.isHidden = true
        }
        else {
            poundTextLabel.isHidden = false
            finalPoundLabel.isHidden = false
        }
        if francAmount <= 0 {
            francTextLabel.isHidden = true
            finalFrancLabel.isHidden = true
        }
        else {
            francTextLabel.isHidden = false
            finalFrancLabel.isHidden = false
        }
            
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
