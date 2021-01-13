//
//  passRecoveryStartVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit
import RealmSwift

class PassRecoveryStartVC: UIViewController {
    
    private var users: Results<User>!
    var foundUser: Results<User>!

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        users = realmUser.objects(User.self)

        nextButton.layer.cornerRadius = 10
    }
    
    @IBAction func next(_ sender: UIButton) {
        let foundUser = users.filter("name == %@", loginTF.text!)
        
        if foundUser.isEmpty == false {
            self.foundUser = foundUser
            performSegue(withIdentifier: "nextRec", sender: nil)
        } else {
            let alert = UIAlertController(title: "Non-existent email", message: "Please try again", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? PassRecoveryEndVC else { return }
        dvc.foundUserEnd = foundUser
    }
}
