//
//  ApiManager.swift
//  WhetherForeCast
//
//  Created by Umakant Sharma on 16/01/23.
//

import Foundation

let endPointUrl = "https://api.weatherapi.com/v1/forecast.json?key=522db6a157a748e2996212343221502&q=Noida&days=7&aqi=no&alerts=no"


class APIService :  NSObject {

    
  
    
    func GetWeatherData(reqUrl:String,failed:@escaping (String)->(),completion : @escaping (WeatherModel) -> ()){
        if !Reachability.isConnectedToNetwork(){
            //show alert internet not connected
            failed("No internet connection")
        }
        guard let sourcesURL = URL(string: endPointUrl) else{
            failed("url not found")
            return
        }
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                do{
                let empData = try jsonDecoder.decode(WeatherModel.self, from: data)
                    print(empData)
                    completion(empData)
                }catch(let error){
                    print("error")
                    failed(error.localizedDescription)
                }
            }
            
        }.resume()
    }
    
}

