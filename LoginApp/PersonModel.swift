//
//  PersonModel.swift
//  LoginApp
//
//  Created by Viktor Smirnov on 10.10.2023.
//

import Foundation

struct Person {
    let name: String
    let biographi: String
    let email: String
    let password: String
}

extension Person {
    static func getQuestions() -> [Person] {
        [Person(name: "Виктор",
                biographi: "",
                email: "",
                password: ""
               )
        ]
    }
}
