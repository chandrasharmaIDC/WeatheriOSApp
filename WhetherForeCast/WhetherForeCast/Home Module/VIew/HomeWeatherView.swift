//
//  HomeWeatherView.swift
//  WhetherForeCast
//
//  Created by Umakant Sharma on 16/01/23.
//

import UIKit

class HomeWeatherView: UIViewController {

    var viewSecFirst:UIView!
    var lblDate:UILabel!
    var lblTime:UILabel!
    var lblCountry:UILabel!
    var lblCity:UILabel!
    var tblWeather:UITableView!
    
    private var weatherViewModel : WeatherViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .blue
        
        InitialSetUP()
        setUpiIew()
        callToViewModelForUIUpdate()
        // Do any additional setup after loading the view.
    }
    
    //confirm tableview delegeta datasource and alloc labels
    func InitialSetUP(){
        viewSecFirst = UIView()
        lblDate = UILabel()
        lblTime = UILabel()
        lblCountry = UILabel()
        lblCity = UILabel()
        tblWeather = UITableView()
        viewSecFirst.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        tblWeather.register(tblWeatherCell.self, forCellReuseIdentifier: "tblWeatherCell")
        
    }
    
    //MARK:setup section first
 
    func callToViewModelForUIUpdate(){
            
        self.weatherViewModel =  WeatherViewModel(apiS: APIService())
            self.ShowLoader()
            self.weatherViewModel.bindWeatherViewModelToController = {
                self.HiderdLoadervc()
                self.updateDataSource()
            }
        }
    
    func updateDataSource(){
           
           
           
           DispatchQueue.main.async {
               let dt = self.weatherViewModel.weatherData.location?.localtime ?? ""
               self.lblDate.text = self.weatherViewModel.ChangeDateFormat(strD: dt, newFormatStr: "dd MMM yyyy")
               self.lblTime.text = self.weatherViewModel.ChangeDateFormat(strD: dt, newFormatStr: "HH:mm")
               self.lblCity.text = self.weatherViewModel.weatherData.location?.name
               self.lblCountry.text = self.weatherViewModel.weatherData.location?.country
        
               self.tblWeather.dataSource = self
               self.tblWeather.delegate = self
               self.tblWeather.reloadData()
           }
       }
    
    


    

    

}
extension HomeWeatherView:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherViewModel.weatherData.forecast?.forecastday?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblWeatherCell", for: indexPath) as! tblWeatherCell
        let di = weatherViewModel.weatherData.forecast?.forecastday?[indexPath.row]
        cell.lblDate.text = di?.date
        cell.lblMinTemp.text = "Min:\(di?.day?.mintempC ?? 0)°C"
        cell.lblMaxTemp.text = "Max:\(di?.day?.maxtempC ?? 0)°C"
        if let url = URL(string:"https:\(di?.day?.condition?.icon ?? "")" ){
        
          
            cell.imgTemp.load(url: url)
        }else{
            cell.imgTemp.image = UIImage(named: "placeholder")
        }
        
        return cell
    }
}

