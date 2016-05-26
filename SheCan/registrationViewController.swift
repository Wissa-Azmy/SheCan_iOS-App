//
//  registrationViewController.swift
//  SheCan
//
//  Created by Wissa Azmy on 5/26/16.
//  Copyright © 2016 Wissa Azmy. All rights reserved.
//

import UIKit

class registrationViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var phoneField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var passConfirmField: UITextField!
    
    // Function that displays alert message to the user
    func displayAlert (title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func signUpBtn(sender: UIButton) {
        
        if nameField.text == "" || emailField.text == "" || phoneField.text == "" || passwordField.text == "" || passConfirmField.text == "" {
            
            displayAlert("Missing Field(s)", message: "All fields are required")
            
        } else if passConfirmField != passwordField {
            displayAlert("Invalid Password", message: "Password Doesn't Match")
        }
        
        
    }
    
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
