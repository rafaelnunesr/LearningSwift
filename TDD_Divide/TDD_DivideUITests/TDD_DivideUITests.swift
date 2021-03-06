//
//  TDD_DivideUITests.swift
//  TDD_DivideUITests
//
//  Created by Rafael Nunes Rios on 3/5/21.
//

import XCTest

class TDD_DivideUITests: XCTestCase {
    
    let app = XCUIApplication()
    let device = XCUIDevice()
    //let element = XCUIElement()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {}

    func testMainScreen() {
        let labelText = app.staticTexts["Enter two Numbers"]
        XCTAssertTrue(labelText.exists, "Should be in the main screen")
    }
    
    func testDivideTenByTwoLabelResultShouldBeFive() {
        let dividend = app.textFields.element(boundBy: 0)
        let divisor = app.textFields.element(boundBy: 1)

        dividend.tap()
        dividend.typeText("10")
        
        divisor.tap()
        divisor.typeText("2")
        
        app.buttons["Calculate"].tap()
        XCTAssertTrue(app.staticTexts["5.0"].exists, "Result should be 5.0")
    }
    
    func testDivideTwentyByTwoLabelResultShouldBeTen() {
        
        let app = XCUIApplication()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element(boundBy: 0).tap()
        
        let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        moreKey.tap()
        moreKey.tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        key.tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        key2.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element(boundBy: 1).tap()
        moreKey.tap()
        moreKey.tap()
        
        let key3 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key3.tap()
        key2.tap()
        key2.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["CALCULATE"]/*[[".buttons[\"CALCULATE\"].staticTexts[\"CALCULATE\"]",".staticTexts[\"CALCULATE\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
                
        XCTAssertTrue(app.staticTexts["10.0"].exists, "Result should be displaying 10")
        
    }
    
}
