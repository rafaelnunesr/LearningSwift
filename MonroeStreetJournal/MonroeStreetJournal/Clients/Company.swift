//
//  Company.swift
//  MonroeStreetJournal
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class Company: ClientProtocol {
    var companyName: String
    var cnpj: String
    var employeeQuantity: Int
    
    init(companyName: String, cnpj: String, employeeQuantity: Int) {
        
        self.companyName = companyName
        self.cnpj = cnpj
        self.employeeQuantity = employeeQuantity
        
    }
    
    func showMessage() {
        
    }
}
