//
//  ViewController.swift
//  User Signup
//
//  Created by Dev Soni on 16/02/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    var storedName = ""
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let myName = storedName as? String {
            nameLabel.text = "Name: \(myName)"
            userName = myName
        }
        if let myBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(myBirthday)"
        }
    }

    @IBAction func saveBtn(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameText.text!)"
        birthdayLabel.text = "Birthday: \(birthdayText.text!)"
    }
    @IBAction func dleteBtn(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName as? String != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        if storedBirthday as? String != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
    }
    @IBAction func loginBtn(_ sender: Any) {
        var userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            //as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

