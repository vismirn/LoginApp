//
//  ViewController.swift
//  LoginApp
//
//  Created by Viktor Smirnov on 06.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var userPerson = User(login: "", password: "", person: Person(name: "Viktor", surname: "Smirnov", email: "Smirn04@yandex.ru", bio: ""))
    
    private var user: String? = "Viktor"
    private var password: String? = "Password"
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTextField.text == user, passwordTextField.text == password else {
            let alertController = UIAlertController(title: "Неверные данные",
                                                    message: "User или password",
                                                    preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
            usernameTextField.text = ""
            passwordTextField.text = ""
            return false
        }
            return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? TabBarController
        tabBarController?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userHello = user
            } else if let profileVC = viewController as? ProfileViewController {
                profileVC.title = "Profile"
            } else if let detailsVC = viewController as? DetailsViewController {
                detailsVC.title = "Details"
            }
        }
    }
    

    @IBAction func forgotNameButtonAction() {
        let alertController = UIAlertController(title: "Ваше имя Viktor",
                                                message: nil,
                                                preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK",style: .default)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func forgotPasswordButtonAction() {
        let alertController = UIAlertController(title: "Ваш пароль Password",
                                                message: nil,
                                                preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
}

