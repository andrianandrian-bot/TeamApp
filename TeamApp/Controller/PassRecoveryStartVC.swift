//
//  passRecoveryStartVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit

class PassRecoveryStartVC: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.layer.cornerRadius = 10
    }
    
    @IBAction func next(_ sender: UIButton) {
    }
}
