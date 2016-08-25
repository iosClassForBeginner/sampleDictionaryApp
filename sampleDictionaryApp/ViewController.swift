//
//  ViewController.swift
//  sampleDictionaryApp
//
//  Created by Wataru Maeda on 4/8/16.
//  Copyright © 2016 wataru maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet var txtf: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        txtf.delegate = self
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        
        let dv = UIReferenceLibraryViewController(term: "\(textField.text!)")
        self.presentViewController(dv, animated: false, completion: nil)
        
        return true
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}