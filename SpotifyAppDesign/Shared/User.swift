//
//  User.swift
//  SpotifyAppDesign
//
//  Created by Ahmed Dana Mohammed on 4/21/24.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName : String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
    
    static var mock: User {
        User(
            id: 666,
            firstName: "Ahmed",
            lastName: "Dana",
            age: 23,
            email: "ahmeddanamo@gmail.com",
            phone: "",
            username: "",
            password: "",
            image: Constans.randomImage,
            height: 178,
            weight: 200
        )
    }
}
