//
//  Person.swift
//  CardView
//
//  Created by Marcelo Amaral Alves on 2023-10-22.
//

import Foundation

struct Person {
    let headerImage: String
    let profileImage: String
    let userName: String
    let followerCount: Int
    let jobTitle: String
}

let person1 = Person(headerImage: "headerImage1", profileImage: "profileImage1", userName: "Lewis Hamilton", followerCount: 1000, jobTitle: "Taxi Driver")

let person2 = Person(headerImage: "headerImage2", profileImage: "profileImage2", userName: "Fernando Alonso", followerCount: 1000, jobTitle: "Cyclist")

