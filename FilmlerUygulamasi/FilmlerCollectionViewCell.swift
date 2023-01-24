//
//  FilmlerCollectionViewCell.swift
//  FilmlerUygulamasi
//
//  Created by ahmet kardesseven on 24.01.2023.
//

import UIKit

protocol HucreProtocol {
    func buttonTiklandi(indexPath:IndexPath)
}


class FilmlerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var LabelAd: UILabel!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var HucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    
    @IBAction func ButtonSepeteEkle(_ sender: Any) {
        HucreProtocol?.buttonTiklandi(indexPath: indexPath!)
        
        
    }
    
    
}
