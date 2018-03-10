//
//  ViewController.swift
//  CareXpress
//
//  Created by Tishaun Bristol on 3/8/18.
//  Copyright © 2018 Bristol Developers. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signInButtonPressed(_ sender: Any) {
        
        self.Login()
    }
    
  
    func Login ()
    {
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!)
            { (user, error) in
                if error != nil {
                    
                    print("error")
                }
                else
                {
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "landingscreen")
                    self.present(vc!, animated: true, completion: nil)
                }
            }
    }
    
    
    @IBAction func passwordReset(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "passwordReset")
        self.present(vc!, animated: true, completion: nil)
        
        
    }
    
    @IBAction func createNewAccount(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newAccount")
        self.present(vc!, animated: true, completion: nil)
        
        
    }
    
    
}

