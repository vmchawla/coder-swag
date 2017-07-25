//
//  DataService.swift
//  coder-swag
//
//  Created by Varun Chawla on 22/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [Category(title: "SHIRTS", imageName: "shirts.png"),
                              Category(title: "HOODIES", imageName: "hoodies.png"),
                              Category(title: "HATS", imageName: "hats.png"),
                              Category(title: "DIGITAL", imageName: "digital.png")]
    
    private let hats = [Product(title: "Devlsopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
                        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
                        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
                        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")]
    
    private let hoodies = [Product(title: "Devlsopes Logo Hoodie Grey", price: "$18", imageName: "hoodie01.png"),
                           Product(title: "Devlsopes Logo Hoodie Red", price: "$18", imageName: "hoodie02.png"),
                           Product(title: "Devlsopes Hoodie Grey", price: "$18", imageName: "hoodie03.png"),
                           Product(title: "Devlsopes Hoodie Black", price: "$18", imageName: "hoodie04.png")]
    
    private let shirts = [Product(title: "Devlsopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
                          Product(title: "Devlsopes Logo Shirt Light Grey", price: "$18", imageName: "shirt02.png"),
                          Product(title: "Devlsopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
                          Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
                          Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
