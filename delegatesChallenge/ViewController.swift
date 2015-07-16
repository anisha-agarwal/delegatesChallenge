//
//  ViewController.swift
//  delegatesChallenge
//
//  Created by ANISHA AGARWAL on 7/15/15.
//  Copyright (c) 2015 Anisha Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var toggleTextField: UITextField!
    @IBOutlet weak var toggleButton: UISwitch!
    
    let zipCodeDelegate = zipCodeTextFieldDelegate()
    let dollarDelegate = dollarTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipCodeTextField.delegate = zipCodeDelegate
        self.dollarTextField.delegate = dollarDelegate
        self.toggleTextField.delegate = self
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        println(self.toggleButton.on)
        return self.toggleButton.on
        
    }
    
    


}

