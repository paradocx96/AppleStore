//
//  User+CoreDataProperties.swift
//  IT19180526
//
//  Created by Interactive Media on 4/2/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var fullName: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?

}
