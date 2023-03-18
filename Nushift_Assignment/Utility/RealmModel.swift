//
//  RealmModel.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 18/03/23.
//

import Foundation
import RealmSwift

// MARK: - ShipModel
class ShipModel: Object {
    @objc dynamic var abs: Int = 0
    @objc dynamic var active: Bool = false
    @objc dynamic var shipModelClass: Int = 0
    @objc dynamic var homePort = "", id: String = ""
    @objc dynamic var image: String = ""
    @objc dynamic var imo = 0, mmsi: Int = 0
    @objc dynamic var name: String = ""
    @objc dynamic var roles: [String] = []
    @objc dynamic var status = "", type: String = ""
    @objc dynamic var yearBuilt: Int = 0
    
    init(abs: Int, active: Bool, shipModelClass: Int, homePort: String = "", id: String, image: String, imo: Int = 0, mmsi: Int, name: String, roles: [String], status: String = "", type: String, yearBuilt: Int) {
        self.abs = abs
        self.active = active
        self.shipModelClass = shipModelClass
        self.homePort = homePort
        self.id = id
        self.image = image
        self.imo = imo
        self.mmsi = mmsi
        self.name = name
        self.roles = roles
        self.status = status
        self.type = type
        self.yearBuilt = yearBuilt
    }
}



