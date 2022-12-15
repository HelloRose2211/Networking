//
//  Course.swift
//  Networking
//
//  Created by Rose on 14.12.2022.
//

struct Course: Decodable {
    let name: String?
    let imageUrl: String?
    let number_of_lessons: Int?
    let number_of_tests: Int?
}

struct WebsiteDescription: Decodable {
    let coursese: [String]?
    let websiteDescription: String?
    let websiteName: String?
}


