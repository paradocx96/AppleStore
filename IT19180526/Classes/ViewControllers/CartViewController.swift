//
//  CartViewController.swift
//  IT19180526
//
//  Created by Interactive Media on 4/9/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var bottomBtnSetView: UIView!
    @IBOutlet weak var checkoutBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        bottomBtnSetView.layer.borderWidth = 1
        bottomBtnSetView.layer.borderColor = UIColor.black.cgColor
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as! CartTableViewCell
        tableViewCell.setup(with: cartList[indexPath.row])
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: .destructive, title: "Remove"){
            (action, indexPath) in
            print("Deleted Called!")
            
            self.deleteItem(itemRow: indexPath.row)
        }
        
        return [delete]
    }
    
    func deleteItem(itemRow: Int){
        let simpleAlert = UIAlertController(title: "Remove Item", message: "Are you sure, you want to remove?", preferredStyle:.alert)
        
        simpleAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
            (action: UIAlertAction!) in
            print("Item Removed!")
            
            cartList.remove(at: itemRow)
            self.tableView.reloadData()
        }))
        
        simpleAlert.addAction(UIAlertAction(title: "No", style: .default, handler: {
            (action: UIAlertAction!) in
            print("Item Remove Canceld!")
        }))
        
        self.present(simpleAlert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
