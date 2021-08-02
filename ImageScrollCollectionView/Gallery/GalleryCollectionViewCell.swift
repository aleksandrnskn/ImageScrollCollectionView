//
//  GalleryCollectionViewCell.swift
//  ImageScrollCollectionView
//
//  Created by Aleksandr Aniskin on 30.07.2021.
//

import UIKit

struct Constants {
    static let left: CGFloat = 16
    static let right: CGFloat = 16
    static let lineSpacing: CGFloat = 8
    static let itemWidth = (UIScreen.main.bounds.width - Constants.left - Constants.right - (Constants.lineSpacing * 2)) / 2
}

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
    
    let imageV: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
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
        
//        imageV.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 4
        self.layer.shadowRadius = 4
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 2, height: 2)
        
        self.clipsToBounds = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
