//
//  GalleryCollectionViewCell.swift
//  ImageScrollCollectionView
//
//  Created by Aleksandr Aniskin on 30.07.2021.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
    
    let imageV: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageV)
        
        imageV.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageV.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageV.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageV.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
