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
    
    
//    func getUsers() -> User {
//        var user = User(login: "Viktor1", password: "Pass1", person: Person(name: "Виктор",
//                                                                            surname: "",
//                                                                            email: "",
//                                                                            bio: "Вот тут делаем длииный текст и рассказываем о себе"
//                                                                           ))
//        return user
//    }
//    
//    func getPersons() -> Person {
//        var person = Person(name: "Виктор",
//                      surname: "",
//                      email: "",
//                      bio: "Вот тут делаем длииный текст и рассказываем о себе"
//                     )
//        return person
//    }
}
