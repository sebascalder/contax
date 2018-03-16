//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/9/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate,  UINavigationControllerDelegate{
    
    var contactImage: UIImage?
    let imagePicker:UIImagePickerController = UIImagePickerController()

    
    
    // MARK: Text Field & Image Declarations
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var addOutletButton: CustomUIButton!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegates
        nameTextField.delegate = self
        phoneNumberTextField.delegate = self
        imagePicker.delegate = self
        
        // Custom Appearance
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 45
        view.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1)

        
        //Dismiss keyboard on tap
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    // MARK: Add Profile Picture Button
    @IBAction func addPhotoButton(_ sender: Any) {
        // MARK: - Alert Definition
        let optionMenu = UIAlertController(title: "Choose Source", message: "", preferredStyle: .actionSheet)
        let takePhotoAction = UIAlertAction(title: "Take Photo", style: .default, handler:
        {
            // MARK: - Take Photo Action
            (alert: UIAlertAction!) -> Void in
            self.imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            self.present(self.imagePicker, animated: true, completion: nil)
            
        })
        
        let choosePhotoAction = UIAlertAction(title: "Choose Photo", style: .default, handler:
        {
            // MARK: - Choose Photo Action
            (alert: UIAlertAction!) -> Void in
            self.imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            self.present(self.imagePicker, animated: true, completion: nil)
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:
        {
            (alert: UIAlertAction!) -> Void in
        })
        
        optionMenu.addAction(choosePhotoAction)
        optionMenu.addAction(takePhotoAction)
        optionMenu.addAction(cancelAction)
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.contactImage = pickedImage
            self.profileImage.image = pickedImage
            print("did run")
            self.resignFirstResponder()
            imagePicker.dismiss(animated: true, completion: {
                Singleton.shared.contactImage = self.contactImage!
            })
            }
        
}

    
    
    @IBAction func addContactButton(_ sender: CustomUIButton) {
        print("User attempted to add contact")
        
        // MARK: Alert
        let myAlertController: UIAlertController = UIAlertController(title: "Hey fuckface!", message: "Fill every field before saving, genius", preferredStyle: .alert)
        let cancelAction: UIAlertAction = UIAlertAction(title: "Try Again", style: .default) { action -> Void in
            //Do some stuff
        }
        
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        
        UIView.animate(withDuration: 2.0,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.20),
                       initialSpringVelocity: CGFloat(6.0),
                       options: UIViewAnimationOptions.allowUserInteraction,
                       animations: {
                        sender.transform = CGAffineTransform.identity
        },
                       completion: { Void in()  }
        )
        
        // MARK: Alert
           if nameTextField.text == "" || phoneNumberTextField.text == "" {
            myAlertController.addAction(cancelAction)
            self.present(myAlertController, animated: true, completion: nil)
            print("Required fields missing")
           } else {
            
            // MARK: Save Data
            Singleton.shared.name = nameTextField.text!
//            Singleton.shared.surname = surnameTextField.text!
            Singleton.shared.phoneNumber = phoneNumberTextField.text!
//            Singleton.shared.email = emailTextField.text!
            
            //Move to Saved View Controller
            performSegue(withIdentifier: "segueID01", sender: self)
            print("Contact saved in singleton")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("test")
        dismissKeyboard()
//        resignFirstResponder()
        return true
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
