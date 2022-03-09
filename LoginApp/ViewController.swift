//
//  ViewController.swift
//  LoginApp
//
//  Created by Aleksandr F. on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    let name = "User"
    let password = "Password"
    
    @IBAction func buttonPressed() {
        if name == txtName.text! && password == txtPassword.text! {
        } else {
            showAlert(title: "invalid login or password", message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotNameButton() {
        showAlert(title: "Ooops!", message: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!", message: "Your password is Password 😉")
    }
    
    
}

extension ViewController {
    private func showAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.txtPassword.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

