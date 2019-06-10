//
//  PurchaseController.swift
//  IAPDemoProject
//
//  Created by Mykhailo Bondarenko on 26/10/2017.
//  Copyright © 2017 Mykhailo Bondarenko. All rights reserved.
//

import UIKit
import StoreKit

class PurchaseController: UIViewController {
    
    let purchases = ["consumable", "non-consumable", "auto-renewable", "non-renewable"]
    @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        setupNavigationBar()
    }
    
    
    @objc private func restorePurchases() {
        print("restoring purchases")
    }

    private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Restore", style: .plain, target: self, action: #selector(restorePurchases))
    }
}

extension PurchaseController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return purchases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.purchaseCell, for: indexPath)
        
        let purchase = purchases[indexPath.row]
        cell.textLabel?.text = purchase
        return cell
    }
}


extension PurchaseController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}








