//
//  CustomUIButton.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/9/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import UIKit

class CustomUIButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //Normal State
        self.backgroundColor = UIColor(red: 50/255, green: 150/255, blue: 255/255, alpha: 1)
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 5
//        self.clipsToBounds = true
        self.frame.size.height = 35
        self.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 16)
        self.layer.shadowOffset = CGSize(width: 1, height: 2)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.1
        
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
