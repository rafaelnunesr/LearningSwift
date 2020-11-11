//
//  Holiday.swift
//  HolidayCalendar
//
//  Created by Rafael Nunes Rios on 11/10/20.
//

import Foundation

struct HolidayResponde: Decodable {
    var responde: Holidays
}

struct Holidays: Decodable {
    var holidays: [HolidayDetail]
}

struct HolidayDetail: Decodable {
    var name: String
    var date: DateInto
}

struct DateInto: Decodable {
    var iso: String // same name as api
}
