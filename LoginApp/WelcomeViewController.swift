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
    
    var userHello: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userHelloLabel.text = userHello

    }
    
    @IBAction func logoutButtonAction() {
        
    }
    
}
