//
//  CartTableViewCell.swift
//  IT19180526
//
//  Created by Interactive Media on 4/29/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemCount: UILabel!
    
    
    func setup(with myCart: MyCart) {
        itemName.text = myCart.name
        itemPrice.text = "$\(String(myCart.price))"
        itemCount.text = "\(String(myCart.countItem))"
        itemImage.image = myCart.image
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
