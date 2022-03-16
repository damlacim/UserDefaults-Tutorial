//
//  ViewController.swift
//  UserDefaults-Tutorial
//
//  Created by Damla Çim on 16.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //d nesnesiyle veri kaydı, veri silme ve diğer zımbırtılar yapılabilir
       let d = UserDefaults.standard
        
        d.set("Damla", forKey: "name")
        d.set(24, forKey: "age")
        d.set(1.74, forKey: "height")
        d.set(true, forKey: "does she work")
        
        let list = ["Çağla","Beyda","Sude","Hilal","Nurdan"]
        
        d.set(list, forKey: "people list")
        
        //userdefaults'ta dictionary veri türünü de kullanabiliyoruz
        let cityList: [String:String] = ["16":"Bursa","14":"Bolu","34":"İstanbul","59":"Tekirdağ"]
        d.set(cityList, forKey: "dict")
        
        //Veri okuma
        
        let name = d.string(forKey: "name") ?? "unknown"
        let age = d.integer(forKey: "age")
        let height = d.double(forKey: "height")
        let work = d.bool(forKey: "does she work")
        
        //String bir diziye çevir eğer dönüşümde hata olursa boş bir dizi olsun
        let peopleList = d.array(forKey: "people list") as? [String] ?? [String]()
        let city = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        
        print(peopleList[0])
        print(city["14"]!)
        
        
        
        
        
        
    }


}

