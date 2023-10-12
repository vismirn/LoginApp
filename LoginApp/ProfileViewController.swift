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
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Виктор"
        descriptionLabel.text = "Тренер и начинающий разработчик"
        emailLabel.text = "Smirn04@yandex.ru"

    }
}
