//
//  PersonModel.swift
//  LoginApp
//
//  Created by Viktor Smirnov on 10.10.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getPerson() -> Person {
        Person(name: "Viktor",
                surname: "Smirnov",
                email: "Smirn04@yandex.ru",
                bio: "Вот тут можно рассказать о себе"
                )
    }
}


struct Person {
    let name: String
    let surname: String
    let email: String
    let bio: String
}
