//
//  Umumiy.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 15/04/22.
//

import UIKit


extension UIView {
    
    func ichigaOl(view: UIView,constant: CGFloat) {
        
        view.leftAnchor.constraint(equalTo: leftAnchor,constant: constant).isActive = true
        view.topAnchor.constraint(equalTo: topAnchor,constant: constant).isActive = true
        view.rightAnchor.constraint(equalTo: rightAnchor,constant: -constant).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -constant).isActive = true
    }
    
}





