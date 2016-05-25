//
//  ViewController.swift
//  SheCan
//
//  Created by Wissa Azmy on 5/25/16.
//  Copyright © 2016 Wissa Azmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!

    func displayAlert (title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // To Dismiss the keyboard when Tapping anywhere on the screen
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        // Delegate Fields that will activate the hide Keyboard function when return key touched
        self.usernameField.delegate = self
        self.passwordField.delegate = self
    }
    
    // This func is called by the Tap constant above when the screen is tapped.
    func DismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoginBtn(sender: AnyObject) {
        if usernameField.text == "" || passwordField.text == "" {
            displayAlert("Missing Field(s)", message: "Username and password are required")
        }
    }

    @IBAction func signupBtn(sender: AnyObject) {
    }
}

