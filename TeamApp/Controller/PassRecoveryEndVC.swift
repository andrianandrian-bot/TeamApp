//
//  PassRecoveryEndVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit
import  RealmSwift

class PassRecoveryEndVC: UIViewController {

    private var users: Results<User>!
    var foundUserEnd: Results<User>?
    
    @IBOutlet var newPass: UITextField!
    @IBOutlet var passRepeatTF: UITextField!
    @IBOutlet var setPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        users = realmUser.objects(User.self)
        
        // setPassButton.layer.cornerRadius = 10
    }

    
    @IBAction func newPassSet(_ sender: UIButton) {
        guard let newPass = foundUserEnd?[0] else { return }
        StorageManager.addNewUser(newPass)
    }
}
