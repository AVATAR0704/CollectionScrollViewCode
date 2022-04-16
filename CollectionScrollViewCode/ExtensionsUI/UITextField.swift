//
//  UITextField.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 16/04/22.
//

import UIKit

extension UITextField {
    
    
  class func setTextField(text: String?, textColor: UIColor?, placeolder:  String?,keyboardType: UIKeyboardType?) -> UITextField {
        let textField = UITextField()
      textField.translatesAutoresizingMaskIntoConstraints = false
        textField.text = text ?? ""
        textField.textColor = textColor
        textField.placeholder = placeolder
        textField.textAlignment = .left
      textField.borderStyle = .roundedRect
        textField.contentMode = .scaleToFill
        textField.keyboardType = keyboardType ?? .default
        return textField
    }
    
}
