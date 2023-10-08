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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//    override func touchesBegan(_ touches: Set, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            return false
        }
        
        // Введенное имя валидно, разрешаем переход
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if usernameTextField.text == "Viktor" {
            guard let loginVC = segue.destination as? LoginViewController else { return }
            loginVC.userHello = usernameTextField.text
        }
    }
    @IBAction func loginButtonPressed()  {
        if usernameTextField.text == "Viktor" {
                
        }
    }
    
    
    @IBAction func forgotNameButtonAction() {
        let alertController = UIAlertController(title: "Ваше имя Viktor", message: "_", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func forgotPasswordButtonAction() {
        let alertController = UIAlertController(title: "Ваш пароль Password", message: "_", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }
}

