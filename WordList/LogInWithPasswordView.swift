//
//  LogInWithPasswordView.swift
//  WordList
//
//  Created by Vlad on 09.05.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogInWithPasswordView: UIViewController {
    var password: String = ""
    var email: String = ""
    var flag: Bool!
    
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    @IBAction func LogInButton(_ sender: Any) {
        email = emailTextField.text ?? ""
        password = passwordTextField.text ?? ""
        
        authentication(email: email, userPassword: password, callback: { (flag) in
            self.flag = flag
            if flag == true{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "LessonsViewController") as! ViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else{
                let alert = UIAlertController(title: "Error", message: "Email or password is wrong", preferredStyle: UIAlertController.Style.alert);alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        })
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        
    }
    
    func setData(){
        logInButton.layer.cornerRadius = 5
        emailLbl.text = "E-mail"
        passwordLbl.text = "Password"
        
    }

}