//
//  ViewController.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 15/03/23.
//

import UIKit

class ViewController: UIViewController {
    var viewModel = HomeViewModel()
    var shipsList = [ShipsQuery.Data.Ship?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getCapsuleDetails {[weak self] ships, err in
            if err == nil {
                
                guard let lanc = ships else { return }
                self?.shipsList = lanc
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shipsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
