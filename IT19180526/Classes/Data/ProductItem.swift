//
//  Product.swift
//  IT19180526
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

struct ProductItem {
    let name: String
    let code: String
    let availableUnit: Int64
    let price: Double
    let oldPrice: Double
    let productDescription: String
    let image: UIImage
}

let sampleText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

let featuredProductsList: [ProductItem] = [
    ProductItem(name: "iPhone 12", code: "120100", availableUnit: 10, price: 699.99, oldPrice: 799.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone12.jpg")),
    ProductItem(name: "iPhone 12 Mini", code: "120200", availableUnit: 10, price: 599.99, oldPrice: 699.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone12mini.jpg")),
    ProductItem(name: "iPhone 12 Pro", code: "120300", availableUnit: 6, price: 999.99, oldPrice: 1099.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone12pro.jpg")),
    ProductItem(name: "iPhone 12 Pro Max", code: "120400", availableUnit: 10, price: 1099.99, oldPrice: 1199.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone12promax.jpg")),
    ProductItem(name: "iPhone SE 2020", code: "200100", availableUnit: 6, price: 450.00, oldPrice: 550.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphonese20.jpg")),
    ProductItem(name: "iPhone SE 2022", code: "200200", availableUnit: 10, price: 650.99, oldPrice: 750.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphonese22.jpg")),
    ProductItem(name: "iPhone 13", code: "130100", availableUnit: 10, price: 799.99, oldPrice: 899.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone13promax")),
    ProductItem(name: "iPhone 13 Mini", code: "130200", availableUnit: 8, price: 699.99, oldPrice: 799.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone13mini.jpg")),
    ProductItem(name: "iPhone 13 Pro", code: "130300", availableUnit: 6, price: 999.99, oldPrice: 1099.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone13pro.jpg")),
    ProductItem(name: "iPhone 13 Pro Max", code: "130400", availableUnit: 10, price: 1099.99, oldPrice: 1199.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone13promax.jpg")),
]

let newProductsList: [ProductItem] = [
    ProductItem(name: "iPhone 13", code: "130100", availableUnit: 10, price: 799.99, oldPrice: 899.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone13promax")),
    ProductItem(name: "iPhone 13 Mini", code: "130200", availableUnit: 8, price: 699.99, oldPrice: 799.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone13mini.jpg")),
    ProductItem(name: "iPhone 13 Pro", code: "130300", availableUnit: 6, price: 999.99, oldPrice: 1099.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone13pro.jpg")),
    ProductItem(name: "iPhone 13 Pro Max", code: "130400", availableUnit: 10, price: 1099.99, oldPrice: 1199.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone13promax.jpg")),
    ProductItem(name: "iPhone 12", code: "120100", availableUnit: 10, price: 699.99, oldPrice: 799.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone12.jpg")),
    ProductItem(name: "iPhone 12 Mini", code: "120200", availableUnit: 10, price: 599.99, oldPrice: 699.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone12mini.jpg")),
    ProductItem(name: "iPhone 12 Pro", code: "120300", availableUnit: 6, price: 999.99, oldPrice: 1099.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone12pro.jpg")),
    ProductItem(name: "iPhone 12 Pro Max", code: "120400", availableUnit: 10, price: 1099.99, oldPrice: 1199.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone12promax.jpg")),
]

let homeFeaturedProductsList: [ProductItem] = [
    ProductItem(name: "iPhone 12 Pro", code: "120300", availableUnit: 6, price: 999.99, oldPrice: 1099.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone12pro.jpg")),
    ProductItem(name: "iPhone 12 Pro Max", code: "120400", availableUnit: 10, price: 1099.99, oldPrice: 1199.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone12promax.jpg")),
    ProductItem(name: "iPhone SE 2020", code: "200100", availableUnit: 6, price: 450.00, oldPrice: 550.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphonese20.jpg")),
    ProductItem(name: "iPhone SE 2022", code: "200200", availableUnit: 10, price: 650.99, oldPrice: 750.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphonese22.jpg")),
]

let homeNewProductsList: [ProductItem] = [
    ProductItem(name: "iPhone 13", code: "130100", availableUnit: 10, price: 799.99, oldPrice: 899.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone13promax")),
    ProductItem(name: "iPhone 13 Mini", code: "130200", availableUnit: 8, price: 699.99, oldPrice: 799.99, productDescription: sampleText, image: #imageLiteral(resourceName: "iphone13mini.jpg")),
    ProductItem(name: "iPhone 13 Pro", code: "130300", availableUnit: 6, price: 999.99, oldPrice: 1099.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone13pro.jpg")),
    ProductItem(name: "iPhone 13 Pro Max", code: "130400", availableUnit: 10, price: 1099.99, oldPrice: 1199.99, productDescription: sampleText, image:#imageLiteral(resourceName: "iphone13promax.jpg")),
]
