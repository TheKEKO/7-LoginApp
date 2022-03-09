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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOVC = segue.destination as? LogOutViewController else { return }
        logOVC.txtNameNew = txtName.text
    }
    
// MARK: - IBActions
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
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is LogOutViewController else { return }
        txtName.text = ""
        txtPassword.text = ""
    }
}

// MARK: - Private Methods
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




