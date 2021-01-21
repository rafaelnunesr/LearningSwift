//
//  Car.swift
//  CarrosTests
//
//  Created by Rafael Nunes Rios on 1/20/21.
//

import XCTest
@testable import Carros

class CarTests: XCTestCase {
    
    var ferrari: Car!
    var jeep: Car!
    var honda: Car!
    var palio: Car!
    
    // funcao padrao para inicializar as variaveis
    override func setUp() {
        super.setUp()
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive, review: .notReview)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive, review: .notReview)
        honda = Car(type: .Sport, transmissionMode: .Drive, review: .notReview)
        palio = Car(type: .Economy, transmissionMode: .Drive, review: .notReview)
    }
    
    // desaloca as variaveis que nao estao sendo usadas por esta classe
    override func tearDown() {
        super.tearDown()
        
        ferrari = nil
        jeep = nil
        honda = nil
        palio = nil
    }

    func testCarroMaisRapido_comparandoSetupCarro_ferrariMaisRapido() {
        
        let minutes = 60
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
    
    func testCarroMaisLento_comparandoSetupCarro_pailioiMaisLento() {
        
        let minutes = 60
        palio.start(minutes: minutes)
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(palio.miles < jeep.miles)
    }

}
