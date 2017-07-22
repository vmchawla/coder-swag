    //
//  CategoryCell.swift
//  coder-swag
//
//  Created by Varun Chawla on 22/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        self.categoryImg.image = UIImage(named: category.imageName)
        self.categoryTitle.text = category.title
    }
}
