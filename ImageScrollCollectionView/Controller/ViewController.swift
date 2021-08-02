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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                       constant: 8).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,
                                                   constant: 16).isActive = true
        
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        
        galleryCollectionView.setImage(images: ImageModel.setImages())
        galleryCollectionView.reloadData()
    }


}

