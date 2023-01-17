//
//  Extension.swift
//  WhetherForeCast
//
//  Created by Umakant Sharma on 16/01/23.
//

import Foundation
import UIKit
extension UIViewController{
    func ShowLoader(){
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)

        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.medium
        loadingIndicator.startAnimating();

        alert.view.addSubview(loadingIndicator)
        self.present(alert, animated: true, completion: nil)
    }
    
    func HiderdLoadervc(){
        DispatchQueue.main.async {
            self.dismiss(animated: false, completion: nil)
        }
        
    }
}
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            URLSession.shared.dataTask( with: url, completionHandler: {
               (data, response, error) -> Void in
               DispatchQueue.main.async {
                  if let data = data {
                      self?.image = UIImage(data: data)
                  }
               }
            }).resume()
        }
    }
}

extension String{
    
}

