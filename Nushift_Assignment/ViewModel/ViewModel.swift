//
//  ViewModel.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 16/03/23.
//

import Foundation

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
    
    func saveCapsulesToRealm() {
        
    }
}
