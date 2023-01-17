//
//  WeatherModel.swift
//  WhetherForeCast
//
//  Created by Umakant Sharma on 16/01/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct WeatherModel: Codable {
    let location: Location?
   // let current: Current?
    let forecast: Forecast?
}

//// MARK: - Current
//struct Current: Codable {
//    let lastUpdatedEpoch: Int?
//    let lastUpdated: String?
//    let tempC: Int?
//    let tempF: Double?
//    let isDay: Int?
//    let condition: Condition?
//    let windMph, windKph: Double?
//    let windDegree: Int?
//    let windDir: String?
//    let pressureMB, pressureIn, precipMm, precipIn: Int?
//    let humidity, cloud, feelslikeC: Int?
//    let feelslikeF, visKM: Double?
//    let visMiles, uv: Int?
//    let gustMph, gustKph: Double?
//
//    enum CodingKeys: String, CodingKey {
//        case lastUpdatedEpoch = "last_updated_epoch"
//        case lastUpdated = "last_updated"
//        case tempC = "temp_c"
//        case tempF = "temp_f"
//        case isDay = "is_day"
//        case condition
//        case windMph = "wind_mph"
//        case windKph = "wind_kph"
//        case windDegree = "wind_degree"
//        case windDir = "wind_dir"
//        case pressureMB = "pressure_mb"
//        case pressureIn = "pressure_in"
//        case precipMm = "precip_mm"
//        case precipIn = "precip_in"
//        case humidity, cloud
//        case feelslikeC = "feelslike_c"
//        case feelslikeF = "feelslike_f"
//        case visKM = "vis_km"
//        case visMiles = "vis_miles"
//        case uv
//        case gustMph = "gust_mph"
//        case gustKph = "gust_kph"
//    }
//}

// MARK: - Condition
struct Condition: Codable {
    let text: String?
    let icon: String?
    let code: Int?


enum CodingKeys: String, CodingKey {
    case text
    case icon
    case code
}
}


// MARK: - Forecast
struct Forecast: Codable {
    let forecastday: [Forecastday]?
}

// MARK: - Forecastday
struct Forecastday: Codable {
    let date: String?
    let dateEpoch: Int?
    let day: Day?
    

    enum CodingKeys: String, CodingKey {
        case date
        case dateEpoch = "date_epoch"
        case day
    }
}

// MARK: - Astro


// MARK: - Day
struct Day: Codable {
    let maxtempC, maxtempF, mintempC, mintempF: Double?
   
    let condition: Condition?
    

    enum CodingKeys: String, CodingKey {
        case maxtempC = "maxtemp_c"
        case maxtempF = "maxtemp_f"
        case mintempC = "mintemp_c"
        case mintempF = "mintemp_f"
       
        case condition
    }
}

// MARK: - Hour

  

// MARK: - Location
struct Location: Codable {
    let name, region, country: String?
    let lat, lon: Double?
    let tzID: String?
    let localtimeEpoch: Int?
    let localtime: String?

    enum CodingKeys: String, CodingKey {
        case name, region, country, lat, lon
        case tzID = "tz_id"
        case localtimeEpoch = "localtime_epoch"
        case localtime
    }
}
