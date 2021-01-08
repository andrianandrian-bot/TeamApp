//
//  PassRecoveryEndVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit

class PassRecoveryEndVC: UIViewController {

    @IBOutlet var newPass: UITextField!
    @IBOutlet var passRepeatTF: UITextField!
    @IBOutlet var setPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setPassButton.layer.cornerRadius = 10
    }

    
    @IBAction func newPassSet(_ sender: UIButton) {
    }
}
