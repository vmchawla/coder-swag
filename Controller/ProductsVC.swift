//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Varun Chawla on 25/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        

        // Do any additional setup after loading the view.
    }

    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            cell.configureCell(product: products[indexPath.row])
            return cell
        }
        return ProductCell()
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 171, height: 235)
//    }

}
