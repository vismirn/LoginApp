//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Viktor Smirnov on 07.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var userHelloLabel: UILabel!
    
    var userHello: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userHelloLabel.text = "Welcome, \(String(userHello))!"

    }
}
