//
//  ViewController.swift
//  FilmlerUygulamasi
//
//  Created by ahmet kardesseven on 24.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    var filmlerListesi = [Filmler]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let f1 = Filmler(id: 1, ad: "Django", resimAd: "django", yonetmen: "Quentin Tarantion", fiyat: 19)
        let f2 = Filmler(id: 2, ad: "Inception", resimAd: "inception", yonetmen: " Christopher Nolan", fiyat: 22)
        let f3 = Filmler(id: 3, ad: "Interstellar", resimAd: "interstellar", yonetmen: "Christopher Nolan", fiyat: 15)
        let f4 = Filmler(id: 4, ad: "Anadoluda", resimAd: "anadoluda", yonetmen: "Quentin Tarantion", fiyat: 18)
        let f5 = Filmler(id: 5, ad: "The Hateful Eight", resimAd: "thehatefuleight", yonetmen: "Quentin Tarantion", fiyat: 16)
        let f6 = Filmler(id: 6, ad: "The Pianist", resimAd: "thepianist", yonetmen: "Quentin Tarantion", fiyat: 13)
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumLineSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenislik-30)/2
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.7)
        filmlerCollectionView.collectionViewLayout = tasarim
        
    }


}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, HucreProtocol{
    func buttonTiklandi(indexPath: IndexPath) {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmlerCollectionViewCell
        
        let film = filmlerListesi[indexPath.row]
        hucre.imageView.image = UIImage(named: film.resimAd!)
        hucre.LabelAd.text = film.ad
        hucre.labelFiyat.text = "\(film.fiyat!) ₺"
        
        hucre.layer.borderColor = UIColor.lightGray.cgColor
        hucre.layer.borderWidth = 0.3
        hucre.layer.cornerRadius = 10.0
        hucre.HucreProtocol = self
        hucre.indexPath = indexPath
        
        
        return hucre
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: film)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let film = sender as? Filmler {
                let gidilecekVC = segue.destination as! DetaySayfa
                gidilecekVC.film = film
            }
        }
        
    }
//    func buttonTiklandi(indexPath: IndexPath) {
//        let film filmlerListesi[indexPath.row]
//        print("\(film.ad!) sepete eklendi")
//    }
    
}
