//
//  ViewController.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 15/03/23.
//

import UIKit
import PUGifLoading

class ViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = HomeViewModel()
    var shipsList = [ShipsQuery.Data.Ship?]()
    let loading = PUGIFLoading()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.title = "SpaceX Ships"
        
        getShips()
    }
    
    func getShips() {
        loading.show("Loading", gifimagename: "rocket-launch-ruchit",iWidth: view.frame.width,iHight: view.frame.width)
        
        viewModel.getCapsuleDetails {[weak self] ships, err in
            if err == nil {
                guard let lanc = ships else { return }
                self?.loading.hide()
                self?.shipsList = lanc
                self?.tableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shipsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ShipTableViewCell", for: indexPath) as? ShipTableViewCell else {
            return UITableViewCell()
        }
        
        cell.ship = shipsList[indexPath.row]
        cell.shipStatusImageView.tintColor = shipsList[indexPath.row]?.active ?? false ? .green : .red
        cell.updateCellUI()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ShipDetailViewController") as? ShipDetailViewController {
            vc.ship = shipsList[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
