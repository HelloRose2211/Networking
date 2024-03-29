//
//  Course.swift
//  Networking
//
//  Created by Rose on 14.12.2022.
//

struct Course: Decodable {
    let name: String?
    let imageUrl: String?
    let numberOfLessons: Int?
    let numberOfTests: Int?
    
    init(name: String, imageUrl: String, numberOfLessons: Int, numberOfTests: Int) {
        self.name = name
        self.imageUrl = imageUrl
        self.numberOfLessons = numberOfLessons
        self.numberOfTests = numberOfTests
    }
    
    init(courseData: [String: Any]) {
            name = courseData["name"] as? String
            imageUrl = courseData["imageUrl"] as? String
            numberOfLessons = courseData["number_of_lessons"] as? Int
            numberOfTests = courseData["number_of_tests"] as? Int
    }
    
    static func getCourses(from value: Any) -> [Course] {
        guard let coursesData = value as? [[String: Any]] else { return [] }
        return coursesData.compactMap { Course(courseData: $0) } //решение в одну строку
        
        /*var courses: [Course] = []
        for courseData in coursesData {
            let course = Course(courseData: courseData)
            courses.append(course)
        }
        return courses
         */
    }
}

struct CourseV2: Decodable {
    let name: String?
    let imageUrl: String?
    let numberOfLessons: Int?
    let numberOfTests: Int?
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case imageUrl = "ImageUrl"
        case numberOfLessons = "Number_of_lessons"
        case numberOfTests = "Number_of_tests"
    }
}

struct CourseV3: Codable {
    let name: String
    let imageUrl: String
    let numberOfLessons: String
    let numberOfTests: String
}

struct WebsiteDescription: Decodable {
    let coursese: [String]?
    let websiteDescription: String?
    let websiteName: String?
}


