//
//  CourseCell.swift
//  Networking
//
//  Created by Rose on 15.12.2022.
//

import UIKit

class CourseCell: UITableViewCell {
    
    
    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var courseNameLabel: UILabel!
    @IBOutlet weak var numberOfLessons: UILabel!
    @IBOutlet weak var numberOfTests: UILabel!
    
    func configure(with course: Course) {
        courseNameLabel.text = course.name
        numberOfLessons.text = "Number of lessons: \(course.numberOfLessons ?? 0)"
        numberOfTests.text = "Number of tests: \(course.numberOfTests ?? 0)"
        NetworkManager.shared.fetchImage(from: course.imageUrl) { result in
            switch result {
            case .success(let imageData):
                self.courseImage.image = UIImage(data: imageData)
            case .failure(let error):
                print(error)
        }
    }
}
    
    func configure(with courseV2: CourseV2) {
        courseNameLabel.text = courseV2.name
        numberOfLessons.text = "Number of lessons: \(courseV2.numberOfLessons ?? 0)"
        numberOfTests.text = "Number of tests: \(courseV2.numberOfTests ?? 0)"
        NetworkManager.shared.fetchImage(from: courseV2.imageUrl) { result in
            switch result {
            case .success(let imageData):
                self.courseImage.image = UIImage(data: imageData)
            case .failure(let error):
                print(error)
            }
        }
    }
}
