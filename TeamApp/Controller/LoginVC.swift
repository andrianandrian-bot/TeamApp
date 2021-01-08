//
//  loginVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = 10
    }

}
