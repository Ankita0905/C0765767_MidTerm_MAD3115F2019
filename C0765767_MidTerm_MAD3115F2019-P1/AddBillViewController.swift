//
//  AddBillViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-08.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController {

    @IBOutlet weak var txtDate: UITextField!
    @IBOutlet weak var txtTotalAmount: UITextField!
    @IBOutlet weak var segType: UISegmentedControl!
    
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showDatePicker()
        let rightButton = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(   self.saveBill))
        self.navigationItem.rightBarButtonItem = rightButton
        // Do any additional setup after loading the view.
        self.txtDate.resignFirstResponder()
    }
    
    
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
        
        txtDate.inputAccessoryView = toolbar
        txtDate.inputView = datePicker
        
    }
    
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        txtDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    
    @objc func saveBill(sender: UIBarButtonItem)
    {
    

       
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func segmentBillType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("Mobile")
            //conditionally show hide text fields
        case 1:
            print("Internet")
            //conditionally show hide text fields
        case 2:
            print("Hydro")
            //conditionally show hide text fields
        default:
            print("Mobile")
        }
    }
    

    

}
