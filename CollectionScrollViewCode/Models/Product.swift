//
//  Product.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 15/04/22.
//

import Foundation

class Product {
    var name: String? = ""
    var price: String? = ""
    var imageStr: String? = ""
    
    init(name:String?, price: String?,imageStr: String?) {
        self.name = name
        self.price = price
        self.imageStr = imageStr
    }
}
