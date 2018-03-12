//
//  CustomTableViewCell.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/12/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func awakeFromNib() {
        //Customize appearance
        layer.frame.size.height = 150
        profileImage.layer.cornerRadius = 45
        profileImage.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    
}
