//
//  MyOrder.swift
//  IT19180526
//
//  Created by Interactive Media on 4/29/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

struct MyOrder {
    let name: String
    let code: String
    let price: Double
    let orderDate: String
    let image: UIImage
}

let orderList: [MyOrder] = [
    MyOrder(name: "iPhone 13", code: "130100", price: 899.99, orderDate: "2022 04 15", image:#imageLiteral(resourceName: "iphone13.jpg")),
    MyOrder(name: "iPhone 12", code: "120100", price: 799.99, orderDate: "2022 04 18", image:#imageLiteral(resourceName: "iphone12.jpg")),
    MyOrder(name: "iPhone 12 Pro Max", code: "120400", price: 1199.99, orderDate: "2022 04 20", image:#imageLiteral(resourceName: "iphone12promax.jpg")),
    MyOrder(name: "iPhone SE 2022", code: "200200", price: 750.99, orderDate: "2022 04 22", image:#imageLiteral(resourceName: "iphonese22.jpg")),
    MyOrder(name: "iPhone 13 Mini", code: "130200", price: 799.99, orderDate: "2022 04 25", image:#imageLiteral(resourceName: "iphone13mini.jpg")),
    MyOrder(name: "iPhone 13 Pro Max", code: "130400", price: 1199.99, orderDate: "2022 04 28", image:#imageLiteral(resourceName: "iphone13promax.jpg")),
]
