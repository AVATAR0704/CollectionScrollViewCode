//
//  UIViewController.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 16/04/22.
//

import UIKit

    extension UIViewController {
        
        func hideKeyboardWhenTappedAround() {
            let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }
        
        @objc func dismissKeyboard() {
            view.endEditing(true)
        }
        
    }

