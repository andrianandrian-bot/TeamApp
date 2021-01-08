//
//  passRecoveryStartVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit
import RealmSwift

class PassRecoveryStartVC: UIViewController {
    
    private var user: Results<User>!
    var foundUser: Results<User>!

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = realmUser.objects(User.self)

        nextButton.layer.cornerRadius = 10
    }
    
    @IBAction func next(_ sender: UIButton) {
        if user.filter("name == loginTF.text") != nil {
            foundUser = user.filter("name == loginTF.text")
        } else {
            // alert
        }
    }
}
