//
//  ShipTableViewCell.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 17/03/23.
//

import UIKit

class ShipTableViewCell: UITableViewCell {
    @IBOutlet weak var shipNameLabel: UILabel!
    @IBOutlet weak var shipImageView: UIImageView!
    var ship: ShipsQuery.Data.Ship?
    
    func updateCellUI() {
        shipImageView.clipsToBounds = true
        shipImageView.layer.cornerRadius = 15
     
        shipNameLabel.text = ship?.name ?? ""
        if let url = URL(string: ship?.image ?? "") {
            DispatchQueue.global().async { [weak self] in
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        self?.shipImageView.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}
