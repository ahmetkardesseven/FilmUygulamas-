//
//  DetaySayfa.swift
//  FilmlerUygulamasi
//
//  Created by ahmet kardesseven on 24.01.2023.
//

import UIKit

class DetaySayfa: UIViewController {
    
    @IBOutlet weak var FilmAdiLabel: UILabel!
    @IBOutlet weak var filmFiyat: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmYonetmeni: UILabel!
    
    var film:Filmler?
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        

    }
    

    @IBAction func btnEkle(_ sender: Any) {
    }
    

}
