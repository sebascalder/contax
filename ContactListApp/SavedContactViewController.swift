//
//  SavedContactViewController.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/9/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import UIKit

class SavedContactViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var contactPhoto: UIImageView!
    
    @IBOutlet weak var saveButton: CustomUIButton!
    @IBAction func saveActionButton(_ sender: Any) {
        
        // MARK: CORE DATA. Needs to be implemented.
        //Pass singleton values to core data
        print("Saving procedure")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Show confirmation text
        nameLabel.text = Singleton.shared.name
        phoneLabel.text = Singleton.shared.phoneNumber
        contactPhoto.image = Singleton.shared.contactImage
        view.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        contactPhoto.clipsToBounds = true
        self.title = Singleton.shared.name //View Title with name
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
