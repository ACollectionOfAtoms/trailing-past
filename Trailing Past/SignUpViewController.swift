//
//  SignUpViewController.swift
//  Trailing Past
//
//  Created by Adam Hernandez on 12/1/15.
//  Copyright © 2015 Adam. All rights reserved.
//

import AVFoundation
import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet var emailTextField : UITextField!
    @IBOutlet var passwordTextField : UITextField!
    let signer = SignUpModel(email: "", password: "")
    
    @IBAction func signUp(sender : AnyObject) {
        signer.email = emailTextField.text! as String
        signer.password = passwordTextField.text! as String
        signer.gotsIt()
    }
    
    @IBAction func signUpWithFB(sender : AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
    }
    
    override func viewDidLoad() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.Portrait]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}