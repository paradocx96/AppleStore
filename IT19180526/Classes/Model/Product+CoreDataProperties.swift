//
//  Product+CoreDataProperties.swift
//  IT19180526
//
//  Created by Interactive Media on 4/2/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var name: String?
    @NSManaged public var code: String?
    @NSManaged public var availableUnit: Int64
    @NSManaged public var price: Double
    @NSManaged public var oldPrice: Double
    @NSManaged public var productDescription: String?
    @NSManaged public var imagePath: String?

}
