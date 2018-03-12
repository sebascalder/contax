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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = Singleton.shared.name
        surnameLabel.text = Singleton.shared.surname
        phoneLabel.text = Singleton.shared.phoneNumber
        emailLabel.text = Singleton.shared.email
        contactPhoto.image = Singleton.shared.contactImage
        view.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        contactPhoto.clipsToBounds = true
        self.title = Singleton.shared.name
        
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
