//
//  loginVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit
import RealmSwift

class LoginVC: UIViewController {
    
    private var users: Results<User>!
    

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        users = realmUser.objects(User.self)

        loginButton.layer.cornerRadius = 10
    }
    
    @IBAction func login(_ sender: UIButton) {
        let foundUser = users.filter("name == %@", loginTF.text!)
        
        if foundUser.isEmpty == false {
            if foundUser[0].password == passwordTF.text {
                performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                let alert = UIAlertController(title: "Incorrect password", message: "Please try again", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .cancel)
                alert.addAction(okAction)
                present(alert, animated: true)
            }
        } else {
            let alert = UIAlertController(title: "Non-existent email", message: "Please try again", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }
    
    @IBAction func unwindTiLogin(_ segue: UIStoryboardSegue) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
