//
//  HomeViewExtension.swift
//  WhetherForeCast
//
//  Created by Umakant Sharma on 17/01/23.
//

import Foundation
import UIKit
extension HomeWeatherView{
    func setUpiIew(){
        viewSecFirst.addSubview(lblDate)
        viewSecFirst.addSubview(lblTime)
        viewSecFirst.addSubview(lblCountry)
    
        viewSecFirst.addSubview(lblCity)
        self.view.addSubview(viewSecFirst)
        self.view.addSubview(tblWeather)
        
        viewSecFirst.translatesAutoresizingMaskIntoConstraints = false
        tblWeather.translatesAutoresizingMaskIntoConstraints = false
        lblDate.translatesAutoresizingMaskIntoConstraints = false
        lblTime.translatesAutoresizingMaskIntoConstraints = false
        lblCountry.translatesAutoresizingMaskIntoConstraints = false
        lblCity.translatesAutoresizingMaskIntoConstraints = false
        
        viewSecFirst.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        viewSecFirst.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        viewSecFirst.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant:20).isActive = true
        viewSecFirst.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewSecFirst.layer.cornerRadius = 20
        
        tblWeather.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        tblWeather.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        tblWeather.topAnchor.constraint(equalTo: self.viewSecFirst.bottomAnchor, constant:20).isActive = true
        tblWeather.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant:0).isActive = true
       // tblWeather.heightAnchor.constraint(equalToConstant: 100).isActive = true
        tblWeather.layer.cornerRadius = 20
        
        lblDate.leadingAnchor.constraint(equalTo: self.viewSecFirst.leadingAnchor, constant: 10).isActive = true
       // lblDate.trailingAnchor.constraint(equalTo: self.viewSecFirst.trailingAnchor, constant: -10).isActive = true
        lblDate.topAnchor.constraint(equalTo: self.viewSecFirst.safeAreaLayoutGuide.topAnchor, constant:20).isActive = true
        lblDate.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        
        lblTime.leadingAnchor.constraint(equalTo: self.viewSecFirst.leadingAnchor, constant: 10).isActive = true
        lblTime.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        lblTime.topAnchor.constraint(equalTo: self.lblDate.bottomAnchor, constant:10).isActive = true
        lblTime.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
       // lblCountry.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        lblCountry.trailingAnchor.constraint(equalTo: self.viewSecFirst.trailingAnchor, constant: -10).isActive = true
        lblCountry.topAnchor.constraint(equalTo: self.viewSecFirst.topAnchor, constant:20).isActive = true
        lblCountry.heightAnchor.constraint(equalToConstant: 25).isActive = true
       
        
        lblCity.trailingAnchor.constraint(equalTo: self.viewSecFirst.trailingAnchor, constant: -10).isActive = true
        lblCity.topAnchor.constraint(equalTo: self.lblCountry.bottomAnchor, constant:10).isActive = true
        lblCity.heightAnchor.constraint(equalToConstant: 25).isActive = true
        lblDate.text = "16 Jan 2023"
        lblTime.text = "04:35 PM"
        lblCountry.text = "India"
        lblCity.text = "Noida"
        
        lblDate.textColor = .white
        lblTime.textColor = .white
        lblCountry.textColor = .white
        lblCity.textColor = .white
        lblDate.font = UIFont.boldSystemFont(ofSize: 22)
        lblCountry.font = UIFont.boldSystemFont(ofSize: 22)
        
    }
}
