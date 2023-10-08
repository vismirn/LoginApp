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
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    var user: String? = "Viktor"
    var password: String? = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
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
            guard let loginVC = segue.destination as? WelcomeViewController else { return }
            loginVC.userHello = usernameTextField.text
    }

    @IBAction func forgotNameButtonAction() {
        let alertController = UIAlertController(title: "Ваше имя Viktor",
                                                message: "_",
                                                preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK",style: .default)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func forgotPasswordButtonAction() {
        let alertController = UIAlertController(title: "Ваш пароль Password",
                                                message: "_",
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

