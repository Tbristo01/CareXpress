//
//  newAccount.swift
//  CareXpress
//
//  Created by Tishaun Bristol on 3/10/18.
//  Copyright © 2018 Bristol Developers. All rights reserved.
//

import UIKit

class newAccount: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func createAccountPressed(_ sender: Any) {
        
    }
    
    @IBAction func homeButtonPressed(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home")
        self.present(vc!, animated: true, completion: nil)
        
    }
    
}
