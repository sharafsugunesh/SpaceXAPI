//
//  ViewModel.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 16/03/23.
//

import Foundation
import RealmSwift

enum APIError {
    case badURL, networkFailure, parsingError
}

class HomeViewModel {
    func getCapsuleDetails(completion: @escaping ([ShipsQuery.Data.Ship?]?, APIError?)-> Void) {
        NetworkHelper.shared.apollo.fetch(query: ShipsQuery()) { result in
            switch result {
            case .success(let graphResult):
                if let contains = graphResult.data?.ships {
                    completion(contains, nil)
                } else {
                    completion(nil, .parsingError)
                }
                
            case .failure(_):
                print("error")
                completion(nil, .networkFailure)
            }
        }
    }
    
    func saveShipsDataToRealm(ships: [ShipsQuery.Data.Ship?]) {
        let realm: Realm = try! Realm()
        var shipsList = [ShipModel]()
        
        for ship in ships {
            let abs = ship?.abs ?? 0
            let active = ship?.active ?? false
            let shipModelClass = ship?.class ?? 1
            let homePort = ship?.homePort ?? ""
            let id = ship?.id ?? ""
            let image = ship?.image ?? ""
            let imo = ship?.imo ?? 1
            let mmsi = ship?.mmsi ?? 1
            let name = ship?.name ?? ""
            let roles = [""]
            let status = ship?.status ?? ""
            let type = ship?.type ?? ""
            let yearBuilt = ship?.yearBuilt ?? 1
            
            shipsList.append(ShipModel(abs: abs, active: active, shipModelClass: shipModelClass, homePort: homePort, id: id, image: image, imo: imo, mmsi: mmsi, name: name, roles: roles, status: status, type: type, yearBuilt: yearBuilt))
        }
        
        try! realm.write {
            realm.add(shipsList)
        }
    }
}
