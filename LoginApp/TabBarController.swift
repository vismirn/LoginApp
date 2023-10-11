//
//  TabBarController.swift
//  LoginApp
//
//  Created by Viktor Smirnov on 10.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {

    var userHello: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
