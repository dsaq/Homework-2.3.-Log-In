//
//  ViewController.swift
//  Homework 2.3. Log In
//
//  Created by Павел Прохоренко on 27.05.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        userNameTF.tag = 0
        userNameTF.returnKeyType = .next
       
        userPasswordTF.delegate = self
        userPasswordTF.tag = 1
        userPasswordTF.enablesReturnKeyAutomatically = true
        userPasswordTF.returnKeyType = .done
        
        userPasswordTF.tag = 2
        
        
        
    }
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        
        guard let logInButton = seque.destination as? WelcomeViewController else {return}
        
        logInButton.userName = userNameTF.text

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
}

    extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userPasswordTF.becomeFirstResponder()

        return true
    }
}


