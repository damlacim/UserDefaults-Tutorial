//
//  ViewController2.swift
//  UserDefaults-Tutorial
//
//  Created by Damla Çim on 18.03.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        let uN = d.string(forKey: "user name") ?? "unknown user"
        resultLabel.text = uN
    }
    

   
    @IBAction func logOutButton(_ sender: UIBarButtonItem) {
        d.removeObject(forKey: "user name")
        d.removeObject(forKey: "password")
        exit(-1)
    }
    
}
