//
//  FeaturedProductListCollectionViewCell.swift
//  IT19180526
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class FeaturedProductListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemAddToCartBtn: UIButton!
    
    func setup(with product: ProductItem) {
        itemImage.image = product.image
        itemName.text = product.name
        itemPrice.text = "$\(String(product.price))"
    }
}
