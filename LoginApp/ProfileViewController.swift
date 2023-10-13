//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Viktor Smirnov on 10.10.2023.
//

import UIKit

final class ProfileViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    let person = User.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        emailLabel.text = person.email
        imageView.layer.cornerRadius = imageView.frame.width / 2
    }
    
    
    
}
