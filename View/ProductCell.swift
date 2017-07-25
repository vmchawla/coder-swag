//
//  ProductCell.swift
//  coder-swag
//
//  Created by Varun Chawla on 25/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func configureCell(product: Product) {
        productTitle.text = product.title
        productPrice.text = product.price
        productImage.image = UIImage(named: product.imageName)
    }
}
