//
//  ViewController.swift
//  ImageScrollCollectionView
//
//  Created by Aleksandr Aniskin on 30.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    private var galleryCollectionViewCell = GalleryCollectionViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(galleryCollectionViewCell)
        
        galleryCollectionViewCell.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionViewCell.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionViewCell.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16).isActive = true
        
        galleryCollectionViewCell.heightAnchor.constraint(equalToConstant: 320).isActive = true
        
    }


}

