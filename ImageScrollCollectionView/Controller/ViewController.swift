//
//  ViewController.swift
//  ImageScrollCollectionView
//
//  Created by Aleksandr Aniskin on 30.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    private var galleryCollectionView = GalleryUICollectionView()
    
    let temp = ["https://blackstarwear.ru/image/cache/catalog/p/8024/9t0a8178-h_1_630x840.jpg",
                "https://blackstarwear.ru/image/cache/catalog/p/8109/kiro0348-h_1_630x840.jpg",
                "https://blackstarwear.ru/image/cache/catalog/p/8047/9t0a4451-h_1_630x840.jpg",
                "https://blackstarwear.ru/image/cache/catalog/p/8024/9t0a8178-h_1_630x840.jpg",
                "https://blackstarwear.ru/image/cache/catalog/p/8109/kiro0348-h_1_630x840.jpg",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                       constant: 8).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,
                                                   constant: 16).isActive = true
        
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        
        galleryCollectionView.setImage(images: temp)
        galleryCollectionView.reloadData()
    }


}

