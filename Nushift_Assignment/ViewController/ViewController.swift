//
//  ViewController.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 15/03/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkHelper.shared.apollo.fetch(query: LaunchesQuery()) { result in
            switch result {
            case .success(let graphResult):
                let contains = graphResult.data?.launches
            case .failure(_):
                print("error")
            }
        }
    }


}

