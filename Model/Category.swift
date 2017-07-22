//
//  Category.swift
//  coder-swag
//
//  Created by Varun Chawla on 22/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import Foundation

struct Category {
    private var _title: String
    private var _imageName:String!
    
    public var title: String {
        get {
            return _title
        }
    }
    
    public var imageName: String {
        get {
            return _imageName
        }
    }
    
    init(title: String, imageName: String) {
        self._title = title
        self._imageName = imageName
    }
    
}
