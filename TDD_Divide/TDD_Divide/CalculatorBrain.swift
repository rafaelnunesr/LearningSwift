//
//  CalculatorBrain.swift
//  TDD_Divide
//
//  Created by Rafael Nunes Rios on 3/5/21.
//

import Foundation

class CalculatorBrain {
    
    func divideTwoNumbers(dividend: Float, divisor: Float, completion: (_ result: Float?, _ error: NSError?) -> Void) {
        
        if divisor == 0 {
            let err = NSError(domain: "Error dividing by Zero", code: 1, userInfo: nil)
            return completion(nil, err)
        }
        
        let result = dividend / divisor
        
        return completion(result, nil)
    }
    
}
