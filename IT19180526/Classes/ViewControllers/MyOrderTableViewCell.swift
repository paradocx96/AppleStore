//
//  MyOrderTableViewCell.swift
//  IT19180526
//
//  Created by Interactive Media on 4/29/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class MyOrderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemCode: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var orderDate: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    func setup(with myOder: MyOrder) {
        itemName.text = myOder.name
        itemCode.text = myOder.code
        itemPrice.text = "$\(String(myOder.price))"
        orderDate.text = myOder.orderDate
        itemImage.image = myOder.image
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
