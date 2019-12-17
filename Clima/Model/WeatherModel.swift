//
//  WeatherModel.swift
//  Clima
//
//  Created by Arturo Lee on 12/16/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let confitionId:Int
    let cityName:String
    let temperature:Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName:String {
        switch confitionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        default:
            return "cloud"
        }
    }
}
