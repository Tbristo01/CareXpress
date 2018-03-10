//
//  passwordReset.swift
//  CareXpress
//
//  Created by Tishaun Bristol on 3/10/18.
//  Copyright © 2018 Bristol Developers. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
class passwordReset: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
    
        Auth.auth().sendPasswordReset(withEmail: emailTextField.text!) { (error) in
            
            print("password reset")
       }
    }

    @IBAction func homebtnpressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home")
        self.present(vc!, animated: true, completion: nil)
    }
    
}
