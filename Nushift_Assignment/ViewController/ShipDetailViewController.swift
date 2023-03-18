//
//  ShipDetailViewController.swift
//  Nushift_Assignment
//
//  Created by S Sugunesh on 18/03/23.
//

import UIKit

class ShipDetailViewController: UIViewController {

    @IBOutlet weak var shipImage: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var shipNameLabelValue: UILabel!
    @IBOutlet weak var shipNameStatusValue: UILabel!
    @IBOutlet weak var shipYearBuiltValue: UILabel!
    @IBOutlet weak var shipHomePortValue: UILabel!
    
    var ship: ShipsQuery.Data.Ship?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = UIButton(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        backButton.setImage(UIImage(named: "back"), for: .normal)
        backButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        
        shipNameLabelValue.text = ship?.name ?? ""
        shipNameStatusValue.text = ship?.active ?? false ? "Active" : "Not-Active"
        shipYearBuiltValue.text = "\(ship?.yearBuilt ?? 0000)"
        shipHomePortValue.text = ship?.homePort ?? ""
        
        if let url = URL(string: ship?.image ?? "") {
            DispatchQueue.global().async { [weak self] in
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        self?.shipImage.image = UIImage(data: data)
                        self?.activityIndicator.stopAnimating()
                    }
                }
            }
        }
    }
    
    @objc
    func backAction () {
        navigationController?.popViewController(animated: true)
    }
}
