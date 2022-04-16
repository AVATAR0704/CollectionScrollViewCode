//
//  UILabel.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 16/04/22.
//

import UIKit

extension UILabel {
    
   class func setLabell(text:String?,color: UIColor?,alignment: NSTextAlignment?,font: CGFloat?) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text ?? "label"
        label.textColor = color ?? .label
        label.textAlignment = alignment ?? .left
        label.font = label.font.withSize(font ?? 25)
        return label
    }
    
    
}
