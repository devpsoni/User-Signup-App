//
//  SecondViewController.swift
//  User Signup
//
//  Created by Dev Soni on 16/02/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dispName: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dispName.text = "Hello \(myName)!"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
