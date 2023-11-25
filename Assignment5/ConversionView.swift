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
        
        finalUSDLabel.text = "USD Value: \(usdAmount)"
        finalEuroLabel.text = "\(euroAmount)"
        finalYenLabel.text = "\(yenAmonut)"
        finalPoundLabel.text = "\(poundAmount)"
        finalFrancLabel.text = "\(francAmount)"
        // Do any additional setup after loading the view.
    }
    
    func enableLables() {
        if euroAmount == 0 {
            euroTextLabel.isHidden = true
            finalEuroLabel.isHidden = true
        }
        if yenAmonut == 0 {
            yenTextLabel.isHidden = true
            finalYenLabel.isHidden = true
        }
        if poundAmount == 0.0 {
            poundTextLabel.isHidden = true
            finalPoundLabel.isHidden = true
        }
        if francAmount == 0 {
            francTextLabel.isHidden = true
            finalFrancLabel.isHidden = true
        }
            
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
