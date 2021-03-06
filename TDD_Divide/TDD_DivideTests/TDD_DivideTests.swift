//
//  TDD_DivideTests.swift
//  TDD_DivideTests
//
//  Created by Rafael Nunes Rios on 3/5/21.
//

import XCTest
@testable import TDD_Divide

class TDD_DivideTests: XCTestCase {
    
    let calculatorBrain: CalculatorBrain = CalculatorBrain()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTenDividedByFiveMustBeTwo() {
        calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 5) { (result, error) in
            XCTAssert(result == 2, "Result must be 2")
        }
    }
    
    func testTenDividedByZeroMustBeNil() {
        calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 0) { (result, error) in
            XCTAssertNil(result, "Result must be nil")
            XCTAssert(error?.domain == "Error dividing by Zero", "Error message should be 'Error dividing by Zero'")
        }
    }

}
