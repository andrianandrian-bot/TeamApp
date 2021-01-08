//
//  SignUpVC.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var userAvatar: UIImageView!
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var passTF: UITextField!
    @IBOutlet var repeatPassTF: UITextField!
    @IBOutlet var createAccountButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        createAccountButton.layer.cornerRadius = 10
    }
    @IBAction func setAvatar(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera", style: .default) { _ in
            self.chooseImagePicker(source: .camera)
        }
        camera.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
        let gallery = UIAlertAction(title: "Gallery", style: .default) { _ in
            self.chooseImagePicker(source: .photoLibrary)
        }
        gallery.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
        let cancel = UIAlertAction(title: "Cancel", style: .destructive)
        
        actionSheet.addAction(camera)
        actionSheet.addAction(gallery)
        actionSheet.addAction(cancel)
        
        present(actionSheet, animated: true)
    }
    
    @IBAction func createAccount(_ sender: UIButton) {
        let avatar = userAvatar.image
        let avatarData = avatar?.pngData()
        let newUser = User(name: nameTF.text,
                           avatar: avatarData,
                           email: emailTF.text!,
                           password: passTF.text!)
        StorageManager.addNewUser(newUser)
    }
}

extension SignUpVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func chooseImagePicker(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            present(imagePicker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        userAvatar.image = info[.editedImage] as? UIImage
        userAvatar.contentMode = .scaleToFill
        userAvatar.clipsToBounds = true
        dismiss(animated: true)
    }
}
