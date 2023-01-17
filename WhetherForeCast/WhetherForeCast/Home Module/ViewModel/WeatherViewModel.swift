//
//  WeatherViewModel.swift
//  WhetherForeCast
//
//  Created by Umakant Sharma on 16/01/23.
//

import Foundation


class WeatherViewModel : NSObject {
    
    private var apiService : APIService!
    private(set) var weatherData : WeatherModel! {
        didSet {
            self.bindWeatherViewModelToController()
        }
    }
    
    var bindWeatherViewModelToController : (() -> ()) = {}
    
     init(apiS:APIService) {
        super.init()
         //Dependency injected for network layer
        self.apiService = apiS
        callFuncToGetWeatherData()
    }
    
    func callFuncToGetWeatherData() {

        self.apiService.GetWeatherData(reqUrl:endPointUrl) { strER in
            print(strER)
        } completion: { (weData)  in
            self.weatherData = weData
        }

    }
    func ChangeDateFormat(strD:String,newFormatStr:String)->String{
           let datFt = DateFormatter()
       
            datFt.dateFormat = "yyyy-MM-dd HH:mm"
            let nDt = datFt.date(from: strD)
             datFt.dateFormat = newFormatStr
             let strNewDt = datFt.string(from: nDt ?? Date())
             return strNewDt

        }
}
