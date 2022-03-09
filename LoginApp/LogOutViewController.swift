//
//  LogOutViewController.swift
//  LoginApp
//
//  Created by Aleksandr F. on 09.03.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    @IBOutlet var nameTxt: UILabel!
    
    var txtNameNew: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let txtNameNew = txtNameNew else { return }
        nameTxt.text = ("Welcome, \(txtNameNew)!")
    }
}
