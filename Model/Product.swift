//
//  Product.swift
//  coder-swag
//
//  Created by Varun Chawla on 25/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import Foundation

struct Product {
    private var _title: String
    private var _price: String
    private var _imageName: String
    
    public var title: String {
        get {
            return _title
        }
    }
    
    public var price: String {
        get {
            return _price
        }
    }
    
    public var imageName: String {
        get {
            return _imageName
        }
    }
    
    init(title: String, price: String, imageName: String) {
        self._title = title
        self._price = price
        self._imageName = imageName
    }
    

    
    
}
