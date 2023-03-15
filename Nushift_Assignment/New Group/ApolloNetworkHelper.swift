//
//  ApolloNetworkHelper.swift
//  NushiftTask
//
//  Created by S Sugunesh on 14/03/23.
//

import Foundation
import Apollo

class NetworkHelper {
    static let shared = NetworkHelper()
    
    lazy var apollo = ApolloClient(url: URL(string: "https://spacex-production.up.railway.app/")!)
    
}
