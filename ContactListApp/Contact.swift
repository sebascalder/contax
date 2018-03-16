//
//  Contact.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/13/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import Foundation
import UIKit

class Contact {
    var name: String
    var surname: String?
    var fullname: String
    var phoneNumber: [(key: String, phone: String)] = []
    var email: [(key: String, address: String)] = []
    var profilePicture: UIImage?
    let contactID: String
    
    init(name: String) {
        self.name = name
        
        //Compute full name
        if let lastname = self.surname {
            self.fullname = "\(name) \(lastname)"
        } else {
            self.fullname = self.name
        }
        
        contactID = "\(name).\(Singleton.shared.nextAvailableContactIDSuffix)"
        Singleton.shared.nextAvailableContactIDSuffix += 1
    }
    
    func addPhoneNumber(newKey: String, newPhoneNumber: String) {
        self.phoneNumber.append((key: newKey, phone: newPhoneNumber))
    }
    
    func addEmail(newKey: String, newEmail: String) {
        self.email.append((key: newKey, address: newEmail))
    }
    
    
    
}
