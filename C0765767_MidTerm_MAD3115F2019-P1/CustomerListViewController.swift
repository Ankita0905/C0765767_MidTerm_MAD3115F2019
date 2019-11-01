//
//  CustomerListViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-10-31.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
  var tempvar = Singleton.getInstance()
    
    @IBOutlet weak var customerListTable: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customerListTable.delegate=self
        customerListTable.dataSource=self
      navigationItem.hidesBackButton=true
    }
    
    
//    private func allLogOutButton()
//            {
//                let btnLogOut = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(customerListTable.))
//            navigationItem.leftBarButtonItem = btnLogOut
//                navigationItem.leftBarButtonItems = [btnLogOut]
//
//            }
//
//        @objc func logout(sender: UIBarButtonItem)
//           {
//                           navigationController?.popViewController(animated: true)
//
//           }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return tempvar.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let x = tempvar.returnCustObject(custID: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = x?.fullName
         return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "List of Customers"
    }
    
    override func viewWillAppear(_ animated: Bool) {
           customerListTable.reloadData()
           
       }
    

    
    

    
}
