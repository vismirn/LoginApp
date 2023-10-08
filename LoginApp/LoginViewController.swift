//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Viktor Smirnov on 07.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var userHelloLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logoutButtonAction() {
        dismiss(animated: true)
    }
    
}
