//
//  Singleton.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/9/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import Foundation
import UIKit


class Singleton{
    static let shared = Singleton()
    var name = "" {
        didSet{
            print("Name changed")
        }
    }
    var surname = ""
    var phoneNumber = ""
    var email = ""
    var contactImage = UIImage()

}
