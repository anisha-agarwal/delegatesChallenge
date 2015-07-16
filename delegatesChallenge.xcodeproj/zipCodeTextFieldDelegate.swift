//
//  zipCodeTextFieldDelegate.swift
//  delegatesChallenge
//
//  Created by ANISHA AGARWAL on 7/15/15.
//  Copyright (c) 2015 Anisha Agarwal. All rights reserved.
//

import Foundation
import UIKit

class zipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text as NSString;
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        if newText.length > 5 {
            return false
        }
        
        // Create an `NSCharacterSet` set which includes everything *but* the digits
        let inverseSet = NSCharacterSet(charactersInString:"0123456789").invertedSet
        
        // At every character in this "inverseSet" contained in the string,
        // split the string up into components which exclude the characters
        // in this inverse set
        let components = string.componentsSeparatedByCharactersInSet(inverseSet)
        
        // Rejoin these components
        let filtered = join("", components)
        
        // If the original string is equal to the filtered string, i.e. if no
        // inverse characters were present to be eliminated, the input is valid
        // and the statement returns true; else it returns false
        return string == filtered
    }
    
}
