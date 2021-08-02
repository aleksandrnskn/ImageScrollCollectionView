//
//  ExtensionUIImageView.swift
//  ImageScrollCollectionView
//
//  Created by Aleksandr Aniskin on 02.08.2021.
//

import UIKit

extension UIImageView {
    
    func loadImage(urlString: String)  {
        let url =  URL(string: urlString)!
        URLSession.shared.dataTask(with: url, completionHandler: { (data, respones, error) in
            if error != nil {
                print(error ?? "")
                return
            }
            DispatchQueue.main.async {
                self.image = UIImage(data: data!)
            }
        }).resume()
    }
}
