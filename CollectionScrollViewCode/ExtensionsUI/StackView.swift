//
//  StackView.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 15/04/22.
//

import UIKit

extension UIStackView {
    
    
    class func setAddedViewsInStackView(stackview: UIStackView, views: [UIView]) {
        
        if stackview.axis == .vertical {
        
        for vieew in views {
            vieew.leftAnchor.constraint(equalTo: stackview.leftAnchor).isActive = true
            vieew.rightAnchor.constraint(equalTo: stackview.rightAnchor).isActive = true
        }
            
        }else {
            for vieew in views {
                vieew.topAnchor.constraint(equalTo: stackview.topAnchor).isActive = true
                vieew.bottomAnchor.constraint(equalTo: stackview.bottomAnchor).isActive = true
            }
        }
    }
    
    
      class func setAddedViewsAndSubViewInStackView(stackview: UIStackView, views: [UIView]) {
        
        if stackview.axis == .vertical {
        
        for vieew in views {
            stackview.addArrangedSubview(vieew)
            vieew.leftAnchor.constraint(equalTo: stackview.leftAnchor).isActive = true
            vieew.rightAnchor.constraint(equalTo: stackview.rightAnchor).isActive = true
        }
            
        }else {
            for vieew in views {
                stackview.addArrangedSubview(vieew)
                vieew.topAnchor.constraint(equalTo: stackview.topAnchor).isActive = true
                vieew.bottomAnchor.constraint(equalTo: stackview.bottomAnchor).isActive = true
            }
        }
    }
    
    
    class func createStackView(axis: NSLayoutConstraint.Axis?,spacing: CGFloat?,distribution: Distribution?) -> UIStackView {
            let stackView = UIStackView()
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = axis ?? .vertical
            stackView.spacing = spacing ?? 0
            stackView.distribution = distribution ?? .fill
            return stackView
    }
}
