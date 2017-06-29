//
//  labelEditViewController.swift
//  Alarm-ios8-swift
//
//  Created by Akash Singh Sisodia on 30/06/17.
//  Copyright © 2017 Akash Singh Sisodia. All rights reserved.
//


import UIKit

class LabelEditViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
        self.labelTextField.delegate = self
        
        labelTextField.text = Global.label
        
        //defined in UITextInputTraits protocol
        labelTextField.returnKeyType = UIReturnKeyType.done
        labelTextField.enablesReturnKeyAutomatically = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        
        Global.label = textField.text!

        //Becuase segue push is used
        navigationController?.popViewController(animated: true)
        return false
    }

}
