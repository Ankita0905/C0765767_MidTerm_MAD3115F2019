//
//  AddCustomerViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-01.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController {

    
      let a = Singleton.getInstance()
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    
   // @IBAction func btnsave(_ sender: UIBarButtonItem)
    private func saveCustomerButton()
    {
     let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(AddCustomerViewController.saveCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnSave
    }
    
    @objc
    func saveCustomer(sender: UIBarButtonItem)
    {
        //print("Customer Added")
     let sb1=UIStoryboard(name: "Main", bundle: nil)
     let customerListVC=sb1.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
      //  navigationController?.pushViewController(customerListVC, animated: true)
       // navigationController?.popViewController(animated: true)

    
    
        let fName = txtFirstName.text
        let lName = txtLastName.text
        
        if isValidEmail()
               {
               
                   let email = txtEmail.text
                   a.addNewCustomer(First_Name: fName!, Last_Name: lName!, email: email!)
                   
                   let alert = UIAlertController(title: "Success", message: "Congrats! Added Successfully", preferredStyle: .alert)

                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alert: UIAlertAction!) in self.navigationController?.pushViewController(customerListVC, animated: true)}))
                   
                
                   self.present(alert, animated: true)
               }
               else{
                   
                   let alert = UIAlertController(title: "INVALID EMAIL!", message: "Please Enter a Valid Email Address", preferredStyle: .alert)

                   alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   
                   self.present(alert, animated: true)
                   
               }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveCustomerButton()

        // Do any additional setup after loading the view.
    }
    
    // Code taken from https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
    
    func isValidEmail() -> Bool {
           let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

           let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
           return emailPred.evaluate(with: txtEmail.text!)
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
