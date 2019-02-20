//
//  RoundShadowedView.swift
//  PersonalCV
//
//  Created by Juan Carlos Guillén Castro on 9/12/18.
//

import UIKit

class RoundShadowedView: UIView {
    
    @IBInspectable var radius: CGFloat = 0.0
    
    override func awakeFromNib() {
        self.layer.cornerRadius = radius != 0.0 ? radius : self.bounds.height/3
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        self.layer.shadowRadius = 2.5
        self.layer.shadowColor = UIColor.lightGray.cgColor
    }
    
}
