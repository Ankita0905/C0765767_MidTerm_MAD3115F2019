//
//  Customer.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-01.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation

class Customer
{
    var customerID : Int?
    var customerFName: String?
    var customerLName : String?
    var fullName : String{
        return customerFName! + " " + customerLName!
    }
    
    
      var customerEmail: String?
    
  
    
  var billDictionary = [Int:Bill]()
    
    var TotalAmountToPay: Float // computed variable
    {
        var TotalAmount: Float = 0.0
        
        for bill in billDictionary
        {
            TotalAmount = TotalAmount + bill.value.totalBillAmount
        }
        return TotalAmount
    }
    func addBill(Bill : Bill)
    {
        billDictionary.updateValue(Bill, forKey: Bill.Id)
    }
    
    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String) {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.customerEmail=customerEmail
    }
}
