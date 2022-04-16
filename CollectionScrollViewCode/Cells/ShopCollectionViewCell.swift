//
//  ShopCollectionViewCell.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 15/04/22.
//

import UIKit

class ShopCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "myCell"
    
    let nmImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        return imageView
    }()
  
    let nmNamelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.text = "Name"
        label.font = label.font.withSize(20)
        return label
    }()
    
    
    let nmPricelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "nul $"
        label.textColor = UIColor.white
        label.font = label.font.withSize(20)
        return label
    }()
    
    let nmStackview: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = UIStackView.Distribution.fillEqually
        return stackView
    }()
    
    let nmBigStackview: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        //stackView.distribution = UIStackView.Distribution.fillEqually
        return stackView
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.backgroundColor = UIColor.darkGray
        
        startFunc()
    }
    
    
    //MARK: MEthods
    func startFunc() {
        
        
         layer.cornerRadius = 10
         clipsToBounds = true
        
        startConstraints()
    }
    
    
    
    func startConstraints() {
       
        
        nmStackview.addArrangedSubview(nmNamelabel)
        nmStackview.addArrangedSubview(nmPricelabel)
        UIStackView.setAddedViewsInStackView(stackview: nmStackview, views: [nmNamelabel,nmPricelabel])
        
        nmBigStackview.addArrangedSubview(nmImageView)
        nmBigStackview.addArrangedSubview(nmStackview)
        UIStackView.setAddedViewsInStackView(stackview: nmBigStackview, views: [nmImageView,nmStackview])
        
        
        addSubview(nmBigStackview)
        nmBigStackview.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        nmBigStackview.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        nmBigStackview.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nmBigStackview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
        nmImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        
    }
}








