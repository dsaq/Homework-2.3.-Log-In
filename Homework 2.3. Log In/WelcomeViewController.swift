//
//  WelcomeViewController.swift
//  Homework 2.3. Log In
//
//  Created by Павел Прохоренко on 27.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        userNameLabel.text = userName
    }
}
