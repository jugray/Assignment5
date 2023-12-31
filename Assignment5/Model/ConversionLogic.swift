//
//  ConversionLogic.swift
//  Assignment5
//
//  Created by Justin Gray on 11/24/23.
//

import Foundation

struct ConversionLogic{
    
    var enableEuro = true
    var enableYen = true
    var enablePound = true
    var enableFranc = true
    var usdValue : Double = 0.0
    
    let euroConversion = 0.91
    let yenConversion = 149.46
    let poundConversion = 0.79
    let francConversion = 0.88
    
    var finalEuro = 0.0
    var finalYen = 0.0
    var finalPound = 0.0
    var finalFranc = 0.0
    
    
    mutating func setEuroSwitch(_ switchIn : Bool) {
        if switchIn {
            enableEuro = true
        }
        else {
            enableEuro = false
        }
    }
    
    mutating func setYenSwitch(_ switchIn : Bool) {
        if switchIn {
            enableYen = true
        }
        else {
            enableYen = false
        }
    }
    
    mutating func setPoundSwitch(_ switchIn : Bool) {
        if switchIn {
            enablePound = true
        }
        else {
            enablePound = false
        }
    }
    
    mutating func setFrancSwitch(_ switchIn : Bool) {
        if switchIn {
            enableFranc = true
        }
        else {
            enableFranc = false
        }
    }
    
    mutating func convert(_ usdValueIn : Double) {
        if enableEuro {
            finalEuro = usdValueIn * euroConversion
        }
        else {
            finalEuro = -1
        }
        
        if enableYen {
            finalYen = usdValueIn * yenConversion
        }
        else {
            finalYen = -1
        }
        
        if enablePound {
            finalPound = usdValueIn * poundConversion
        }
        else {
            finalPound = -1
        }
        
        if enableFranc {
            finalFranc = usdValueIn  * francConversion
        }
        else {
            finalFranc = -1
        }
        
        
        print(finalEuro)
        print(finalYen)
        print(finalPound)
        print(finalFranc)
    }
    
    func getEuros() -> Double {
        return finalEuro
    }
    
    func getYen() -> Double {
        return finalYen
    }
    
    func getPound() -> Double {
        return finalPound
    }
    
    func getFranc() -> Double {
        return finalFranc
    }
    
    
    
    
}
