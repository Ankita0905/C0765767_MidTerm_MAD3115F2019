//
//  Singleton.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-10-31.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

//understood from Kuldeep


import Foundation

class Singleton: NSObject
{
     private var customerDictionary  = [Int:Customer]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        
        let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.AddCustomer(customer: temp)
    }
    
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCust()
    {
        let b1: Mobile = Mobile(Id: 1, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 74.52, mobileManufacturer: "Samsung S10", planName: "Talk + Data", mobileNumber: "+12345678901", internetUsed: 23, minuteUsed: 34)
        let b2: Mobile = Mobile(Id: 2, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 34.98, mobileManufacturer: "LG", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "+14567431985", internetUsed: 67, minuteUsed: 456)
        
        let b3: Internet = Internet(Id: 1, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 23.09, providerName: "Bell", internetUsed: 34)
        let b4: Internet = Internet(Id: 2, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 236.09, providerName: "Rogers", internetUsed: 765)
        
        let b5: Hydro = Hydro(Id: 1, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 765.98, agencyName: "Planet Energy", unitconsumed: 56)
        let b6: Hydro = Hydro(Id: 2, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 476.8, agencyName: "Energizer", unitconsumed: 98)
        
    let c1 = Customer(customerID: 1, customerFName: "Ankita", customerLName: "Jain", customerEmail: "ankita@gmail.com ")
        AddCustomer(customer: c1)
        c1.addBill(Bill: b1)
        //c1.addBill(Bill: b4)
        
        let c2 = Customer(customerID: 2, customerFName: "kamal", customerLName: "kaur", customerEmail: "kamal@gmail.com ")
        AddCustomer(customer: c2)
        c2.addBill(Bill: b1)
        c2.addBill(Bill: b2)
        c2.addBill(Bill: b6)
        
        let c3=Customer(customerID: 3, customerFName: "Karan", customerLName: "Kumar", customerEmail: "karan@gmail.com")
        AddCustomer(customer: c3)
        c3.addBill(Bill: b2)
        
        
//        let c3 = Customer(customerID: 3, customerFName: "Karan", customerLName: "Kumar", customerEmail: "karan321@gmail.com ")
//        AddCustomer(customer: c3)
//
//        c3.addBill(Bill: b2)
//        c3.addBill(Bill: b6)
//        let c4 = Customer(customerID: 4, customerFName: "Sandeep", customerLName: "Singh", customerEmail: "sandeep@gmail.com ")
//        AddCustomer(customer: c4)
//        c4.addBill(Bill: b5)
        
        
        
        
        
        
        
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName!)
        }
    }
    

}
