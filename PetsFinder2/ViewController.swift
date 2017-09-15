//
//  ViewController.swift
//  PetFinder
//
//  Created by Xianlin Hu on 9/13/17.
//  Copyright © 2017 Xianlin Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var contactNumTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // handle the text field's user input through delegate callbacks
        // todoInput.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard
        textField.resignFirstResponder()
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //todoList.text = todoInput.text
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // dismiss the picker if the user cancelled
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
            
        // set photoImageView to display the selected image
        photoImageView.image = selectedImage
            
        // dismiss the picker
        dismiss(animated: true, completion: nil)
    }

    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // hide keyboard when tap the photo
        contactNumTextField.resignFirstResponder()

        // define a image picker controller
        let imagePickerController = UIImagePickerController()

        // allow photos to be picked from photoLibrary
        imagePickerController.sourceType = .photoLibrary
        // make sure viewController is notified when the user picks an image
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
}

