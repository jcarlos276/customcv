//
//  RoundBorderedView.swift
//  PersonalCV
//
//  Created by Juan Carlos Guillén Castro on 9/12/18.
//

import UIKit
@IBDesignable
class RoundBorderedView: UIView {
    
    @IBInspectable var color: UIColor = UIColor.clear
    @IBInspectable var radius: CGFloat = 0.0
    
    override func awakeFromNib() {
        self.layer.cornerRadius = radius != 0.0 ? radius : self.bounds.height/1.9
        self.layer.borderWidth = 2
        self.layer.borderColor = color.cgColor
    }
    
}
