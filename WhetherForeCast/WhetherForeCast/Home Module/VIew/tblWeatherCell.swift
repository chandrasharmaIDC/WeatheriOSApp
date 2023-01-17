//
//  tblWeatherCell.swift
//  WhetherForeCast
//
//  Created by Umakant Sharma on 16/01/23.
//

import UIKit

class tblWeatherCell: UITableViewCell {
    var viewSecSecond:UIView!
    var lblDate:UILabel!
    var lblMinTemp:UILabel!
    var lblMaxTemp:UILabel!
    var imgTemp:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
    }
    
    func SetUpSecondView(){
        viewSecSecond = UIView()
        lblDate = UILabel()
        lblMaxTemp = UILabel()
        lblMinTemp = UILabel()
        imgTemp = UIImageView()
        viewSecSecond.addSubview(lblDate)
        viewSecSecond.addSubview(lblMinTemp)
        viewSecSecond.addSubview(lblMaxTemp)
        viewSecSecond.addSubview(imgTemp)
        contentView.addSubview(viewSecSecond)
        
        viewSecSecond.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        //contentView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        viewSecSecond.translatesAutoresizingMaskIntoConstraints = false
        lblDate.translatesAutoresizingMaskIntoConstraints = false
        lblMaxTemp.translatesAutoresizingMaskIntoConstraints = false
        lblMinTemp.translatesAutoresizingMaskIntoConstraints = false
        imgTemp.translatesAutoresizingMaskIntoConstraints = false
        
        viewSecSecond.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        viewSecSecond.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        viewSecSecond.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant:0).isActive = true
        viewSecSecond.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant:0).isActive = true
        viewSecSecond.heightAnchor.constraint(equalToConstant: 100).isActive = true
       // viewSecFirst.layer.cornerRadius = 20
        
        lblDate.leadingAnchor.constraint(equalTo: self.viewSecSecond.leadingAnchor, constant: 10).isActive = true
      
        lblDate.topAnchor.constraint(equalTo: self.viewSecSecond.safeAreaLayoutGuide.topAnchor, constant:20).isActive = true
        lblDate.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        
        lblMinTemp.heightAnchor.constraint(equalToConstant: 25).isActive = true
        lblMinTemp.trailingAnchor.constraint(equalTo: self.viewSecSecond.trailingAnchor, constant: -10).isActive = true
        lblMinTemp.topAnchor.constraint(equalTo: self.viewSecSecond.topAnchor, constant:20).isActive = true
        lblMinTemp.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        
        
        imgTemp.topAnchor.constraint(equalTo: self.lblDate.topAnchor, constant: 0).isActive = true
        imgTemp.centerXAnchor.constraint(equalTo: self.viewSecSecond.centerXAnchor, constant:0).isActive = true
        imgTemp.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgTemp.heightAnchor.constraint(equalToConstant: 30).isActive = true
     //  imgTemp.backgroundColor = .blue
        
        lblMaxTemp.trailingAnchor.constraint(equalTo: self.viewSecSecond.trailingAnchor, constant: -10).isActive = true
        lblMaxTemp.topAnchor.constraint(equalTo: self.lblMinTemp.bottomAnchor, constant:10).isActive = true
        lblMaxTemp.heightAnchor.constraint(equalToConstant: 25).isActive = true
        lblDate.text = "16 Jan 2023"
        lblMinTemp.text = "04:35 PM"
        lblMaxTemp.text = "India"
      
        
        lblDate.textColor = .white
        lblMaxTemp.textColor = .white
        lblMinTemp.textColor = .white
       
        lblDate.font = UIFont.boldSystemFont(ofSize: 22)
        lblMinTemp.font = UIFont.boldSystemFont(ofSize: 22)
        lblMaxTemp.font = UIFont.boldSystemFont(ofSize: 22)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        SetUpSecondView()
//        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
