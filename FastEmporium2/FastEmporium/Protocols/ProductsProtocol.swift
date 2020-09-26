//
//  ProductsProtocol.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/26/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

protocol ProductsProtocol {
    
    func ifProductExists(productName: String) -> Bool
    func getProduct(productName: String) -> Product?
    func addNewProduct(productName: String, quantity: Int)
    func updateProductQuantity(productName: String, newQuantity quantity: Int)
    func removeProduct(productName: String) -> Bool
    
}

