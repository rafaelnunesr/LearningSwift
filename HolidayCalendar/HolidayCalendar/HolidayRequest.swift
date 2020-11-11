//
//  HolidayRequest.swift
//  HolidayCalendar
// https://www.youtube.com/watch?v=tdxKIPpPDAI
//  Created by Rafael Nunes Rios on 11/10/20.
//

import Foundation

enum HolidayError: Error {
    case noDataAvailable
    case canNotProcessData
}

struct HolidayRequest {
    let resourceURL: URL
    let API_KEY = ""
    
    init(countryCode: String) {
       
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy"
        let currentYear = format.string(from: date)
        
        let resourceString = "https://calendarific.com/api/v2/holidays?&api_key=\(API_KEY)&country=\(countryCode)&year=\(currentYear)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func getHolidays(completion: @escaping(Result<[HolidayDetail], HolidayError>) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) {data, _, _ in
            guard let jsonData = data else {
                completion(.failure(.noDataAvailable))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let holidaysResponse = try decoder.decode(HolidayResponde.self, from: jsonData)
                let holidayDetails = holidaysResponse.responde.holidays
                completion(.success(holidayDetails))
            }catch {
                completion(.failure(.noDataAvailable))
            }
        }
        dataTask.resume()
    }
}
