//
//  dollarTextFieldDelegate.swift
//  delegatesChallenge
//
//  Created by ANISHA AGARWAL on 7/15/15.
//  Copyright (c) 2015 Anisha Agarwal. All rights reserved.
//

import Foundation
import UIKit

class dollarTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    var currentString = ""
    
    // Create a current string when given a number
    func formatCurrency(#string: String, textField: UITextField) {
        println("format \(string)")
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        var numberFromField = (NSString(string: currentString).doubleValue)/100
        textField.text = formatter.stringFromNumber(numberFromField)
        println(textField.text )
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        switch string {
        case "0","1","2","3","4","5","6","7","8","9":
            currentString += string
            println(currentString)
            formatCurrency(string: currentString, textField: textField)
        default:
            var array = Array(string)
            var currentStringArray = Array(currentString)
            if array.count == 0 && currentStringArray.count != 0 {
                currentStringArray.removeLast()
                currentString = ""
                for character in currentStringArray {
                    currentString += String(character)
                }
                formatCurrency(string: currentString, textField: textField)
            }
        }
        return false
    }
    
}