//
//  SignUpViewController.swift
//  WordList
//
//  Created by Vlad on 19.07.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailLable: UILabel!
    @IBOutlet weak var passwordLable: UILabel!
    @IBOutlet weak var confirmPasswordLable: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBAction func signUpButton(_ sender: Any) {
        checkUserInfo()
    }
    
    func checkUserInfo(){
        if passwordTextField.text == confirmPasswordTextField.text{
            createUser(email: emailTextField.text!, password: passwordTextField.text!)
        }
        else if passwordTextField.text != confirmPasswordTextField.text{
            let alert = UIAlertController(title: "Error", message: "Confirm your passsword correctly", preferredStyle: UIAlertController.Style.alert);alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        
    }
    
    func setData(){
        emailLable.text = "Email"
        passwordLable.text = "Password"
        confirmPasswordLable.text = "Confirm pasword"
        signUpButton.layer.cornerRadius = 5
    }

}
