//
//  Car.swift
//  Carros
//
//  Created by Rafael Nunes Rios on 1/20/21.
//

import Foundation

public class Car {
    
    var miles = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode
    var review: Review
    
    init(type:CarType, transmissionMode:CarTransmissionMode, review: Review){
        self.type = type
        self.transmissionMode = transmissionMode
        self.review = review
    }
    
    func start(minutes: Int) {
        var speed = 0
        if self.type == .Economy && self.transmissionMode == .Drive {
            speed = 35
        }
        if self.type == .OffRoad && self.transmissionMode == .Drive {
            speed = 50
        }
        if self.type == .Sport && self.transmissionMode == .Drive {
            speed = 70
        }
        self.miles = speed * (minutes / 60)
    }
    
    func carConcert(months: Int, miles: Int) {
        
        if miles == 10000 || months == 12 {
            review = .FirstReview
        }else if miles == 20000 || months == 24 {
            review = .SecondReview
        }else if miles == 30000 || months == 36 {
            review = .ThirdReview
        }else if miles == 40000 || months == 48 {
            review = .FourthReview
        }else {
            review = .notReview
        }
        
    }
    
}

enum CarType {
    case Economy
    case OffRoad
    case Sport
}

enum CarTransmissionMode {
    case Park
    case Reverse
    case Neutral
    case Drive
}

enum Review {
    case FirstReview
    case SecondReview
    case ThirdReview
    case FourthReview
    case notReview
}
