//
//  ImageModel.swift
//  ImageScrollCollectionView
//
//  Created by Aleksandr Aniskin on 02.08.2021.
//

import Foundation

struct ImageModel {
    var imageURL: String
    
    static func setImages() -> [ImageModel] {
        let image1 = ImageModel(imageURL: "image/cache/catalog/p/8024/9t0a8178-h_1_630x840.jpg")
        let image2 = ImageModel(imageURL: "image/cache/catalog/p/8109/kiro0348-h_1_630x840.jpg")
        let image3 = ImageModel(imageURL: "image/cache/catalog/p/8047/9t0a4451-h_1_630x840.jpg")
        let image4 = ImageModel(imageURL: "image/cache/catalog/p/8024/9t0a8178-h_1_630x840.jpg")
        let image5 = ImageModel(imageURL: "image/cache/catalog/p/8024/9t0a8178-h_1_630x840.jpg")
        let image6 = ImageModel(imageURL: "image/cache/catalog/p/8109/kiro0348-h_1_630x840.jpg")
        
        let imageArr: [ImageModel] = [image1, image2, image3, image4, image5, image6]
        
        return imageArr
    }
}
