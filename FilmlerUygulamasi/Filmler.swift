//
//  Filmler.swift
//  FilmlerUygulamasi
//
//  Created by ahmet kardesseven on 24.01.2023.
//

import Foundation

class Filmler {
    var id:Int?
    var ad: String?
    var resimAd: String?
    var yonetmen: String?
    var fiyat:Int?
    
    init(id: Int? = nil, ad: String? = nil, resimAd: String? = nil, yonetmen: String? = nil, fiyat: Int? = nil) {
        self.id = id
        self.ad = ad
        self.resimAd = resimAd
        self.yonetmen = yonetmen
        self.fiyat = fiyat
    }
}
