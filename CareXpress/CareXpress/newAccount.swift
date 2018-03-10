//
//  newAccount.swift
//  CareXpress
//
//  Created by Tishaun Bristol on 3/10/18.
//  Copyright © 2018 Bristol Developers. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class newAccount: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func createAccountPressed(_ sender: Any) {
        
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!   )
        { (user, error) in
            if error != nil {
                
                print("Something went wrong")
            }
            else
            {
                print("User is created ")
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "landingscreen")
                self.present(vc!, animated: true, completion: nil)
        
            }
        }

    
    }
    
        
    @IBAction func homeButtonPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home")
        self.present(vc!, animated: true, completion: nil)
        
    }
   
}
