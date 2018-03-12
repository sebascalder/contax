//
//  CustomUILabel.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/9/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import UIKit

class CustomUILabel: UILabel {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.font = UIFont(name: "AvenirNext-Medium", size: 17)
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
