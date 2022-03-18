//
//  ViewController.swift
//  UserDefaults-Tutorial
//
//  Created by Damla Çim on 16.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var usernameLabel: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let uN = d.string(forKey: "user name") ?? "unknown user"
        let pssw = d.string(forKey: "password") ?? "wrong password"
        
        if uN != "unknown user" && pssw != "wrong password" {
            performSegue(withIdentifier: "goToHomePage", sender: nil)
        }
     
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let uN = usernameLabel.text, let pssw = passwordLabel.text {
            
            if uN == "admin" && pssw == "1234" {
                d.set(uN, forKey: "user name")
                d.set(pssw, forKey: "password")
                performSegue(withIdentifier: "goToHomePage", sender: nil)
            }else {
                print("information is incorrect.")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isToolbarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isToolbarHidden = false
    }
    
}

