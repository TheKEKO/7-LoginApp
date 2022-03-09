//
//  LogOutViewController.swift
//  LoginApp
//
//  Created by Aleksandr F. on 09.03.2022.
//

import UIKit

class LogOutViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
 
    @IBOutlet var nameTxt: UILabel!
    

    @IBAction func LogOutButton() {
        dismiss(animated: true)
    }
    
}
