//
//  MyCart.swift
//  IT19180526
//
//  Created by Interactive Media on 4/29/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

struct MyCart {
    let name: String
    let price: Double
    let countItem: Int64
    let image: UIImage
}

var cartList: [MyCart] = [
    MyCart(name: "iPhone 13", price: 899.99, countItem: 1, image:#imageLiteral(resourceName: "iphone13.jpg")),
    MyCart(name: "iPhone 12",  price: 799.99, countItem: 1, image:#imageLiteral(resourceName: "iphone12.jpg")),
    MyCart(name: "iPhone 12 Pro Max",  price: 1199.99, countItem: 1, image:#imageLiteral(resourceName: "iphone12promax.jpg")),
    MyCart(name: "iPhone SE 2022",  price: 750.99, countItem: 1, image:#imageLiteral(resourceName: "iphonese22.jpg")),
    MyCart(name: "iPhone 13 Mini",  price: 799.99, countItem: 1, image:#imageLiteral(resourceName: "iphone13mini.jpg")),
    MyCart(name: "iPhone 13 Pro Max",  price: 1199.99, countItem: 1, image:#imageLiteral(resourceName: "iphone13promax.jpg")),
]
